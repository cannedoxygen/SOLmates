.class public final Lcom/facebook/imageformat/ImageFormatCheckerUtils;
.super Ljava/lang/Object;
.source "ImageFormatCheckerUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageFormatCheckerUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageFormatCheckerUtils.kt\ncom/facebook/imageformat/ImageFormatCheckerUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,108:1\n2624#2,3:109\n*S KotlinDebug\n*F\n+ 1 ImageFormatCheckerUtils.kt\ncom/facebook/imageformat/ImageFormatCheckerUtils\n*L\n57#1:109,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J \u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u000cH\u0007J(\u0010\r\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000cH\u0007J\u0018\u0010\u0010\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004H\u0007\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/facebook/imageformat/ImageFormatCheckerUtils;",
        "",
        "()V",
        "asciiBytes",
        "",
        "value",
        "",
        "hasPatternAt",
        "",
        "byteArray",
        "pattern",
        "offset",
        "",
        "indexOfPattern",
        "byteArrayLen",
        "patternLen",
        "startsWithPattern",
        "imagepipeline-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/imageformat/ImageFormatCheckerUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/imageformat/ImageFormatCheckerUtils;

    invoke-direct {v0}, Lcom/facebook/imageformat/ImageFormatCheckerUtils;-><init>()V

    sput-object v0, Lcom/facebook/imageformat/ImageFormatCheckerUtils;->INSTANCE:Lcom/facebook/imageformat/ImageFormatCheckerUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final asciiBytes(Ljava/lang/String;)[B
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    nop

    .line 25
    :try_start_0
    const-string v0, "ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "forName(charsetName)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string/jumbo v1, "this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-object v0

    .line 26
    :catch_0
    move-exception v0

    .line 28
    .local v0, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ASCII not found!"

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final hasPatternAt([B[BI)Z
    .locals 10
    .param p0, "byteArray"    # [B
    .param p1, "pattern"    # [B
    .param p2, "offset"    # I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "byteArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "pattern"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    array-length v0, p1

    add-int/2addr v0, p2

    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 55
    return v2

    .line 57
    :cond_0
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->getIndices([B)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$none$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 109
    .local v1, "$i$f$none":I
    instance-of v3, v0, Ljava/util/Collection;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v4

    goto :goto_1

    .line 110
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v5, v3

    check-cast v5, Lkotlin/collections/IntIterator;

    invoke-virtual {v5}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v5

    .local v5, "element$iv":I
    move v6, v5

    .local v6, "i":I
    const/4 v7, 0x0

    .line 57
    .local v7, "$i$a$-none-ImageFormatCheckerUtils$hasPatternAt$1":I
    add-int v8, p2, v6

    aget-byte v8, p0, v8

    aget-byte v9, p1, v6

    if-eq v8, v9, :cond_3

    move v6, v4

    goto :goto_0

    :cond_3
    move v6, v2

    .line 110
    .end local v6    # "i":I
    .end local v7    # "$i$a$-none-ImageFormatCheckerUtils$hasPatternAt$1":I
    :goto_0
    if-eqz v6, :cond_2

    goto :goto_1

    .line 111
    .end local v5    # "element$iv":I
    :cond_4
    move v2, v4

    .line 57
    .end local v0    # "$this$none$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$none":I
    :goto_1
    return v2
.end method

.method public static final indexOfPattern([BI[BI)I
    .locals 9
    .param p0, "byteArray"    # [B
    .param p1, "byteArrayLen"    # I
    .param p2, "pattern"    # [B
    .param p3, "patternLen"    # I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "byteArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "pattern"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    nop

    .line 75
    nop

    .line 76
    const/4 v0, -0x1

    if-le p3, p1, :cond_0

    .line 77
    return v0

    .line 79
    :cond_0
    const/4 v1, 0x0

    aget-byte v1, p2, v1

    .line 80
    .local v1, "first":B
    sub-int v2, p1, p3

    .line 81
    .local v2, "max":I
    const/4 v3, 0x0

    .line 82
    .local v3, "i":I
    :goto_0
    if-gt v3, v2, :cond_5

    .line 85
    aget-byte v4, p0, v3

    if-eq v4, v1, :cond_2

    .line 86
    :cond_1
    add-int/lit8 v3, v3, 0x1

    if-gt v3, v2, :cond_2

    aget-byte v4, p0, v3

    if-ne v4, v1, :cond_1

    .line 90
    :cond_2
    if-gt v3, v2, :cond_4

    .line 91
    add-int/lit8 v4, v3, 0x1

    .line 92
    .local v4, "j":I
    add-int v5, v4, p3

    add-int/lit8 v5, v5, -0x1

    .line 93
    .local v5, "end":I
    const/4 v6, 0x1

    .line 94
    .local v6, "k":I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-byte v7, p0, v4

    aget-byte v8, p2, v6

    if-ne v7, v8, :cond_3

    .line 95
    add-int/lit8 v4, v4, 0x1

    .line 96
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 98
    :cond_3
    if-ne v4, v5, :cond_4

    .line 100
    return v3

    .line 103
    .end local v4    # "j":I
    .end local v5    # "end":I
    .end local v6    # "k":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 105
    :cond_5
    return v0
.end method

.method public static final startsWithPattern([B[B)Z
    .locals 1
    .param p0, "byteArray"    # [B
    .param p1, "pattern"    # [B
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "byteArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "pattern"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/facebook/imageformat/ImageFormatCheckerUtils;->hasPatternAt([B[BI)Z

    move-result v0

    return v0
.end method
