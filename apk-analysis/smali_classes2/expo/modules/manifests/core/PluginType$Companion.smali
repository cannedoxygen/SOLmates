.class public final Lexpo/modules/manifests/core/PluginType$Companion;
.super Ljava/lang/Object;
.source "Manifest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/manifests/core/PluginType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007J\u0012\u0010\u0008\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0001H\u0002\u00a8\u0006\t"
    }
    d2 = {
        "Lexpo/modules/manifests/core/PluginType$Companion;",
        "",
        "()V",
        "fromRawArrayValue",
        "",
        "Lexpo/modules/manifests/core/PluginType;",
        "value",
        "Lorg/json/JSONArray;",
        "fromRawValue",
        "expo-manifests_debug"
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

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lexpo/modules/manifests/core/PluginType$Companion;-><init>()V

    return-void
.end method

.method private final fromRawValue(Ljava/lang/Object;)Lexpo/modules/manifests/core/PluginType;
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 259
    nop

    .line 260
    instance-of v0, p1, Lorg/json/JSONArray;

    const-string v1, "Value for (key = plugins) has incorrect type"

    if-eqz v0, :cond_6

    .line 261
    move-object v0, p1

    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_5

    .line 264
    move-object v0, p1

    check-cast v0, Lorg/json/JSONArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    return-object v2

    .line 265
    .local v0, "name":Ljava/lang/String;
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 266
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 267
    move-object v1, p1

    check-cast v1, Lorg/json/JSONArray;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Lorg/json/JSONObject;

    if-eqz v3, :cond_2

    check-cast v1, Lorg/json/JSONObject;

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    if-nez v1, :cond_3

    return-object v2

    .line 268
    .local v1, "props":Lorg/json/JSONObject;
    :cond_3
    new-instance v2, Lexpo/modules/manifests/core/PluginType$WithProps;

    invoke-static {v1}, Lexpo/modules/manifests/core/JSONObjectExtensionKt;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-direct {v2, v3}, Lexpo/modules/manifests/core/PluginType$WithProps;-><init>(Lkotlin/Pair;)V

    .end local v1    # "props":Lorg/json/JSONObject;
    check-cast v2, Lexpo/modules/manifests/core/PluginType;

    goto :goto_2

    .line 271
    :cond_4
    new-instance v1, Lexpo/modules/manifests/core/PluginType$WithoutProps;

    invoke-direct {v1, v0}, Lexpo/modules/manifests/core/PluginType$WithoutProps;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    check-cast v2, Lexpo/modules/manifests/core/PluginType;

    .end local v0    # "name":Ljava/lang/String;
    goto :goto_2

    .line 262
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_6
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 276
    new-instance v0, Lexpo/modules/manifests/core/PluginType$WithoutProps;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lexpo/modules/manifests/core/PluginType$WithoutProps;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Lexpo/modules/manifests/core/PluginType;

    .line 259
    :goto_2
    return-object v2

    .line 278
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final fromRawArrayValue(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 8
    .param p1, "value"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lexpo/modules/manifests/core/PluginType;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    .local v1, "$this$fromRawArrayValue_u24lambda_u241":Ljava/util/List;
    const/4 v2, 0x0

    .line 285
    .local v2, "$i$a$-apply-PluginType$Companion$fromRawArrayValue$1":I
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_1

    .line 286
    sget-object v5, Lexpo/modules/manifests/core/PluginType;->Companion:Lexpo/modules/manifests/core/PluginType$Companion;

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "get(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lexpo/modules/manifests/core/PluginType$Companion;->fromRawValue(Ljava/lang/Object;)Lexpo/modules/manifests/core/PluginType;

    move-result-object v5

    if-eqz v5, :cond_0

    .local v5, "it":Lexpo/modules/manifests/core/PluginType;
    const/4 v6, 0x0

    .line 287
    .local v6, "$i$a$-let-PluginType$Companion$fromRawArrayValue$1$1":I
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    .end local v5    # "it":Lexpo/modules/manifests/core/PluginType;
    .end local v6    # "$i$a$-let-PluginType$Companion$fromRawArrayValue$1$1":I
    nop

    .line 285
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 290
    .end local v3    # "i":I
    :cond_1
    nop

    .line 284
    .end local v1    # "$this$fromRawArrayValue_u24lambda_u241":Ljava/util/List;
    .end local v2    # "$i$a$-apply-PluginType$Companion$fromRawArrayValue$1":I
    return-object v0
.end method
