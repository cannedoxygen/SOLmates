.class public final Lexpo/modules/notifications/UtilsKt;
.super Ljava/lang/Object;
.source "Utils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\nexpo/modules/notifications/UtilsKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,109:1\n1855#2,2:110\n1855#2:112\n1855#2,2:113\n1856#2:115\n1855#2,2:116\n*S KotlinDebug\n*F\n+ 1 Utils.kt\nexpo/modules/notifications/UtilsKt\n*L\n40#1:110,2\n50#1:112\n54#1:113,2\n50#1:115\n67#1:116,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u001aP\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2<\u0010\r\u001a8\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0010\u0012\u0015\u0012\u0013\u0018\u00010\u0002\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u00120\u000ej\u0002`\u0013H\u0000\u001a\u0010\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002H\u0000\u001a7\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00022%\u0010\u0015\u001a!\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u0001j\u0002`\u0007H\u0000\u001a\u0012\u0010\u0016\u001a\u00020\u00062\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0000\"3\u0010\u0000\u001a!\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u0001j\u0002`\u0007X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0000\u0010\u0008*@\u0010\u0019\"\u001d\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u00012\u001d\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u0001*n\u0010\u001a\"4\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0010\u0012\u0015\u0012\u0013\u0018\u00010\u0002\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u00120\u000e24\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0010\u0012\u0015\u0012\u0013\u0018\u00010\u0002\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u00120\u000e\u00a8\u0006\u001b"
    }
    d2 = {
        "isBundleConvertibleToJSValue",
        "Lkotlin/Function1;",
        "Landroid/os/Bundle;",
        "Lkotlin/ParameterName;",
        "name",
        "bundle",
        "",
        "Lexpo/modules/notifications/BundleConversionTester;",
        "()Lkotlin/jvm/functions/Function1;",
        "createDefaultResultReceiver",
        "Landroid/os/ResultReceiver;",
        "handler",
        "Landroid/os/Handler;",
        "body",
        "Lkotlin/Function2;",
        "",
        "resultCode",
        "resultData",
        "",
        "Lexpo/modules/notifications/ResultReceiverBody;",
        "filteredBundleForJSTypeConverter",
        "testBundle",
        "isValidJSONString",
        "test",
        "",
        "BundleConversionTester",
        "ResultReceiverBody",
        "expo-notifications_debug"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final isBundleConvertibleToJSValue:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/os/Bundle;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    sget-object v0, Lexpo/modules/notifications/UtilsKt$isBundleConvertibleToJSValue$1;->INSTANCE:Lexpo/modules/notifications/UtilsKt$isBundleConvertibleToJSValue$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    sput-object v0, Lexpo/modules/notifications/UtilsKt;->isBundleConvertibleToJSValue:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final createDefaultResultReceiver(Landroid/os/Handler;Lkotlin/jvm/functions/Function2;)Landroid/os/ResultReceiver;
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "body"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroid/os/Bundle;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/os/ResultReceiver;"
        }
    .end annotation

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v0, Lexpo/modules/notifications/UtilsKt$createDefaultResultReceiver$1;

    invoke-direct {v0, p0, p1}, Lexpo/modules/notifications/UtilsKt$createDefaultResultReceiver$1;-><init>(Landroid/os/Handler;Lkotlin/jvm/functions/Function2;)V

    check-cast v0, Landroid/os/ResultReceiver;

    return-object v0
.end method

