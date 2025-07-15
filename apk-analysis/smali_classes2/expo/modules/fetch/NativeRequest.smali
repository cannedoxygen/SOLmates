.class public final Lexpo/modules/fetch/NativeRequest;
.super Lexpo/modules/kotlin/sharedobjects/SharedObject;
.source "NativeRequest.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\r\u001a\u00020\u000eJ(\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lexpo/modules/fetch/NativeRequest;",
        "Lexpo/modules/kotlin/sharedobjects/SharedObject;",
        "appContext",
        "Lexpo/modules/kotlin/AppContext;",
        "response",
        "Lexpo/modules/fetch/NativeResponse;",
        "(Lexpo/modules/kotlin/AppContext;Lexpo/modules/fetch/NativeResponse;)V",
        "requestHolder",
        "Lexpo/modules/fetch/RequestHolder;",
        "getResponse$expo_debug",
        "()Lexpo/modules/fetch/NativeResponse;",
        "task",
        "Lokhttp3/Call;",
        "cancel",
        "",
        "start",
        "client",
        "Lokhttp3/OkHttpClient;",
        "url",
        "Ljava/net/URL;",
        "requestInit",
        "Lexpo/modules/fetch/NativeRequestInit;",
        "requestBody",
        "",
        "expo_debug"
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
.field private final requestHolder:Lexpo/modules/fetch/RequestHolder;

.field private final response:Lexpo/modules/fetch/NativeResponse;

.field private task:Lokhttp3/Call;


# direct methods
.method public constructor <init>(Lexpo/modules/kotlin/AppContext;Lexpo/modules/fetch/NativeResponse;)V
    .locals 2
    .param p1, "appContext"    # Lexpo/modules/kotlin/AppContext;
    .param p2, "response"    # Lexpo/modules/fetch/NativeResponse;

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1}, Lexpo/modules/kotlin/sharedobjects/SharedObject;-><init>(Lexpo/modules/kotlin/AppContext;)V

    .line 17
    iput-object p2, p0, Lexpo/modules/fetch/NativeRequest;->response:Lexpo/modules/fetch/NativeResponse;

    .line 19
    new-instance v0, Lexpo/modules/fetch/RequestHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/fetch/RequestHolder;-><init>(Lokhttp3/Request;)V

    iput-object v0, p0, Lexpo/modules/fetch/NativeRequest;->requestHolder:Lexpo/modules/fetch/RequestHolder;

    .line 17
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    .line 44
    iget-object v0, p0, Lexpo/modules/fetch/NativeRequest;->task:Lokhttp3/Call;

    if-nez v0, :cond_0

    return-void

    .line 45
    .local v0, "task":Lokhttp3/Call;
    :cond_0
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 46
    iget-object v1, p0, Lexpo/modules/fetch/NativeRequest;->response:Lexpo/modules/fetch/NativeResponse;

    invoke-virtual {v1}, Lexpo/modules/fetch/NativeResponse;->emitRequestCanceled()V

    .line 47
    return-void
.end method

.method public final getResponse$expo_debug()Lexpo/modules/fetch/NativeResponse;
    .locals 1

    .line 17
    iget-object v0, p0, Lexpo/modules/fetch/NativeRequest;->response:Lexpo/modules/fetch/NativeResponse;

    return-object v0
.end method

