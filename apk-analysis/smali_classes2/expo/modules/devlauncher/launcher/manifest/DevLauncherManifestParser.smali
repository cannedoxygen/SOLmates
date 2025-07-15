.class public final Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;
.super Ljava/lang/Object;
.source "DevLauncherManifestParser.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDevLauncherManifestParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DevLauncherManifestParser.kt\nexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser\n+ 2 DevLauncherOkHttpExtensions.kt\nexpo/modules/devlauncher/helpers/DevLauncherOkHttpExtensionsKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,53:1\n20#2:54\n21#2:64\n33#2:65\n20#2:68\n21#2:78\n33#2:79\n314#3,9:55\n323#3,2:66\n314#3,9:69\n323#3,2:80\n*S KotlinDebug\n*F\n+ 1 DevLauncherManifestParser.kt\nexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser\n*L\n19#1:54\n19#1:64\n19#1:65\n28#1:68\n28#1:78\n28#1:79\n19#1:55,9\n19#1:66,2\n28#1:69,9\n28#1:80,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u000e\u0010\t\u001a\u00020\nH\u0082@\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010\u000c\u001a\u00020\rH\u0002J\u000e\u0010\u000e\u001a\u00020\u000fH\u0086@\u00a2\u0006\u0002\u0010\u000bJ\u000e\u0010\u0010\u001a\u00020\u0011H\u0086@\u00a2\u0006\u0002\u0010\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;",
        "",
        "httpClient",
        "Lokhttp3/OkHttpClient;",
        "url",
        "Landroid/net/Uri;",
        "installationID",
        "",
        "(Lokhttp3/OkHttpClient;Landroid/net/Uri;Ljava/lang/String;)V",
        "downloadManifest",
        "Ljava/io/Reader;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getHeaders",
        "Lokhttp3/Headers;",
        "isManifestUrl",
        "",
        "parseManifest",
        "Lexpo/modules/manifests/core/Manifest;",
        "expo-dev-launcher_debug"
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

.field private final installationID:Ljava/lang/String;

