.class public final Lexpo/modules/kotlin/activityresult/DataPersistor;
.super Ljava/lang/Object;
.source "DataPersistor.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDataPersistor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DataPersistor.kt\nexpo/modules/kotlin/activityresult/DataPersistor\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 AndroidExtensions.kt\nexpo/modules/kotlin/AndroidExtensionsKt\n*L\n1#1,137:1\n37#2,2:138\n37#2,2:146\n1271#3,2:140\n1285#3,4:142\n1271#3,2:148\n1285#3,2:150\n1288#3:157\n28#4,5:152\n28#4,5:158\n*S KotlinDebug\n*F\n+ 1 DataPersistor.kt\nexpo/modules/kotlin/activityresult/DataPersistor\n*L\n41#1:138,2\n57#1:146,2\n47#1:140,2\n47#1:142,4\n67#1:148,2\n67#1:150,2\n67#1:157\n68#1:152,5\n86#1:158,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0006J\u0016\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0013J&\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u00102\u0016\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00020\u00100\u0015j\u0008\u0012\u0004\u0012\u00020\u0010`\u0016J\"\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u00102\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00190\u0018J\"\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u00102\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00130\u0018J\u0006\u0010\u001b\u001a\u00020\u001cJ\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000f\u001a\u00020\u0010J\u0008\u0010\u001e\u001a\u00020\u0006H\u0002J\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u000f\u001a\u00020\u0010J\u0016\u0010 \u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u00152\u0006\u0010\u000f\u001a\u00020\u0010J\u001c\u0010!\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u00182\u0006\u0010\u000f\u001a\u00020\u0010J\u001c\u0010\"\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u00182\u0006\u0010\u000f\u001a\u00020\u0010R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lexpo/modules/kotlin/activityresult/DataPersistor;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "accumulator",
        "Landroid/os/Bundle;",
        "retrievedData",
        "getRetrievedData",
        "()Landroid/os/Bundle;",
        "retrievedData$delegate",
        "Lkotlin/Lazy;",
        "sharedPreferences",
        "Landroid/content/SharedPreferences;",
        "addBundle",
        "key",
        "",
        "value",
        "addSerializable",
        "Ljava/io/Serializable;",
        "addStringArrayList",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "addStringToIntMap",
        "",
        "",
        "addStringToSerializableMap",
        "persist",
        "",
        "retrieveBundle",
        "retrieveData",
        "retrieveSerializable",
        "retrieveStringArrayList",
        "retrieveStringToIntMap",
        "retrieveStringToSerializableMap",
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
.field private final accumulator:Landroid/os/Bundle;

.field private final retrievedData$delegate:Lkotlin/Lazy;

