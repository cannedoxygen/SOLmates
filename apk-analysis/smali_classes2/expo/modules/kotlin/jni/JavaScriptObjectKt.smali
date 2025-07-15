.class public final Lexpo/modules/kotlin/jni/JavaScriptObjectKt;
.super Ljava/lang/Object;
.source "JavaScriptObject.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJavaScriptObject.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JavaScriptObject.kt\nexpo/modules/kotlin/jni/JavaScriptObjectKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,153:1\n1789#2,3:154\n*S KotlinDebug\n*F\n+ 1 JavaScriptObject.kt\nexpo/modules/kotlin/jni/JavaScriptObjectKt\n*L\n150#1:154,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "toCppOptions",
        "",
        "",
        "Lexpo/modules/kotlin/jni/JavaScriptObject$PropertyDescriptor;",
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
.method public static final synthetic access$toCppOptions(Ljava/util/List;)I
    .locals 1
    .param p0, "$receiver"    # Ljava/util/List;

    .line 1
    invoke-static {p0}, Lexpo/modules/kotlin/jni/JavaScriptObjectKt;->toCppOptions(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method private static final toCppOptions(Ljava/util/List;)I
    .locals 10
    .param p0, "$this$toCppOptions"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lexpo/modules/kotlin/jni/JavaScriptObject$PropertyDescriptor;",
            ">;)I"
        }
    .end annotation

    .line 150
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$fold$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .local v1, "initial$iv":I
    const/4 v2, 0x0

    .line 154
    .local v2, "$i$f$fold":I
    move v3, v1

    .line 155
    .local v3, "accumulator$iv":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Lexpo/modules/kotlin/jni/JavaScriptObject$PropertyDescriptor;

    .local v6, "current":Lexpo/modules/kotlin/jni/JavaScriptObject$PropertyDescriptor;
    move v7, v3

    .local v7, "acc":I
    const/4 v8, 0x0

    .line 151
    .local v8, "$i$a$-fold-JavaScriptObjectKt$toCppOptions$1":I
    invoke-virtual {v6}, Lexpo/modules/kotlin/jni/JavaScriptObject$PropertyDescriptor;->getValue()I

    move-result v9

    or-int v6, v7, v9

    .line 155
    .end local v6    # "current":Lexpo/modules/kotlin/jni/JavaScriptObject$PropertyDescriptor;
    .end local v7    # "acc":I
    .end local v8    # "$i$a$-fold-JavaScriptObjectKt$toCppOptions$1":I
    move v3, v6

    .end local v5    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 156
    :cond_0
    nop

    .line 152
    .end local v0    # "$this$fold$iv":Ljava/lang/Iterable;
    .end local v1    # "initial$iv":I
    .end local v2    # "$i$f$fold":I
    .end local v3    # "accumulator$iv":I
    return v3
.end method