.field private final url:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .param p1, "httpClient"    # Lokhttp3/OkHttpClient;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "installationID"    # Ljava/lang/String;

    const-string v0, "httpClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;->httpClient:Lokhttp3/OkHttpClient;

    .line 15
    iput-object p2, p0, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;->url:Landroid/net/Uri;

    .line 16
    iput-object p3, p0, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;->installationID:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public static final synthetic access$downloadManifest(Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 13
    invoke-direct {p0, p1}, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;->downloadManifest(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final downloadManifest(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/io/Reader;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser$downloadManifest$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser$downloadManifest$1;

    iget v1, v0, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser$downloadManifest$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser$downloadManifest$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser$downloadManifest$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser$downloadManifest$1;

    invoke-direct {v0, p0, p1}, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser$downloadManifest$1;-><init>(Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser$downloadManifest$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 27
    iget v2, p1, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser$downloadManifest$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    const/4 v1, 0x0

    .local v1, "$i$f$await":I
    const/4 v2, 0x0

    .local v2, "$i$f$suspendCancellableCoroutine":I
    iget-object v3, p1, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser$downloadManifest$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lokhttp3/OkHttpClient;

    iget-object v3, p1, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser$downloadManifest$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lokhttp3/Request;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v0

    goto :goto_1

    .end local v1    # "$i$f$await":I
    .end local v2    # "$i$f$suspendCancellableCoroutine":I
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 28
    .local v2, "this":Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;
    iget-object v3, v2, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;->url:Landroid/net/Uri;

    const-string v4, "GET"

    invoke-direct {v2}, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;->getHeaders()Lokhttp3/Headers;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lexpo/modules/devlauncher/helpers/DevLauncherOkHttpExtensionsKt;->fetch(Landroid/net/Uri;Ljava/lang/String;Lokhttp3/Headers;)Lokhttp3/Request;

    move-result-object v3

    .local v3, "$this$await$iv":Lokhttp3/Request;
    iget-object v2, v2, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;->httpClient:Lokhttp3/OkHttpClient;

    .local v2, "okHttpClient$iv":Lokhttp3/OkHttpClient;
    const/4 v4, 0x0

    .line 68
    .local v4, "$i$f$await":I
    const/4 v5, 0x0

    .line 69
    .local v5, "$i$f$suspendCancellableCoroutine":I
    iput-object v3, p1, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser$downloadManifest$1;->L$0:Ljava/lang/Object;

    iput-object v2, p1, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser$downloadManifest$1;->L$1:Ljava/lang/Object;

    const/4 v6, 0x1

    iput v6, p1, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser$downloadManifest$1;->label:I

    move-object v7, p1

    check-cast v7, Lkotlin/coroutines/Continuation;

    .local v7, "uCont$iv$iv":Lkotlin/coroutines/Continuation;
    const/4 v8, 0x0

    .line 70
    .local v8, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv$iv":I
    new-instance v9, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v7}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v10

    invoke-direct {v9, v10, v6}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    move-object v6, v9

    .line 76
    .local v6, "cancellable$iv$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-virtual {v6}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 77
    move-object v9, v6

    check-cast v9, Lkotlinx/coroutines/CancellableContinuation;

    .local v9, "callback$iv":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v10, 0x0

    .line 78
    .local v10, "$i$a$-suspendCancellableCoroutine-DevLauncherOkHttpExtensionsKt$await$2$iv":I
    invoke-virtual {v2, v3}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v11

    new-instance v12, Lexpo/modules/devlauncher/helpers/DevLauncherOkHttpExtensionsKt$await$2$1;

    invoke-direct {v12, v9}, Lexpo/modules/devlauncher/helpers/DevLauncherOkHttpExtensionsKt$await$2$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    check-cast v12, Lokhttp3/Callback;

    invoke-interface {v11, v12}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 79
    .end local v2    # "okHttpClient$iv":Lokhttp3/OkHttpClient;
    .end local v3    # "$this$await$iv":Lokhttp3/Request;
    nop

    .line 77
    .end local v9    # "callback$iv":Lkotlinx/coroutines/CancellableContinuation;
    .end local v10    # "$i$a$-suspendCancellableCoroutine-DevLauncherOkHttpExtensionsKt$await$2$iv":I
    nop

    .line 80
    invoke-virtual {v6}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v2

    .line 69
    .end local v6    # "cancellable$iv$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v7    # "uCont$iv$iv":Lkotlin/coroutines/Continuation;
    .end local v8    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv$iv":I
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_1

    move-object v3, p1

    check-cast v3, Lkotlin/coroutines/Continuation;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_1
    if-ne v2, v1, :cond_2

    .line 27
    return-object v1

    .line 69
    :cond_2
    move-object v3, v2

    move v1, v4

    move v2, v5

    .line 81
    .end local v4    # "$i$f$await":I
    .end local v5    # "$i$f$suspendCancellableCoroutine":I
    .restart local v1    # "$i$f$await":I
    .local v2, "$i$f$suspendCancellableCoroutine":I
    :goto_1
    nop

    .line 68
    .end local v2    # "$i$f$suspendCancellableCoroutine":I
    nop

    .line 28
    .end local v1    # "$i$f$await":I
    move-object v1, v3

    check-cast v1, Lokhttp3/Response;

    .line 29
    .local v1, "response":Lokhttp3/Response;
    invoke-virtual {v1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 33
    invoke-virtual {v1}, Lokhttp3/Response;->-deprecated_body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->charStream()Ljava/io/Reader;

    move-result-object v2

    return-object v2

    .line 30
    :cond_3
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Failed to open app.\n\nIf you are trying to load the app from a development server, check your network connectivity and make sure you can access the server from your device.\n\nIf you are trying to open a published project, install a compatible version of expo-updates and follow all setup and integration steps."

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final getHeaders()Lokhttp3/Headers;
    .locals 3

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "expo-platform"

    const-string v2, "android"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 45
    const-string v1, "accept"

    const-string v2, "application/expo+json,application/json"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 44
    nop

    .line 43
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 47
    .local v0, "headersMap":Ljava/util/Map;
    iget-object v1, p0, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;->installationID:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 48
    const-string v1, "expo-dev-client-id"

    iget-object v2, p0, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;->installationID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_0
    sget-object v1, Lokhttp3/Headers;->Companion:Lokhttp3/Headers$Companion;

    invoke-virtual {v1, v0}, Lokhttp3/Headers$Companion;->of(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public final isManifestUrl(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser$isManifestUrl$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser$isManifestUrl$1;

    iget v1, v0, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser$isManifestUrl$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser$isManifestUrl$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser$isManifestUrl$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser$isManifestUrl$1;

    invoke-direct {v0, p0, p1}, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser$isManifestUrl$1;-><init>(Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser$isManifestUrl$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 18
    iget v2, p1, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser$isManifestUrl$1;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    const/4 v1, 0x0

    .local v1, "$i$f$await":I
    const/4 v2, 0x0

    .local v2, "$i$f$suspendCancellableCoroutine":I
    iget-object v4, p1, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser$isManifestUrl$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lokhttp3/OkHttpClient;

    iget-object v4, p1, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser$isManifestUrl$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lokhttp3/Request;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v0

    goto :goto_1

    .end local v1    # "$i$f$await":I
    .end local v2    # "$i$f$suspendCancellableCoroutine":I
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 19
    .local v2, "this":Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;
    iget-object v4, v2, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;->url:Landroid/net/Uri;

    const-string v5, "HEAD"

    invoke-direct {v2}, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;->getHeaders()Lokhttp3/Headers;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lexpo/modules/devlauncher/helpers/DevLauncherOkHttpExtensionsKt;->fetch(Landroid/net/Uri;Ljava/lang/String;Lokhttp3/Headers;)Lokhttp3/Request;

    move-result-object v4

    .local v4, "$this$await$iv":Lokhttp3/Request;
    iget-object v2, v2, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;->httpClient:Lokhttp3/OkHttpClient;

    .local v2, "okHttpClient$iv":Lokhttp3/OkHttpClient;
    const/4 v5, 0x0

    .line 54
    .local v5, "$i$f$await":I
    const/4 v6, 0x0

    .line 55
    .local v6, "$i$f$suspendCancellableCoroutine":I
    iput-object v4, p1, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser$isManifestUrl$1;->L$0:Ljava/lang/Object;

    iput-object v2, p1, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser$isManifestUrl$1;->L$1:Ljava/lang/Object;

    iput v3, p1, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser$isManifestUrl$1;->label:I

    move-object v7, p1

    check-cast v7, Lkotlin/coroutines/Continuation;

    .local v7, "uCont$iv$iv":Lkotlin/coroutines/Continuation;
    const/4 v8, 0x0

    .line 56
    .local v8, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv$iv":I
    new-instance v9, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v7}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v10

    invoke-direct {v9, v10, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 62
    .local v9, "cancellable$iv$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-virtual {v9}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 63
    move-object v10, v9

    check-cast v10, Lkotlinx/coroutines/CancellableContinuation;

    .local v10, "callback$iv":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v11, 0x0

    .line 64
    .local v11, "$i$a$-suspendCancellableCoroutine-DevLauncherOkHttpExtensionsKt$await$2$iv":I
    invoke-virtual {v2, v4}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v12

    new-instance v13, Lexpo/modules/devlauncher/helpers/DevLauncherOkHttpExtensionsKt$await$2$1;

    invoke-direct {v13, v10}, Lexpo/modules/devlauncher/helpers/DevLauncherOkHttpExtensionsKt$await$2$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    check-cast v13, Lokhttp3/Callback;

    invoke-interface {v12, v13}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 65
    .end local v2    # "okHttpClient$iv":Lokhttp3/OkHttpClient;
    .end local v4    # "$this$await$iv":Lokhttp3/Request;
    nop

    .line 63
    .end local v10    # "callback$iv":Lkotlinx/coroutines/CancellableContinuation;
    .end local v11    # "$i$a$-suspendCancellableCoroutine-DevLauncherOkHttpExtensionsKt$await$2$iv":I
    nop

    .line 66
    invoke-virtual {v9}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v2

    .line 55
    .end local v7    # "uCont$iv$iv":Lkotlin/coroutines/Continuation;
    .end local v8    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv$iv":I
    .end local v9    # "cancellable$iv$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    if-ne v2, v4, :cond_1

    move-object v4, p1

    check-cast v4, Lkotlin/coroutines/Continuation;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_1
    if-ne v2, v1, :cond_2

    .line 18
    return-object v1

    .line 55
    :cond_2
    move-object v4, v2

    move v1, v5

    move v2, v6

    .line 67
    .end local v5    # "$i$f$await":I
    .end local v6    # "$i$f$suspendCancellableCoroutine":I
    .restart local v1    # "$i$f$await":I
    .local v2, "$i$f$suspendCancellableCoroutine":I
    :goto_1
    nop

    .line 54
    .end local v2    # "$i$f$suspendCancellableCoroutine":I
    nop

    .line 19
    .end local v1    # "$i$f$await":I
    move-object v1, v4

    check-cast v1, Lokhttp3/Response;

    .line 20
    .local v1, "response":Lokhttp3/Response;
    const-string v2, "Content-Type"

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v1, v2, v4, v5, v4}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 22
    .local v2, "contentType":Ljava/lang/String;
    invoke-virtual {v1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 23
    const-string v6, "Exponent-Server"

    invoke-virtual {v1, v6, v4}, Lokhttp3/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    .line 24
    .end local v1    # "response":Lokhttp3/Response;
    const/4 v1, 0x0

    if-eqz v2, :cond_3

    const-string v6, "text/html"

    invoke-static {v2, v6, v1, v5, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    move-object v6, v2

    check-cast v6, Ljava/lang/CharSequence;

    const-string v7, "/javascript"

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v6, v7, v1, v5, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    .end local v2    # "contentType":Ljava/lang/String;
    :cond_3
    move v3, v1

    goto :goto_3

    :cond_4
    :goto_2
    nop

    :goto_3
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 22
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final parseManifest(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/manifests/core/Manifest;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser$parseManifest$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser$parseManifest$1;

    iget v1, v0, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser$parseManifest$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser$parseManifest$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser$parseManifest$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser$parseManifest$1;

    invoke-direct {v0, p0, p1}, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser$parseManifest$1;-><init>(Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser$parseManifest$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 36
    iget v2, p1, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser$parseManifest$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v0

    goto :goto_1

    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 37
    .local v2, "this":Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;
    const/4 v3, 0x1

    iput v3, p1, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser$parseManifest$1;->label:I

    invoke-direct {v2, p1}, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;->downloadManifest(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "this":Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;
    if-ne v2, v1, :cond_1

    .line 36
    return-object v1

    :cond_1
    :goto_1
    check-cast v2, Ljava/io/Closeable;

    :try_start_0
    move-object v1, v2

    check-cast v1, Ljava/io/Reader;

    .local v1, "it":Ljava/io/Reader;
    const/4 v3, 0x0

    .line 38
    .local v3, "$i$a$-use-DevLauncherManifestParser$parseManifest$2":I
    sget-object v4, Lexpo/modules/manifests/core/Manifest;->Companion:Lexpo/modules/manifests/core/Manifest$Companion;

    new-instance v5, Lorg/json/JSONObject;

    invoke-static {v1}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lexpo/modules/manifests/core/Manifest$Companion;->fromManifestJson(Lorg/json/JSONObject;)Lexpo/modules/manifests/core/Manifest;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "it":Ljava/io/Reader;
    .end local v3    # "$i$a$-use-DevLauncherManifestParser$parseManifest$2":I
    const/4 v1, 0x0

    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v4

    :catchall_0
    move-exception v1

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :catchall_1
    move-exception v3

    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
