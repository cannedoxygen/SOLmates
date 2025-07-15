.class public final Lcom/facebook/imageutils/WebpUtil;
.super Ljava/lang/Object;
.source "WebpUtil.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWebpUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebpUtil.kt\ncom/facebook/imageutils/WebpUtil\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,182:1\n2624#2,3:183\n*S KotlinDebug\n*F\n+ 1 WebpUtil.kt\ncom/facebook/imageutils/WebpUtil\n*L\n144#1:183,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004H\u0002J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\nH\u0002J\u0010\u0010\u0012\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u001e\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r\u0018\u00010\u00142\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J\u001e\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r\u0018\u00010\u00142\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u001e\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r\u0018\u00010\u00142\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u001c\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r0\u00142\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0010\u0010\u0018\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u000c\u0010\u0019\u001a\u00020\r*\u00020\u000fH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/facebook/imageutils/WebpUtil;",
        "",
        "()V",
        "VP8L_HEADER",
        "",
        "VP8X_HEADER",
        "VP8_HEADER",
        "compare",
        "",
        "what",
        "",
        "with",
        "get2BytesAsInt",
        "",
        "stream",
        "Ljava/io/InputStream;",
        "getHeader",
        "header",
        "getInt",
        "getSize",
        "Lkotlin/Pair;",
        "getVP8Dimension",
        "getVP8LDimension",
        "getVP8XDimension",
        "read3Bytes",
        "getNextByteAsInt",
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
.field public static final INSTANCE:Lcom/facebook/imageutils/WebpUtil;

.field private static final VP8L_HEADER:Ljava/lang/String; = "VP8L"

.field private static final VP8X_HEADER:Ljava/lang/String; = "VP8X"

