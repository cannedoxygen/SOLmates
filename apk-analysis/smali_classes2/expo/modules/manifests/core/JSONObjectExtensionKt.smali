.class public final Lexpo/modules/manifests/core/JSONObjectExtensionKt;
.super Ljava/lang/Object;
.source "JSONObjectExtension.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJSONObjectExtension.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JSONObjectExtension.kt\nexpo/modules/manifests/core/JSONObjectExtensionKt\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,18:1\n759#2,2:19\n775#2,4:21\n*S KotlinDebug\n*F\n+ 1 JSONObjectExtension.kt\nexpo/modules/manifests/core/JSONObjectExtensionKt\n*L\n11#1:19,2\n11#1:21,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0016\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "toMap",
        "",
        "",
        "",
        "Lorg/json/JSONObject;",
        "expo-manifests_debug"
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
.method public static final toMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 12
    .param p0, "$this$toMap"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "keys(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .local v0, "$this$associateWith$iv":Lkotlin/sequences/Sequence;
    const/4 v1, 0x0

    .line 19
    .local v1, "$i$f$associateWith":I
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 20
    .local v2, "result$iv":Ljava/util/LinkedHashMap;
    move-object v3, v0

    .local v3, "$this$associateWithTo$iv$iv":Lkotlin/sequences/Sequence;
    const/4 v4, 0x0

    .line 21
    .local v4, "$i$f$associateWithTo":I
    invoke-interface {v3}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 22
    .local v6, "element$iv$iv":Ljava/lang/Object;
    move-object v7, v2

    check-cast v7, Ljava/util/Map;

    move-object v8, v6

    check-cast v8, Ljava/lang/String;

    .local v8, "it":Ljava/lang/String;
    const/4 v9, 0x0

    .line 12
    .local v9, "$i$a$-associateWith-JSONObjectExtensionKt$toMap$1":I
    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 13
    .local v10, "value":Ljava/lang/Object;
    instance-of v11, v10, Lorg/json/JSONObject;

    if-eqz v11, :cond_0

    move-object v11, v10

    check-cast v11, Lorg/json/JSONObject;

    invoke-static {v11}, Lexpo/modules/manifests/core/JSONObjectExtensionKt;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v11

    move-object v10, v11

    goto :goto_1

    .line 14
    :cond_0
    nop

    .line 12
    .end local v10    # "value":Ljava/lang/Object;
    :goto_1
    nop

    .line 22
    .end local v8    # "it":Ljava/lang/String;
    .end local v9    # "$i$a$-associateWith-JSONObjectExtensionKt$toMap$1":I
    invoke-interface {v7, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 24
    .end local v6    # "element$iv$iv":Ljava/lang/Object;
    :cond_1
    move-object v3, v2

    check-cast v3, Ljava/util/Map;

    .line 20
    .end local v3    # "$this$associateWithTo$iv$iv":Lkotlin/sequences/Sequence;
    .end local v4    # "$i$f$associateWithTo":I
    nop

    .line 11
    .end local v0    # "$this$associateWith$iv":Lkotlin/sequences/Sequence;
    .end local v1    # "$i$f$associateWith":I
    .end local v2    # "result$iv":Ljava/util/LinkedHashMap;
    return-object v3
.end method
