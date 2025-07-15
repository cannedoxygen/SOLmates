.class final Lexpo/modules/kotlin/jni/JavaScriptTypedArray$kind$2;
.super Lkotlin/jvm/internal/Lambda;
.source "JavaScriptTypedArray.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/kotlin/jni/JavaScriptTypedArray;-><init>(Lcom/facebook/jni/HybridData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lexpo/modules/kotlin/jni/TypedArrayKind;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJavaScriptTypedArray.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JavaScriptTypedArray.kt\nexpo/modules/kotlin/jni/JavaScriptTypedArray$kind$2\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,70:1\n1109#2,2:71\n*S KotlinDebug\n*F\n+ 1 JavaScriptTypedArray.kt\nexpo/modules/kotlin/jni/JavaScriptTypedArray$kind$2\n*L\n33#1:71,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lexpo/modules/kotlin/jni/TypedArrayKind;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lexpo/modules/kotlin/jni/JavaScriptTypedArray;


# direct methods
.method constructor <init>(Lexpo/modules/kotlin/jni/JavaScriptTypedArray;)V
    .locals 1

    iput-object p1, p0, Lexpo/modules/kotlin/jni/JavaScriptTypedArray$kind$2;->this$0:Lexpo/modules/kotlin/jni/JavaScriptTypedArray;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lexpo/modules/kotlin/jni/TypedArrayKind;
    .locals 10

    .line 32
    iget-object v0, p0, Lexpo/modules/kotlin/jni/JavaScriptTypedArray$kind$2;->this$0:Lexpo/modules/kotlin/jni/JavaScriptTypedArray;

    invoke-static {v0}, Lexpo/modules/kotlin/jni/JavaScriptTypedArray;->access$getRawKind(Lexpo/modules/kotlin/jni/JavaScriptTypedArray;)I

    move-result v0

    .line 33
    .local v0, "rawKind":I
    invoke-static {}, Lexpo/modules/kotlin/jni/TypedArrayKind;->values()[Lexpo/modules/kotlin/jni/TypedArrayKind;

    move-result-object v1

    .local v1, "$this$first$iv":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 71
    .local v2, "$i$f$first":I
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v1, v5

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    .local v7, "it":Lexpo/modules/kotlin/jni/TypedArrayKind;
    const/4 v8, 0x0

    .line 33
    .local v8, "$i$a$-first-JavaScriptTypedArray$kind$2$1":I
    invoke-virtual {v7}, Lexpo/modules/kotlin/jni/TypedArrayKind;->getValue()I

    move-result v9

    if-ne v9, v0, :cond_0

    const/4 v9, 0x1

    goto :goto_1

    :cond_0
    move v9, v4

    .line 71
    .end local v7    # "it":Lexpo/modules/kotlin/jni/TypedArrayKind;
    .end local v8    # "$i$a$-first-JavaScriptTypedArray$kind$2$1":I
    :goto_1
    if-eqz v9, :cond_1

    .line 33
    .end local v1    # "$this$first$iv":[Ljava/lang/Object;
    .end local v2    # "$i$f$first":I
    .end local v6    # "element$iv":Ljava/lang/Object;
    return-object v6

    .line 71
    .restart local v1    # "$this$first$iv":[Ljava/lang/Object;
    .restart local v2    # "$i$f$first":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 72
    :cond_2
    new-instance v3, Ljava/util/NoSuchElementException;

    const-string v4, "Array contains no element matching the predicate."

    invoke-direct {v3, v4}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lexpo/modules/kotlin/jni/JavaScriptTypedArray$kind$2;->invoke()Lexpo/modules/kotlin/jni/TypedArrayKind;

    move-result-object v0

    return-object v0
.end method
