.class public final Lexpo/modules/kotlin/jni/SingleType$Companion;
.super Ljava/lang/Object;
.source "ExpectedType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/kotlin/jni/SingleType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExpectedType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExpectedType.kt\nexpo/modules/kotlin/jni/SingleType$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,218:1\n1549#2:219\n1620#2,3:220\n37#3,2:223\n*S KotlinDebug\n*F\n+ 1 ExpectedType.kt\nexpo/modules/kotlin/jni/SingleType$Companion\n*L\n86#1:219\n86#1:220,3\n92#1:223,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004\u00a8\u0006\u0007"
    }
    d2 = {
        "Lexpo/modules/kotlin/jni/SingleType$Companion;",
        "",
        "()V",
        "merge",
        "Lexpo/modules/kotlin/jni/SingleType;",
        "first",
        "second",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lexpo/modules/kotlin/jni/SingleType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final merge(Lexpo/modules/kotlin/jni/SingleType;Lexpo/modules/kotlin/jni/SingleType;)Lexpo/modules/kotlin/jni/SingleType;
    .locals 19
    .param p1, "first"    # Lexpo/modules/kotlin/jni/SingleType;
    .param p2, "second"    # Lexpo/modules/kotlin/jni/SingleType;

    move-object/from16 v0, p1

    const-string v1, "first"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "second"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {p1 .. p1}, Lexpo/modules/kotlin/jni/SingleType;->getExpectedCppType$expo_modules_core_debug()Lexpo/modules/kotlin/jni/CppType;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lexpo/modules/kotlin/jni/SingleType;->getExpectedCppType$expo_modules_core_debug()Lexpo/modules/kotlin/jni/CppType;

    move-result-object v3

    const-string v4, " and "

    if-ne v1, v3, :cond_5

    .line 75
    invoke-static/range {p1 .. p1}, Lexpo/modules/kotlin/jni/SingleType;->access$getParameterTypes$p(Lexpo/modules/kotlin/jni/SingleType;)[Lexpo/modules/kotlin/jni/ExpectedType;

    move-result-object v1

    .line 76
    .local v1, "firstTypeParameters":[Lexpo/modules/kotlin/jni/ExpectedType;
    invoke-static/range {p2 .. p2}, Lexpo/modules/kotlin/jni/SingleType;->access$getParameterTypes$p(Lexpo/modules/kotlin/jni/SingleType;)[Lexpo/modules/kotlin/jni/ExpectedType;

    move-result-object v3

    .line 77
    .local v3, "secondTypeParameters":[Lexpo/modules/kotlin/jni/ExpectedType;
    if-eqz v1, :cond_4

    if-nez v3, :cond_0

    goto/16 :goto_2

    .line 81
    :cond_0
    array-length v5, v1

    array-length v6, v3

    const/4 v8, 0x0

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    move v5, v8

    :goto_0
    if-eqz v5, :cond_3

    .line 85
    array-length v4, v1

    .line 86
    .local v4, "size":I
    invoke-static {v8, v4}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .local v5, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 219
    .local v6, "$i$f$map":I
    new-instance v9, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v5, v10}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v9, Ljava/util/Collection;

    .local v9, "destination$iv$iv":Ljava/util/Collection;
    move-object v10, v5

    .local v10, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 220
    .local v11, "$i$f$mapTo":I
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    move-object v13, v12

    check-cast v13, Lkotlin/collections/IntIterator;

    invoke-virtual {v13}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v13

    .line 221
    .local v13, "item$iv$iv":I
    move v14, v13

    .local v14, "index":I
    const/4 v15, 0x0

    .line 87
    .local v15, "$i$a$-map-SingleType$Companion$merge$parameters$1":I
    sget-object v7, Lexpo/modules/kotlin/jni/ExpectedType;->Companion:Lexpo/modules/kotlin/jni/ExpectedType$Companion;

    const/4 v8, 0x2

    new-array v8, v8, [Lexpo/modules/kotlin/jni/ExpectedType;

    aget-object v18, v1, v14

    const/16 v17, 0x0

    aput-object v18, v8, v17

    aget-object v18, v3, v14

    const/16 v16, 0x1

    aput-object v18, v8, v16

    invoke-virtual {v7, v8}, Lexpo/modules/kotlin/jni/ExpectedType$Companion;->merge([Lexpo/modules/kotlin/jni/ExpectedType;)Lexpo/modules/kotlin/jni/ExpectedType;

    move-result-object v7

    .line 221
    .end local v14    # "index":I
    .end local v15    # "$i$a$-map-SingleType$Companion$merge$parameters$1":I
    invoke-interface {v9, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x0

    goto :goto_1

    .line 222
    .end local v13    # "item$iv$iv":I
    :cond_2
    nop

    .end local v9    # "destination$iv$iv":Ljava/util/Collection;
    .end local v10    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$mapTo":I
    move-object v7, v9

    check-cast v7, Ljava/util/List;

    .line 219
    nop

    .line 86
    .end local v5    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$map":I
    move-object v5, v7

    .line 90
    .local v5, "parameters":Ljava/util/List;
    new-instance v6, Lexpo/modules/kotlin/jni/SingleType;

    .line 91
    invoke-virtual/range {p1 .. p1}, Lexpo/modules/kotlin/jni/SingleType;->getExpectedCppType$expo_modules_core_debug()Lexpo/modules/kotlin/jni/CppType;

    move-result-object v7

    .line 92
    move-object v8, v5

    check-cast v8, Ljava/util/Collection;

    .local v8, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v9, 0x0

    .line 223
    .local v9, "$i$f$toTypedArray":I
    move-object v10, v8

    .line 224
    .local v10, "thisCollection$iv":Ljava/util/Collection;
    const/4 v11, 0x0

    new-array v11, v11, [Lexpo/modules/kotlin/jni/ExpectedType;

    invoke-interface {v10, v11}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v9    # "$i$f$toTypedArray":I
    .end local v10    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v8, [Lexpo/modules/kotlin/jni/ExpectedType;

    .line 90
    invoke-direct {v6, v7, v8}, Lexpo/modules/kotlin/jni/SingleType;-><init>(Lexpo/modules/kotlin/jni/CppType;[Lexpo/modules/kotlin/jni/ExpectedType;)V

    return-object v6

    .line 81
    .end local v4    # "size":I
    .end local v5    # "parameters":Ljava/util/List;
    :cond_3
    const/4 v5, 0x0

    .line 82
    .local v5, "$i$a$-require-SingleType$Companion$merge$1":I
    invoke-static/range {p1 .. p1}, Lexpo/modules/kotlin/jni/SingleType;->access$getParameterTypes$p(Lexpo/modules/kotlin/jni/SingleType;)[Lexpo/modules/kotlin/jni/ExpectedType;

    move-result-object v6

    array-length v6, v6

    invoke-static/range {p2 .. p2}, Lexpo/modules/kotlin/jni/SingleType;->access$getParameterTypes$p(Lexpo/modules/kotlin/jni/SingleType;)[Lexpo/modules/kotlin/jni/ExpectedType;

    move-result-object v7

    array-length v7, v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot merge types with different number of parameters: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 81
    .end local v5    # "$i$a$-require-SingleType$Companion$merge$1":I
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 78
    :cond_4
    :goto_2
    return-object v0

    .line 70
    .end local v1    # "firstTypeParameters":[Lexpo/modules/kotlin/jni/ExpectedType;
    .end local v3    # "secondTypeParameters":[Lexpo/modules/kotlin/jni/ExpectedType;
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 71
    invoke-virtual/range {p1 .. p1}, Lexpo/modules/kotlin/jni/SingleType;->getExpectedCppType$expo_modules_core_debug()Lexpo/modules/kotlin/jni/CppType;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lexpo/modules/kotlin/jni/SingleType;->getExpectedCppType$expo_modules_core_debug()Lexpo/modules/kotlin/jni/CppType;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot merge types with different CppType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 70
    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