.field private static final VP8_HEADER:Ljava/lang/String; = "VP8 "


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/imageutils/WebpUtil;

    invoke-direct {v0}, Lcom/facebook/imageutils/WebpUtil;-><init>()V

    sput-object v0, Lcom/facebook/imageutils/WebpUtil;->INSTANCE:Lcom/facebook/imageutils/WebpUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final compare([BLjava/lang/String;)Z
    .locals 10
    .param p1, "what"    # [B
    .param p2, "with"    # Ljava/lang/String;

    .line 141
    array-length v0, p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 142
    return v2

    .line 144
    :cond_0
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->getIndices([B)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$none$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 183
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

    .line 184
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

    .line 144
    .local v7, "$i$a$-none-WebpUtil$compare$1":I
    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    int-to-byte v8, v8

    aget-byte v9, p1, v6

    if-eq v8, v9, :cond_3

    move v6, v4

    goto :goto_0

    :cond_3
    move v6, v2

    .line 184
    .end local v6    # "i":I
    .end local v7    # "$i$a$-none-WebpUtil$compare$1":I
    :goto_0
    if-eqz v6, :cond_2

    goto :goto_1

    .line 185
    .end local v5    # "element$iv":I
    :cond_4
    move v2, v4

    .line 144
    .end local v0    # "$this$none$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$none":I
    :goto_1
    return v2
.end method

.method public static final get2BytesAsInt(Ljava/io/InputStream;)I
    .locals 3
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "stream"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    sget-object v0, Lcom/facebook/imageutils/WebpUtil;->INSTANCE:Lcom/facebook/imageutils/WebpUtil;

    invoke-direct {v0, p0}, Lcom/facebook/imageutils/WebpUtil;->getNextByteAsInt(Ljava/io/InputStream;)I

    move-result v0

    .line 168
    .local v0, "byte1":I
    sget-object v1, Lcom/facebook/imageutils/WebpUtil;->INSTANCE:Lcom/facebook/imageutils/WebpUtil;

    invoke-direct {v1, p0}, Lcom/facebook/imageutils/WebpUtil;->getNextByteAsInt(Ljava/io/InputStream;)I

    move-result v1

    .line 169
    .local v1, "byte2":I
    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v2, v0

    return v2
.end method

.method private final getHeader([B)Ljava/lang/String;
    .locals 5
    .param p1, "header"    # [B

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .local v0, "str":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_0

    .line 150
    aget-byte v3, p1, v1

    int-to-short v3, v3

    invoke-static {v3}, Lkotlin/UShort;->constructor-impl(S)S

    move-result v3

    const v4, 0xffff

    and-int/2addr v3, v4

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "str.toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private final getInt(Ljava/io/InputStream;)I
    .locals 6
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    invoke-direct {p0, p1}, Lcom/facebook/imageutils/WebpUtil;->getNextByteAsInt(Ljava/io/InputStream;)I

    move-result v0

    .line 158
    .local v0, "byte1":I
    invoke-direct {p0, p1}, Lcom/facebook/imageutils/WebpUtil;->getNextByteAsInt(Ljava/io/InputStream;)I

    move-result v1

    .line 159
    .local v1, "byte2":I
    invoke-direct {p0, p1}, Lcom/facebook/imageutils/WebpUtil;->getNextByteAsInt(Ljava/io/InputStream;)I

    move-result v2

    .line 160
    .local v2, "byte3":I
    invoke-direct {p0, p1}, Lcom/facebook/imageutils/WebpUtil;->getNextByteAsInt(Ljava/io/InputStream;)I

    move-result v3

    .line 161
    .local v3, "byte4":I
    shl-int/lit8 v4, v3, 0x18

    shl-int/lit8 v5, v2, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v1, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v0

    return v4
.end method

.method private final getNextByteAsInt(Ljava/io/InputStream;)I
    .locals 1
    .param p1, "$this$getNextByteAsInt"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static final getSize(Ljava/io/InputStream;)Lkotlin/Pair;
    .locals 4
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "stream"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 35
    .local v0, "headerBuffer":[B
    nop

    .line 36
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 38
    sget-object v2, Lcom/facebook/imageutils/WebpUtil;->INSTANCE:Lcom/facebook/imageutils/WebpUtil;

    const-string v3, "RIFF"

    invoke-direct {v2, v0, v3}, Lcom/facebook/imageutils/WebpUtil;->compare([BLjava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 39
    nop

    .line 58
    nop

    .line 59
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v2

    .line 61
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 39
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    return-object v1

    .line 42
    :cond_0
    :try_start_2
    sget-object v2, Lcom/facebook/imageutils/WebpUtil;->INSTANCE:Lcom/facebook/imageutils/WebpUtil;

    invoke-direct {v2, p0}, Lcom/facebook/imageutils/WebpUtil;->getInt(Ljava/io/InputStream;)I

    .line 44
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 45
    sget-object v2, Lcom/facebook/imageutils/WebpUtil;->INSTANCE:Lcom/facebook/imageutils/WebpUtil;

    const-string v3, "WEBP"

    invoke-direct {v2, v0, v3}, Lcom/facebook/imageutils/WebpUtil;->compare([BLjava/lang/String;)Z

    move-result v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_1

    .line 46
    nop

    .line 58
    nop

    .line 59
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 60
    :catch_1
    move-exception v2

    .line 61
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 46
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    return-object v1

    .line 49
    :cond_1
    :try_start_4
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 50
    sget-object v2, Lcom/facebook/imageutils/WebpUtil;->INSTANCE:Lcom/facebook/imageutils/WebpUtil;

    invoke-direct {v2, v0}, Lcom/facebook/imageutils/WebpUtil;->getHeader([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_2
    :goto_2
    goto :goto_6

    :sswitch_0
    const-string v3, "VP8X"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    .line 53
    :cond_3
    sget-object v2, Lcom/facebook/imageutils/WebpUtil;->INSTANCE:Lcom/facebook/imageutils/WebpUtil;

    invoke-direct {v2, p0}, Lcom/facebook/imageutils/WebpUtil;->getVP8XDimension(Ljava/io/InputStream;)Lkotlin/Pair;

    move-result-object v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 58
    nop

    .line 59
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    .line 60
    :catch_2
    move-exception v2

    .line 61
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 53
    .end local v2    # "e":Ljava/io/IOException;
    :goto_3
    return-object v1

    .line 50
    :sswitch_1
    :try_start_6
    const-string v3, "VP8L"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    .line 52
    :cond_4
    sget-object v2, Lcom/facebook/imageutils/WebpUtil;->INSTANCE:Lcom/facebook/imageutils/WebpUtil;

    invoke-direct {v2, p0}, Lcom/facebook/imageutils/WebpUtil;->getVP8LDimension(Ljava/io/InputStream;)Lkotlin/Pair;

    move-result-object v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 58
    nop

    .line 59
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_4

    .line 60
    :catch_3
    move-exception v2

    .line 61
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 52
    .end local v2    # "e":Ljava/io/IOException;
    :goto_4
    return-object v1

    .line 50
    :sswitch_2
    :try_start_8
    const-string v3, "VP8 "

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 51
    sget-object v2, Lcom/facebook/imageutils/WebpUtil;->INSTANCE:Lcom/facebook/imageutils/WebpUtil;

    invoke-direct {v2, p0}, Lcom/facebook/imageutils/WebpUtil;->getVP8Dimension(Ljava/io/InputStream;)Lkotlin/Pair;

    move-result-object v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 58
    nop

    .line 59
    :try_start_9
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_5

    .line 60
    :catch_4
    move-exception v2

    .line 61
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 51
    .end local v2    # "e":Ljava/io/IOException;
    :goto_5
    return-object v1

    .line 58
    :goto_6
    nop

    .line 59
    :try_start_a
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_8

    .line 60
    :catch_5
    move-exception v2

    goto :goto_7

    .line 58
    :catchall_0
    move-exception v1

    goto :goto_9

    .line 55
    :catch_6
    move-exception v2

    .line 56
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_b
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 58
    .end local v2    # "e":Ljava/io/IOException;
    nop

    .line 59
    :try_start_c
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_8

    .line 60
    :catch_7
    move-exception v2

    .line 61
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_7
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 63
    .end local v2    # "e":Ljava/io/IOException;
    :goto_8
    nop

    .line 65
    return-object v1

    .line 59
    :goto_9
    :try_start_d
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    goto :goto_a

    .line 60
    :catch_8
    move-exception v2

    .line 61
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    :goto_a
    throw v1

    :sswitch_data_0
    .sparse-switch
        0x284b22 -> :sswitch_2
        0x284b4e -> :sswitch_1
        0x284b5a -> :sswitch_0
    .end sparse-switch
.end method

.method private final getVP8Dimension(Ljava/io/InputStream;)Lkotlin/Pair;
    .locals 6
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    const-wide/16 v0, 0x7

    invoke-virtual {p1, v0, v1}, Ljava/io/InputStream;->skip(J)J

    .line 80
    invoke-direct {p0, p1}, Lcom/facebook/imageutils/WebpUtil;->getNextByteAsInt(Ljava/io/InputStream;)I

    move-result v0

    .line 81
    .local v0, "sign1":I
    invoke-direct {p0, p1}, Lcom/facebook/imageutils/WebpUtil;->getNextByteAsInt(Ljava/io/InputStream;)I

    move-result v1

    .line 82
    .local v1, "sign2":I
    invoke-direct {p0, p1}, Lcom/facebook/imageutils/WebpUtil;->getNextByteAsInt(Ljava/io/InputStream;)I

    move-result v2

    .line 83
    .local v2, "sign3":I
    const/16 v3, 0x9d

    if-ne v0, v3, :cond_1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    new-instance v3, Lkotlin/Pair;

    invoke-static {p1}, Lcom/facebook/imageutils/WebpUtil;->get2BytesAsInt(Ljava/io/InputStream;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1}, Lcom/facebook/imageutils/WebpUtil;->get2BytesAsInt(Ljava/io/InputStream;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 85
    :cond_1
    :goto_0
    const/4 v3, 0x0

    .line 83
    :goto_1
    return-object v3
.end method

.method private final getVP8LDimension(Ljava/io/InputStream;)Lkotlin/Pair;
    .locals 10
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    invoke-direct {p0, p1}, Lcom/facebook/imageutils/WebpUtil;->getInt(Ljava/io/InputStream;)I

    .line 104
    invoke-direct {p0, p1}, Lcom/facebook/imageutils/WebpUtil;->getNextByteAsInt(Ljava/io/InputStream;)I

    move-result v0

    .line 105
    .local v0, "check":I
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    .line 106
    const/4 v1, 0x0

    return-object v1

    .line 108
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 109
    .local v1, "data1":I
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 110
    .local v2, "data2":I
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 111
    .local v3, "data3":I
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    .line 113
    .local v4, "data4":I
    and-int/lit8 v5, v2, 0x3f

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v1

    add-int/lit8 v5, v5, 0x1

    .line 114
    .local v5, "width":I
    and-int/lit8 v6, v4, 0xf

    shl-int/lit8 v6, v6, 0xa

    shl-int/lit8 v7, v3, 0x2

    or-int/2addr v6, v7

    and-int/lit16 v7, v2, 0xc0

    shr-int/lit8 v7, v7, 0x6

    or-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    .line 115
    .local v6, "height":I
    new-instance v7, Lkotlin/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7
.end method

.method private final getVP8XDimension(Ljava/io/InputStream;)Lkotlin/Pair;
    .locals 3
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    const-wide/16 v0, 0x8

    invoke-virtual {p1, v0, v1}, Ljava/io/InputStream;->skip(J)J

    .line 130
    new-instance v0, Lkotlin/Pair;

    invoke-direct {p0, p1}, Lcom/facebook/imageutils/WebpUtil;->read3Bytes(Ljava/io/InputStream;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/facebook/imageutils/WebpUtil;->read3Bytes(Ljava/io/InputStream;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private final read3Bytes(Ljava/io/InputStream;)I
    .locals 5
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    invoke-direct {p0, p1}, Lcom/facebook/imageutils/WebpUtil;->getNextByteAsInt(Ljava/io/InputStream;)I

    move-result v0

    .line 175
    .local v0, "byte1":I
    invoke-direct {p0, p1}, Lcom/facebook/imageutils/WebpUtil;->getNextByteAsInt(Ljava/io/InputStream;)I

    move-result v1

    .line 176
    .local v1, "byte2":I
    invoke-direct {p0, p1}, Lcom/facebook/imageutils/WebpUtil;->getNextByteAsInt(Ljava/io/InputStream;)I

    move-result v2

    .line 177
    .local v2, "byte3":I
    shl-int/lit8 v3, v2, 0x10

    shl-int/lit8 v4, v1, 0x8

    or-int/2addr v3, v4

    or-int/2addr v3, v0

    return v3
.end method
