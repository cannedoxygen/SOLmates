.class public final Lexpo/modules/devmenu/api/DevMenuMetroClient;
.super Ljava/lang/Object;
.source "DevMenuMetroClient.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDevMenuMetroClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DevMenuMetroClient.kt\nexpo/modules/devmenu/api/DevMenuMetroClient\n+ 2 DevMenuOkHttpExtension.kt\nexpo/modules/devmenu/helpers/DevMenuOkHttpExtensionKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,24:1\n23#2:25\n24#2:35\n36#2:36\n314#3,9:26\n323#3,2:37\n*S KotlinDebug\n*F\n+ 1 DevMenuMetroClient.kt\nexpo/modules/devmenu/api/DevMenuMetroClient\n*L\n21#1:25\n21#1:35\n21#1:36\n21#1:26,9\n21#1:37,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0086@\u00a2\u0006\u0002\u0010\nR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lexpo/modules/devmenu/api/DevMenuMetroClient;",
        "",
        "()V",
        "httpClient",
        "Lokhttp3/OkHttpClient;",
        "openJSInspector",
        "",
        "metroHost",
        "",
        "applicationId",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "expo-dev-menu_debug"
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
.field private final httpClient:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v0, p0, Lexpo/modules/devmenu/api/DevMenuMetroClient;->httpClient:Lokhttp3/OkHttpClient;

    .line 9
    return-void
.end method


# virtual methods
.method public final openJSInspector(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16
    .param p1, "metroHost"    # Ljava/lang/String;
    .param p2, "applicationId"    # Ljava/lang/String;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/_expo/debugger"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 15
    const-string v2, "applicationId"

    move-object/from16 v3, p2

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 13
    nop

    .line 17
    .local v0, "url":Landroid/net/Uri;
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 18
    sget-object v4, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    const-string v5, ""

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v4

    invoke-virtual {v2, v4}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 19
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "toString(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 20
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 17
    nop

    .line 21
    .local v2, "request":Lokhttp3/Request;
    move-object/from16 v4, p0

    iget-object v5, v4, Lexpo/modules/devmenu/api/DevMenuMetroClient;->httpClient:Lokhttp3/OkHttpClient;

    .local v5, "okHttpClient$iv":Lokhttp3/OkHttpClient;
    move-object v6, v2

    .local v6, "$this$await$iv":Lokhttp3/Request;
    const/4 v7, 0x0

    .line 25
    .local v7, "$i$f$await":I
    const/4 v8, 0x0

    .line 26
    .local v8, "$i$f$suspendCancellableCoroutine":I
    move-object/from16 v9, p3

    .local v9, "uCont$iv$iv":Lkotlin/coroutines/Continuation;
    const/4 v10, 0x0

    .line 27
    .local v10, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv$iv":I
    new-instance v11, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v9}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v12

    const/4 v13, 0x1

    invoke-direct {v11, v12, v13}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 33
    .local v11, "cancellable$iv$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-virtual {v11}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 34
    move-object v12, v11

    check-cast v12, Lkotlinx/coroutines/CancellableContinuation;

    .local v12, "callback$iv":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v13, 0x0

    .line 35
    .local v13, "$i$a$-suspendCancellableCoroutine-DevMenuOkHttpExtensionKt$await$2$iv":I
    invoke-virtual {v5, v6}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v14

    new-instance v15, Lexpo/modules/devmenu/helpers/DevMenuOkHttpExtensionKt$await$2$1;

    invoke-direct {v15, v12}, Lexpo/modules/devmenu/helpers/DevMenuOkHttpExtensionKt$await$2$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    check-cast v15, Lokhttp3/Callback;

    invoke-interface {v14, v15}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 36
    nop

    .line 34
    .end local v12    # "callback$iv":Lkotlinx/coroutines/CancellableContinuation;
    .end local v13    # "$i$a$-suspendCancellableCoroutine-DevMenuOkHttpExtensionKt$await$2$iv":I
    nop

    .line 37
    invoke-virtual {v11}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v9

    .line 26
    .end local v9    # "uCont$iv$iv":Lkotlin/coroutines/Continuation;
    .end local v10    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv$iv":I
    .end local v11    # "cancellable$iv$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v10

    if-ne v9, v10, :cond_0

    invoke-static/range {p3 .. p3}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v10

    if-ne v9, v10, :cond_1

    return-object v9

    .line 38
    :cond_1
    nop

    .line 25
    .end local v8    # "$i$f$suspendCancellableCoroutine":I
    nop

    .end local v5    # "okHttpClient$iv":Lokhttp3/OkHttpClient;
    .end local v6    # "$this$await$iv":Lokhttp3/Request;
    .end local v7    # "$i$f$await":I
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 22
    return-object v5
.end method