.method public static final filteredBundleForJSTypeConverter(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    const-string v0, "bundle"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object v0, Lexpo/modules/notifications/UtilsKt;->isBundleConvertibleToJSValue:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, v0}, Lexpo/modules/notifications/UtilsKt;->filteredBundleForJSTypeConverter(Landroid/os/Bundle;Lkotlin/jvm/functions/Function1;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static final filteredBundleForJSTypeConverter(Landroid/os/Bundle;Lkotlin/jvm/functions/Function1;)Landroid/os/Bundle;
    .locals 18
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "testBundle"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/os/Bundle;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "bundle"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "testBundle"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 35
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move-object v3, v0

    goto/16 :goto_4

    .line 38
    :cond_0
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v2, Ljava/util/Set;

    .line 40
    .local v2, "goodKeys":Ljava/util/Set;
    invoke-virtual/range {p0 .. p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    const-string v4, "keySet(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 110
    .local v5, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    .local v8, "key":Ljava/lang/String;
    const/4 v9, 0x0

    .line 41
    .local v9, "$i$a$-forEach-UtilsKt$filteredBundleForJSTypeConverter$1":I
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 42
    .local v10, "value":Ljava/lang/Object;
    instance-of v11, v10, Landroid/os/Bundle;

    if-eqz v11, :cond_1

    .line 43
    move-object v11, v10

    check-cast v11, Landroid/os/Bundle;

    invoke-static {v11, v1}, Lexpo/modules/notifications/UtilsKt;->filteredBundleForJSTypeConverter(Landroid/os/Bundle;Lkotlin/jvm/functions/Function1;)Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 44
    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_1
    nop

    .line 110
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "$i$a$-forEach-UtilsKt$filteredBundleForJSTypeConverter$1":I
    .end local v10    # "value":Ljava/lang/Object;
    nop

    .end local v7    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 111
    :cond_2
    nop

    .line 50
    .end local v3    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$forEach":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    .restart local v3    # "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 112
    .restart local v5    # "$i$f$forEach":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .restart local v7    # "element$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    .restart local v8    # "key":Ljava/lang/String;
    const/4 v9, 0x0

    .line 51
    .local v9, "$i$a$-forEach-UtilsKt$filteredBundleForJSTypeConverter$2":I
    invoke-interface {v2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 52
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 53
    .local v10, "test":Landroid/os/Bundle;
    invoke-virtual {v10, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual/range {p0 .. p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Ljava/lang/Iterable;

    .local v11, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 113
    .local v12, "$i$f$forEach":I
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .local v14, "element$iv":Ljava/lang/Object;
    move-object v15, v14

    check-cast v15, Ljava/lang/String;

    .local v15, "otherKey":Ljava/lang/String;
    const/16 v16, 0x0

    .line 55
    .local v16, "$i$a$-forEach-UtilsKt$filteredBundleForJSTypeConverter$2$1":I
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 56
    invoke-virtual {v10, v15}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 58
    :cond_3
    nop

    .line 113
    .end local v15    # "otherKey":Ljava/lang/String;
    .end local v16    # "$i$a$-forEach-UtilsKt$filteredBundleForJSTypeConverter$2$1":I
    nop

    .end local v14    # "element$iv":Ljava/lang/Object;
    goto :goto_2

    .line 114
    :cond_4
    nop

    .line 59
    .end local v11    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v12    # "$i$f$forEach":I
    invoke-interface {v1, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 60
    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    .end local v10    # "test":Landroid/os/Bundle;
    :cond_5
    nop

    .line 112
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "$i$a$-forEach-UtilsKt$filteredBundleForJSTypeConverter$2":I
    nop

    .end local v7    # "element$iv":Ljava/lang/Object;
    goto :goto_1

    .line 115
    :cond_6
    nop

    .line 65
    .end local v3    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$forEach":I
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 66
    .local v3, "result":Landroid/os/Bundle;
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v5

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 116
    .restart local v5    # "$i$f$forEach":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .restart local v7    # "element$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    .restart local v8    # "key":Ljava/lang/String;
    const/4 v9, 0x0

    .line 68
    .local v9, "$i$a$-forEach-UtilsKt$filteredBundleForJSTypeConverter$3":I
    invoke-interface {v2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 69
    invoke-virtual {v3, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 71
    :cond_7
    nop

    .line 116
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "$i$a$-forEach-UtilsKt$filteredBundleForJSTypeConverter$3":I
    nop

    .end local v7    # "element$iv":Ljava/lang/Object;
    goto :goto_3

    .line 117
    :cond_8
    nop

    .line 72
    .end local v4    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$forEach":I
    nop

    .line 34
    .end local v2    # "goodKeys":Ljava/util/Set;
    .end local v3    # "result":Landroid/os/Bundle;
    :goto_4
    return-object v3
.end method

.method public static final isBundleConvertibleToJSValue()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/os/Bundle;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 77
    sget-object v0, Lexpo/modules/notifications/UtilsKt;->isBundleConvertibleToJSValue:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final isValidJSONString(Ljava/lang/Object;)Z
    .locals 5
    .param p0, "test"    # Ljava/lang/Object;

    .line 90
    instance-of v0, p0, Ljava/lang/String;

    .line 91
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 92
    nop

    .line 93
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    move-object v3, p0

    check-cast v3, Ljava/lang/String;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    return v2

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "objectEx":Lorg/json/JSONException;
    nop

    .line 97
    :try_start_1
    new-instance v3, Lorg/json/JSONArray;

    move-object v4, p0

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 98
    return v2

    .line 99
    :catch_1
    move-exception v2

    .line 100
    .local v2, "arrayEx":Lorg/json/JSONException;
    return v1

    .line 105
    .end local v0    # "objectEx":Lorg/json/JSONException;
    .end local v2    # "arrayEx":Lorg/json/JSONException;
    :cond_0
    return v1
.end method