.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "expo.modules.kotlin.PersistentDataManager"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getSharedPreferences(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lexpo/modules/kotlin/activityresult/DataPersistor;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 29
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lexpo/modules/kotlin/activityresult/DataPersistor;->accumulator:Landroid/os/Bundle;

    .line 30
    new-instance v0, Lexpo/modules/kotlin/activityresult/DataPersistor$retrievedData$2;

    invoke-direct {v0, p0}, Lexpo/modules/kotlin/activityresult/DataPersistor$retrievedData$2;-><init>(Lexpo/modules/kotlin/activityresult/DataPersistor;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/kotlin/activityresult/DataPersistor;->retrievedData$delegate:Lkotlin/Lazy;

    .line 26
    return-void
.end method

.method public static final synthetic access$retrieveData(Lexpo/modules/kotlin/activityresult/DataPersistor;)Landroid/os/Bundle;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/kotlin/activityresult/DataPersistor;

    .line 26
    invoke-direct {p0}, Lexpo/modules/kotlin/activityresult/DataPersistor;->retrieveData()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private final getRetrievedData()Landroid/os/Bundle;
    .locals 1

    .line 30
    iget-object v0, p0, Lexpo/modules/kotlin/activityresult/DataPersistor;->retrievedData$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method private final retrieveData()Landroid/os/Bundle;
    .locals 6

    .line 100
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 101
    .local v0, "result":Landroid/os/Bundle;
    iget-object v1, p0, Lexpo/modules/kotlin/activityresult/DataPersistor;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "expire"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 102
    .local v1, "expirationTime":J
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-lez v3, :cond_2

    .line 103
    iget-object v3, p0, Lexpo/modules/kotlin/activityresult/DataPersistor;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "bundle"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "stringResult":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-static {v3}, Lexpo/modules/kotlin/activityresult/DataPersistorKt;->access$toBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    move-object v4, v0

    :cond_1
    move-object v0, v4

    .line 107
    .end local v3    # "stringResult":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lexpo/modules/kotlin/activityresult/DataPersistor;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 108
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 109
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 110
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 112
    return-object v0
.end method


# virtual methods
.method public final addBundle(Ljava/lang/String;Landroid/os/Bundle;)Lexpo/modules/kotlin/activityresult/DataPersistor;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/Bundle;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/activityresult/DataPersistor;

    .local v0, "$this$addBundle_u24lambda_u247":Lexpo/modules/kotlin/activityresult/DataPersistor;
    const/4 v1, 0x0

    .line 74
    .local v1, "$i$a$-apply-DataPersistor$addBundle$1":I
    iget-object v2, v0, Lexpo/modules/kotlin/activityresult/DataPersistor;->accumulator:Landroid/os/Bundle;

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 75
    nop

    .line 73
    .end local v0    # "$this$addBundle_u24lambda_u247":Lexpo/modules/kotlin/activityresult/DataPersistor;
    .end local v1    # "$i$a$-apply-DataPersistor$addBundle$1":I
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/activityresult/DataPersistor;

    .line 75
    return-object v0
.end method

.method public final addSerializable(Ljava/lang/String;Ljava/io/Serializable;)Lexpo/modules/kotlin/activityresult/DataPersistor;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Serializable;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/activityresult/DataPersistor;

    .local v0, "$this$addSerializable_u24lambda_u248":Lexpo/modules/kotlin/activityresult/DataPersistor;
    const/4 v1, 0x0

    .line 82
    .local v1, "$i$a$-apply-DataPersistor$addSerializable$1":I
    iget-object v2, v0, Lexpo/modules/kotlin/activityresult/DataPersistor;->accumulator:Landroid/os/Bundle;

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 83
    nop

    .line 81
    .end local v0    # "$this$addSerializable_u24lambda_u248":Lexpo/modules/kotlin/activityresult/DataPersistor;
    .end local v1    # "$i$a$-apply-DataPersistor$addSerializable$1":I
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/activityresult/DataPersistor;

    .line 83
    return-object v0
.end method

.method public final addStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Lexpo/modules/kotlin/activityresult/DataPersistor;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lexpo/modules/kotlin/activityresult/DataPersistor;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/activityresult/DataPersistor;

    .local v0, "$this$addStringArrayList_u24lambda_u240":Lexpo/modules/kotlin/activityresult/DataPersistor;
    const/4 v1, 0x0

    .line 33
    .local v1, "$i$a$-apply-DataPersistor$addStringArrayList$1":I
    iget-object v2, v0, Lexpo/modules/kotlin/activityresult/DataPersistor;->accumulator:Landroid/os/Bundle;

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 34
    nop

    .line 32
    .end local v0    # "$this$addStringArrayList_u24lambda_u240":Lexpo/modules/kotlin/activityresult/DataPersistor;
    .end local v1    # "$i$a$-apply-DataPersistor$addStringArrayList$1":I
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/activityresult/DataPersistor;

    .line 34
    return-object v0
.end method

.method public final addStringToIntMap(Ljava/lang/String;Ljava/util/Map;)Lexpo/modules/kotlin/activityresult/DataPersistor;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lexpo/modules/kotlin/activityresult/DataPersistor;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/activityresult/DataPersistor;

    .local v0, "$this$addStringToIntMap_u24lambda_u241":Lexpo/modules/kotlin/activityresult/DataPersistor;
    const/4 v1, 0x0

    .line 41
    .local v1, "$i$a$-apply-DataPersistor$addStringToIntMap$1":I
    iget-object v2, v0, Lexpo/modules/kotlin/activityresult/DataPersistor;->accumulator:Landroid/os/Bundle;

    invoke-static {p2}, Lkotlin/collections/MapsKt;->toList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .local v3, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v4, 0x0

    .line 138
    .local v4, "$i$f$toTypedArray":I
    move-object v5, v3

    .line 139
    .local v5, "thisCollection$iv":Ljava/util/Collection;
    const/4 v6, 0x0

    new-array v6, v6, [Lkotlin/Pair;

    invoke-interface {v5, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .line 41
    .end local v3    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v4    # "$i$f$toTypedArray":I
    .end local v5    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v3, [Lkotlin/Pair;

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lkotlin/Pair;

    invoke-static {v3}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 42
    nop

    .line 40
    .end local v0    # "$this$addStringToIntMap_u24lambda_u241":Lexpo/modules/kotlin/activityresult/DataPersistor;
    .end local v1    # "$i$a$-apply-DataPersistor$addStringToIntMap$1":I
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/activityresult/DataPersistor;

    .line 42
    return-object v0
.end method

.method public final addStringToSerializableMap(Ljava/lang/String;Ljava/util/Map;)Lexpo/modules/kotlin/activityresult/DataPersistor;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/io/Serializable;",
            ">;)",
            "Lexpo/modules/kotlin/activityresult/DataPersistor;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/activityresult/DataPersistor;

    .local v0, "$this$addStringToSerializableMap_u24lambda_u244":Lexpo/modules/kotlin/activityresult/DataPersistor;
    const/4 v1, 0x0

    .line 52
    .local v1, "$i$a$-apply-DataPersistor$addStringToSerializableMap$1":I
    iget-object v2, v0, Lexpo/modules/kotlin/activityresult/DataPersistor;->accumulator:Landroid/os/Bundle;

    .line 53
    nop

    .line 55
    nop

    .line 56
    invoke-static {p2}, Lkotlin/collections/MapsKt;->toList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 57
    nop

    .local v3, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v4, 0x0

    .line 146
    .local v4, "$i$f$toTypedArray":I
    move-object v5, v3

    .line 147
    .local v5, "thisCollection$iv":Ljava/util/Collection;
    const/4 v6, 0x0

    new-array v6, v6, [Lkotlin/Pair;

    invoke-interface {v5, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .line 57
    .end local v3    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v4    # "$i$f$toTypedArray":I
    .end local v5    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v3, [Lkotlin/Pair;

    .line 55
    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lkotlin/Pair;

    .line 54
    invoke-static {v3}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v3

    .line 52
    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 60
    nop

    .line 51
    .end local v0    # "$this$addStringToSerializableMap_u24lambda_u244":Lexpo/modules/kotlin/activityresult/DataPersistor;
    .end local v1    # "$i$a$-apply-DataPersistor$addStringToSerializableMap$1":I
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/activityresult/DataPersistor;

    .line 60
    return-object v0
.end method

.method public final persist()V
    .locals 5

    .line 90
    iget-object v0, p0, Lexpo/modules/kotlin/activityresult/DataPersistor;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 92
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lexpo/modules/kotlin/activityresult/DataPersistor;->accumulator:Landroid/os/Bundle;

    invoke-static {v1}, Lexpo/modules/kotlin/activityresult/DataPersistorKt;->access$toBase64(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bundle"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 93
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/32 v3, 0x493e0

    add-long/2addr v1, v3

    const-string v3, "expire"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 96
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 97
    return-void
.end method

.method public final retrieveBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0}, Lexpo/modules/kotlin/activityresult/DataPersistor;->getRetrievedData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final retrieveSerializable(Ljava/lang/String;)Ljava/io/Serializable;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0}, Lexpo/modules/kotlin/activityresult/DataPersistor;->getRetrievedData()Landroid/os/Bundle;

    move-result-object v0

    .local v0, "$this$safeGetSerializable$iv":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 158
    .local v1, "$i$f$safeGetSerializable":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v2, v3, :cond_0

    .line 159
    const-class v2, Ljava/io/Serializable;

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v2

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    .line 158
    :goto_0
    nop

    .line 86
    .end local v0    # "$this$safeGetSerializable$iv":Landroid/os/Bundle;
    .end local v1    # "$i$f$safeGetSerializable":I
    return-object v2
.end method

.method public final retrieveStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Lexpo/modules/kotlin/activityresult/DataPersistor;->getRetrievedData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final retrieveStringToIntMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 13
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Lexpo/modules/kotlin/activityresult/DataPersistor;->getRetrievedData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 46
    .local v1, "$i$a$-let-DataPersistor$retrieveStringToIntMap$1":I
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 47
    .local v2, "keys":Ljava/util/Set;
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v2

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$associateWith$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 140
    .local v4, "$i$f$associateWith":I
    new-instance v5, Ljava/util/LinkedHashMap;

    const/16 v6, 0xa

    invoke-static {v3, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-static {v6}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 141
    .local v5, "result$iv":Ljava/util/LinkedHashMap;
    move-object v6, v3

    .local v6, "$this$associateWithTo$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 142
    .local v7, "$i$f$associateWithTo":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 143
    .local v9, "element$iv$iv":Ljava/lang/Object;
    move-object v10, v5

    check-cast v10, Ljava/util/Map;

    move-object v11, v9

    check-cast v11, Ljava/lang/String;

    .local v11, "it":Ljava/lang/String;
    const/4 v12, 0x0

    .line 47
    .local v12, "$i$a$-associateWith-DataPersistor$retrieveStringToIntMap$1$1":I
    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .end local v11    # "it":Ljava/lang/String;
    .end local v12    # "$i$a$-associateWith-DataPersistor$retrieveStringToIntMap$1$1":I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 143
    invoke-interface {v10, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 145
    .end local v9    # "element$iv$iv":Ljava/lang/Object;
    :cond_0
    move-object v6, v5

    check-cast v6, Ljava/util/Map;

    .line 141
    .end local v6    # "$this$associateWithTo$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$associateWithTo":I
    nop

    .line 47
    .end local v3    # "$this$associateWith$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$associateWith":I
    .end local v5    # "result$iv":Ljava/util/LinkedHashMap;
    nop

    .line 45
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "$i$a$-let-DataPersistor$retrieveStringToIntMap$1":I
    .end local v2    # "keys":Ljava/util/Set;
    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    return-object v6
.end method

.method public final retrieveStringToSerializableMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 16
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "key"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    nop

    .line 63
    invoke-direct/range {p0 .. p0}, Lexpo/modules/kotlin/activityresult/DataPersistor;->getRetrievedData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 64
    if-eqz v1, :cond_3

    .line 63
    nop

    .line 64
    nop

    .local v1, "bundle":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 65
    .local v2, "$i$a$-let-DataPersistor$retrieveStringToSerializableMap$1":I
    nop

    .line 66
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    const-string v4, "keySet(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    .line 67
    nop

    .local v3, "$this$associateWith$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 148
    .local v4, "$i$f$associateWith":I
    new-instance v5, Ljava/util/LinkedHashMap;

    const/16 v6, 0xa

    invoke-static {v3, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-static {v6}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 149
    .local v5, "result$iv":Ljava/util/LinkedHashMap;
    move-object v6, v3

    .local v6, "$this$associateWithTo$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 150
    .local v7, "$i$f$associateWithTo":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 151
    .local v9, "element$iv$iv":Ljava/lang/Object;
    move-object v10, v5

    check-cast v10, Ljava/util/Map;

    move-object v11, v9

    check-cast v11, Ljava/lang/String;

    .local v11, "key":Ljava/lang/String;
    const/4 v12, 0x0

    .line 68
    .local v12, "$i$a$-associateWith-DataPersistor$retrieveStringToSerializableMap$1$1":I
    move-object v13, v1

    .local v13, "$this$safeGetSerializable$iv":Landroid/os/Bundle;
    const/4 v14, 0x0

    .line 152
    .local v14, "$i$f$safeGetSerializable":I
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt v15, v0, :cond_0

    .line 153
    const-class v0, Ljava/io/Serializable;

    invoke-virtual {v13, v11, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v0

    goto :goto_1

    .line 156
    :cond_0
    invoke-virtual {v13, v11}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 152
    :goto_1
    nop

    .line 68
    .end local v13    # "$this$safeGetSerializable$iv":Landroid/os/Bundle;
    .end local v14    # "$i$f$safeGetSerializable":I
    if-eqz v0, :cond_1

    .line 151
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "$i$a$-associateWith-DataPersistor$retrieveStringToSerializableMap$1$1":I
    invoke-interface {v10, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    goto :goto_0

    .line 68
    .restart local v11    # "key":Ljava/lang/String;
    .restart local v12    # "$i$a$-associateWith-DataPersistor$retrieveStringToSerializableMap$1$1":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "For a key \'"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "\' there should be a serializable class available"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    .end local v9    # "element$iv$iv":Ljava/lang/Object;
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "$i$a$-associateWith-DataPersistor$retrieveStringToSerializableMap$1$1":I
    :cond_2
    move-object v0, v5

    check-cast v0, Ljava/util/Map;

    .line 149
    .end local v6    # "$this$associateWithTo$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$associateWithTo":I
    nop

    .line 67
    .end local v3    # "$this$associateWith$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$associateWith":I
    .end local v5    # "result$iv":Ljava/util/LinkedHashMap;
    nop

    .line 64
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "$i$a$-let-DataPersistor$retrieveStringToSerializableMap$1":I
    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 63
    :goto_2
    return-object v0
.end method
