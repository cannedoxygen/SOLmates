.class public final Lexpo/modules/kotlin/devtools/ExpoNetworkInspectOkHttpInterceptorsKt;
.super Ljava/lang/Object;
.source "ExpoNetworkInspectOkHttpInterceptors.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExpoNetworkInspectOkHttpInterceptors.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExpoNetworkInspectOkHttpInterceptors.kt\nexpo/modules/kotlin/devtools/ExpoNetworkInspectOkHttpInterceptorsKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,157:1\n1747#2,3:158\n1747#2,3:161\n*S KotlinDebug\n*F\n+ 1 ExpoNetworkInspectOkHttpInterceptors.kt\nexpo/modules/kotlin/devtools/ExpoNetworkInspectOkHttpInterceptorsKt\n*L\n136#1:158,3\n143#1:161,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\u001a\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\u0000\u001a\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0008\u001a\u00020\tH\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u000e"
    }
    d2 = {
        "TAG",
        "",
        "delegate",
        "Lexpo/modules/kotlin/devtools/ExpoNetworkInspectOkHttpInterceptorsDelegate;",
        "getDelegate",
        "()Lexpo/modules/kotlin/devtools/ExpoNetworkInspectOkHttpInterceptorsDelegate;",
        "peekResponseBody",
        "Lokhttp3/ResponseBody;",
        "response",
        "Lokhttp3/Response;",
        "byteCount",
        "",
        "shouldParseBody",
        "",
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


# static fields
.field private static final TAG:Ljava/lang/String; = "ExpoNetworkInspector"

.field private static final delegate:Lexpo/modules/kotlin/devtools/ExpoNetworkInspectOkHttpInterceptorsDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    sget-object v0, Lexpo/modules/kotlin/devtools/ExpoRequestCdpInterceptor;->INSTANCE:Lexpo/modules/kotlin/devtools/ExpoRequestCdpInterceptor;

    check-cast v0, Lexpo/modules/kotlin/devtools/ExpoNetworkInspectOkHttpInterceptorsDelegate;

    sput-object v0, Lexpo/modules/kotlin/devtools/ExpoNetworkInspectOkHttpInterceptorsKt;->delegate:Lexpo/modules/kotlin/devtools/ExpoNetworkInspectOkHttpInterceptorsDelegate;

    return-void
.end method

.method public static final getDelegate()Lexpo/modules/kotlin/devtools/ExpoNetworkInspectOkHttpInterceptorsDelegate;
    .locals 1

    .line 18
    sget-object v0, Lexpo/modules/kotlin/devtools/ExpoNetworkInspectOkHttpInterceptorsKt;->delegate:Lexpo/modules/kotlin/devtools/ExpoNetworkInspectOkHttpInterceptorsDelegate;

    return-object v0
.end method

.method public static final peekResponseBody(Lokhttp3/Response;J)Lokhttp3/ResponseBody;
    .locals 10
    .param p0, "response"    # Lokhttp3/Response;
    .param p1, "byteCount"    # J

    const-string v0, "response"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 104
    .local v0, "body":Lokhttp3/ResponseBody;
    :cond_0
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v2

    invoke-interface {v2}, Lokio/BufferedSource;->peek()Lokio/BufferedSource;

    move-result-object v2

    .line 105
    .local v2, "peeked":Lokio/BufferedSource;
    nop

    .line 106
    const-wide/16 v3, 0x1

    add-long/2addr v3, p1

    :try_start_0
    invoke-interface {v2, v3, v4}, Lokio/BufferedSource;->request(J)Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    .line 109
    return-object v1

    .line 111
    :catch_0
    move-exception v3

    .line 113
    :cond_1
    const-string v3, "Content-Encoding"

    const/4 v4, 0x2

    invoke-static {p0, v3, v1, v4, v1}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "encoding":Ljava/lang/String;
    nop

    .line 115
    const-string v3, "gzip"

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 116
    new-instance v3, Lokio/GzipSource;

    move-object v4, v2

    check-cast v4, Lokio/Source;

    invoke-direct {v3, v4}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    check-cast v3, Lokio/Source;

    invoke-static {v3}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v3

    move-object v4, v3

    .local v4, "$this$peekResponseBody_u24lambda_u240":Lokio/BufferedSource;
    const/4 v5, 0x0

    .line 117
    .local v5, "$i$a$-apply-ExpoNetworkInspectOkHttpInterceptorsKt$peekResponseBody$source$1":I
    invoke-interface {v4, p1, p2}, Lokio/BufferedSource;->request(J)Z

    .line 118
    nop

    .line 116
    .end local v4    # "$this$peekResponseBody_u24lambda_u240":Lokio/BufferedSource;
    .end local v5    # "$i$a$-apply-ExpoNetworkInspectOkHttpInterceptorsKt$peekResponseBody$source$1":I
    goto :goto_0

    .line 119
    :cond_2
    move-object v3, v2

    .line 114
    :goto_0
    nop

    .line 122
    .local v3, "source":Lokio/BufferedSource;
    new-instance v4, Lokio/Buffer;

    invoke-direct {v4}, Lokio/Buffer;-><init>()V

    .line 123
    .local v4, "buffer":Lokio/Buffer;
    move-object v5, v3

    check-cast v5, Lokio/Source;

    invoke-interface {v3}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    move-result-object v6

    invoke-virtual {v6}, Lokio/Buffer;->size()J

    move-result-wide v6

    invoke-static {p1, p2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lokio/Buffer;->write(Lokio/Source;J)Lokio/Buffer;

    .line 124
    sget-object v5, Lokhttp3/ResponseBody;->Companion:Lokhttp3/ResponseBody$Companion;

    move-object v6, v4

    check-cast v6, Lokio/BufferedSource;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v7

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v8

    invoke-virtual {v5, v6, v7, v8, v9}, Lokhttp3/ResponseBody$Companion;->create(Lokio/BufferedSource;Lokhttp3/MediaType;J)Lokhttp3/ResponseBody;

    move-result-object v5

    return-object v5
.end method

.method public static synthetic peekResponseBody$default(Lokhttp3/Response;JILjava/lang/Object;)Lokhttp3/ResponseBody;
    .locals 0

    .line 99
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 101
    const-wide/32 p1, 0x100000

    .line 99
    :cond_0
    invoke-static {p0, p1, p2}, Lexpo/modules/kotlin/devtools/ExpoNetworkInspectOkHttpInterceptorsKt;->peekResponseBody(Lokhttp3/Response;J)Lokhttp3/ResponseBody;

    move-result-object p0

    return-object p0
.end method

.method public static final shouldParseBody(Lokhttp3/Response;)Z
    .locals 13
    .param p0, "response"    # Lokhttp3/Response;

    const-string v0, "response"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "text/event-stream"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 131
    const-string v1, "text/x-component"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 130
    nop

    .line 132
    const-string v1, "audio"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 130
    nop

    .line 133
    const-string v1, "video"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    .line 130
    nop

    .line 129
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 135
    .local v0, "skipContentTypes":Ljava/util/List;
    const-string v1, "Content-Type"

    const/4 v5, 0x0

    invoke-static {p0, v1, v5, v4, v5}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v6, ""

    if-nez v1, :cond_0

    move-object v1, v6

    .line 136
    .local v1, "contentType":Ljava/lang/String;
    :cond_0
    move-object v7, v0

    check-cast v7, Ljava/lang/Iterable;

    .local v7, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 158
    .local v8, "$i$f$any":I
    instance-of v9, v7, Ljava/util/Collection;

    if-eqz v9, :cond_1

    move-object v9, v7

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    move v7, v2

    goto :goto_0

    .line 159
    :cond_1
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .local v10, "element$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Ljava/lang/String;

    .local v11, "it":Ljava/lang/String;
    const/4 v12, 0x0

    .line 136
    .local v12, "$i$a$-any-ExpoNetworkInspectOkHttpInterceptorsKt$shouldParseBody$1":I
    invoke-static {v1, v11, v2, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v11

    .line 159
    .end local v11    # "it":Ljava/lang/String;
    .end local v12    # "$i$a$-any-ExpoNetworkInspectOkHttpInterceptorsKt$shouldParseBody$1":I
    if-eqz v11, :cond_2

    move v7, v3

    goto :goto_0

    .line 160
    .end local v10    # "element$iv":Ljava/lang/Object;
    :cond_3
    move v7, v2

    .line 136
    .end local v7    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$any":I
    :goto_0
    if-eqz v7, :cond_4

    .line 137
    return v2

    .line 142
    :cond_4
    invoke-virtual {p0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v7

    const-string v8, "Accept"

    invoke-virtual {v7, v8}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    goto :goto_1

    :cond_5
    move-object v6, v7

    .line 143
    .local v6, "requestAccept":Ljava/lang/String;
    :goto_1
    move-object v7, v0

    check-cast v7, Ljava/lang/Iterable;

    .restart local v7    # "$this$any$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 161
    .restart local v8    # "$i$f$any":I
    instance-of v9, v7, Ljava/util/Collection;

    if-eqz v9, :cond_6

    move-object v9, v7

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6

    move v7, v2

    goto :goto_2

    .line 162
    :cond_6
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .restart local v10    # "element$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Ljava/lang/String;

    .restart local v11    # "it":Ljava/lang/String;
    const/4 v12, 0x0

    .line 143
    .local v12, "$i$a$-any-ExpoNetworkInspectOkHttpInterceptorsKt$shouldParseBody$2":I
    invoke-static {v6, v11, v2, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v11

    .line 162
    .end local v11    # "it":Ljava/lang/String;
    .end local v12    # "$i$a$-any-ExpoNetworkInspectOkHttpInterceptorsKt$shouldParseBody$2":I
    if-eqz v11, :cond_7

    move v7, v3

    goto :goto_2

    .line 163
    .end local v10    # "element$iv":Ljava/lang/Object;
    :cond_8
    move v7, v2

    .line 143
    .end local v7    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$any":I
    :goto_2
    if-eqz v7, :cond_9

    .line 144
    return v2

    .line 148
    :cond_9
    const-string v7, "Transfer-Encoding"

    invoke-static {p0, v7, v5, v4, v5}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 149
    .local v7, "transferEncoding":Ljava/lang/String;
    const-string v8, "chunked"

    invoke-static {v8, v7, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 150
    return v2

    .line 154
    :cond_a
    const-string v8, "Content-Length"

    invoke-static {p0, v8, v5, v4, v5}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_3

    :cond_b
    const-wide/16 v4, -0x1

    .line 155
    .local v4, "contentLength":J
    :goto_3
    const-wide/16 v8, 0x1

    cmp-long v8, v4, v8

    if-ltz v8, :cond_c

    const-wide/32 v8, 0x100000

    cmp-long v8, v4, v8

    if-gtz v8, :cond_d

    :cond_c
    move v2, v3

    :cond_d
    return v2
.end method