.method public final start(Lokhttp3/OkHttpClient;Ljava/net/URL;Lexpo/modules/fetch/NativeRequestInit;[B)V
    .locals 16
    .param p1, "client"    # Lokhttp3/OkHttpClient;
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "requestInit"    # Lexpo/modules/fetch/NativeRequestInit;
    .param p4, "requestBody"    # [B

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "client"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "url"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "requestInit"

    move-object/from16 v4, p3

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual/range {p3 .. p3}, Lexpo/modules/fetch/NativeRequestInit;->getCredentials()Lexpo/modules/fetch/NativeRequestCredentials;

    move-result-object v2

    sget-object v5, Lexpo/modules/fetch/NativeRequestCredentials;->INCLUDE:Lexpo/modules/fetch/NativeRequestCredentials;

    if-ne v2, v5, :cond_0

    .line 24
    move-object v2, v3

    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    sget-object v5, Lokhttp3/CookieJar;->NO_COOKIES:Lokhttp3/CookieJar;

    invoke-virtual {v2, v5}, Lokhttp3/OkHttpClient$Builder;->cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v2

    .line 23
    :goto_0
    nop

    .line 29
    .local v2, "newClient":Lokhttp3/OkHttpClient;
    invoke-virtual/range {p3 .. p3}, Lexpo/modules/fetch/NativeRequestInit;->getHeaders()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lexpo/modules/fetch/RequestUtilsKt;->toHeaders(Ljava/util/List;)Lokhttp3/Headers;

    move-result-object v5

    .line 30
    .local v5, "headers":Lokhttp3/Headers;
    const-string v6, "Content-Type"

    invoke-virtual {v5, v6}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    sget-object v8, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    invoke-virtual {v8, v6}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v6

    move-object v10, v6

    goto :goto_1

    :cond_1
    move-object v10, v7

    .line 31
    .local v10, "mediaType":Lokhttp3/MediaType;
    :goto_1
    new-instance v6, Lokhttp3/Request$Builder;

    invoke-direct {v6}, Lokhttp3/Request$Builder;-><init>()V

    .line 32
    invoke-virtual {v6, v5}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v6

    .line 33
    invoke-virtual/range {p3 .. p3}, Lexpo/modules/fetch/NativeRequestInit;->getMethod()Ljava/lang/String;

    move-result-object v15

    if-eqz p4, :cond_2

    sget-object v8, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    const/4 v13, 0x6

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v9, p4

    invoke-static/range {v8 .. v14}, Lokhttp3/RequestBody$Companion;->create$default(Lokhttp3/RequestBody$Companion;[BLokhttp3/MediaType;IIILjava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object v7

    :cond_2
    invoke-virtual {v6, v15, v7}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v6

    .line 34
    sget-object v7, Lexpo/modules/fetch/OkHttpFileUrlInterceptor;->Companion:Lexpo/modules/fetch/OkHttpFileUrlInterceptor$Companion;

    invoke-virtual {v7, v1}, Lexpo/modules/fetch/OkHttpFileUrlInterceptor$Companion;->handleFileUrl(Ljava/net/URL;)Ljava/net/URL;

    move-result-object v7

    invoke-virtual {v6, v7}, Lokhttp3/Request$Builder;->url(Ljava/net/URL;)Lokhttp3/Request$Builder;

    move-result-object v6

    .line 35
    invoke-virtual {v6}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v6

    .line 31
    nop

    .line 36
    .local v6, "request":Lokhttp3/Request;
    iget-object v7, v0, Lexpo/modules/fetch/NativeRequest;->requestHolder:Lexpo/modules/fetch/RequestHolder;

    invoke-virtual {v7, v6}, Lexpo/modules/fetch/RequestHolder;->setRequest(Lokhttp3/Request;)V

    .line 38
    invoke-virtual {v2, v6}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v7

    iput-object v7, v0, Lexpo/modules/fetch/NativeRequest;->task:Lokhttp3/Call;

    .line 39
    iget-object v7, v0, Lexpo/modules/fetch/NativeRequest;->task:Lokhttp3/Call;

    if-eqz v7, :cond_3

    iget-object v8, v0, Lexpo/modules/fetch/NativeRequest;->response:Lexpo/modules/fetch/NativeResponse;

    check-cast v8, Lokhttp3/Callback;

    invoke-interface {v7, v8}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 40
    :cond_3
    iget-object v7, v0, Lexpo/modules/fetch/NativeRequest;->response:Lexpo/modules/fetch/NativeResponse;

    invoke-virtual {v7}, Lexpo/modules/fetch/NativeResponse;->onStarted()V

    .line 41
    return-void
.end method
