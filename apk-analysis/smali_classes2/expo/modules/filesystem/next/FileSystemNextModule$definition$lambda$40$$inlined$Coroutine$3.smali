.class public final Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AsyncFunctionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/filesystem/next/FileSystemNextModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "[",
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAsyncFunctionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncFunctionBuilder.kt\nexpo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$5\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 FileSystemNextModule.kt\nexpo/modules/filesystem/next/FileSystemNextModule\n+ 4 OkHttpExtensions.kt\nexpo/modules/kotlin/devtools/OkHttpExtensionsKt\n+ 5 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,269:1\n15#2,4:270\n36#3,4:274\n41#3,25:292\n33#4:278\n34#4:288\n46#4:289\n314#5,9:279\n323#5,2:290\n*S KotlinDebug\n*F\n+ 1 AsyncFunctionBuilder.kt\nexpo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$5\n+ 2 FileSystemNextModule.kt\nexpo/modules/filesystem/next/FileSystemNextModule\n*L\n37#1:270,4\n39#2:278\n39#2:288\n39#2:289\n39#2:279,9\n39#2:290,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001\"\u0006\u0008\u0001\u0010\u0003\u0018\u0001\"\u0006\u0008\u0002\u0010\u0004\u0018\u0001*\u00020\u00052\u0010\u0010\u0006\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010\u0007H\u008a@\u00a8\u0006\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "P0",
        "P1",
        "Lkotlinx/coroutines/CoroutineScope;",
        "<name for destructuring parameter 0>",
        "",
        "expo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$5"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "expo.modules.filesystem.next.FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3"
    f = "FileSystemNextModule.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0x117
    }
    m = "invokeSuspend"
    n = {
        "to",
        "url",
        "client",
        "$this$await$iv",
        "$completion$iv"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4"
    }
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, [Ljava/lang/Object;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;->invoke(Lkotlinx/coroutines/CoroutineScope;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "[",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;

    invoke-direct {v0, p3}, Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p2, v0, Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;->L$0:Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 0
    move-object/from16 v1, p0

    iget v2, v1, Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;->label:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v0, p0

    .local v0, "this":Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;
    move-object/from16 v2, p1

    .local v2, "$result":Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "$i$a$-Coroutine-FileSystemNextModule$definition$1$1":I
    const/4 v5, 0x0

    .local v5, "$i$f$await":I
    const/4 v6, 0x0

    .local v6, "$i$f$suspendCancellableCoroutine":I
    iget-object v7, v0, Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;->L$4:Ljava/lang/Object;

    check-cast v7, Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;

    iget-object v7, v0, Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;->L$3:Ljava/lang/Object;

    check-cast v7, Lokhttp3/Request;

    iget-object v7, v0, Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;->L$2:Ljava/lang/Object;

    check-cast v7, Lokhttp3/OkHttpClient;

    iget-object v7, v0, Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;->L$1:Ljava/lang/Object;

    check-cast v7, Ljava/net/URI;

    .local v7, "url":Ljava/net/URI;
    iget-object v8, v0, Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;->L$0:Ljava/lang/Object;

    check-cast v8, Lexpo/modules/filesystem/next/FileSystemPath;

    .local v8, "to":Lexpo/modules/filesystem/next/FileSystemPath;
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v16, v0

    move-object v1, v2

    goto/16 :goto_0

    .end local v0    # "this":Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;
    .end local v2    # "$result":Ljava/lang/Object;
    .end local v4    # "$i$a$-Coroutine-FileSystemNextModule$definition$1$1":I
    .end local v5    # "$i$f$await":I
    .end local v6    # "$i$f$suspendCancellableCoroutine":I
    .end local v7    # "url":Ljava/net/URI;
    .end local v8    # "to":Lexpo/modules/filesystem/next/FileSystemPath;
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .local v2, "this":Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;
    move-object/from16 v4, p1

    .local v4, "$result":Ljava/lang/Object;
    iget-object v5, v2, Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;->L$0:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    .line 36
    aget-object v6, v5, v3

    .local v6, "p0":Ljava/lang/Object;
    const/4 v7, 0x1

    aget-object v5, v5, v7

    .line 37
    .local v5, "p1":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 270
    .local v8, "$i$f$enforceType":I
    nop

    .line 273
    nop

    .line 38
    .end local v8    # "$i$f$enforceType":I
    move-object v8, v2

    check-cast v8, Lkotlin/coroutines/Continuation;

    move-object v8, v5

    check-cast v8, Lexpo/modules/filesystem/next/FileSystemPath;

    .local v8, "to":Lexpo/modules/filesystem/next/FileSystemPath;
    move-object v5, v6

    check-cast v5, Ljava/net/URI;

    .end local v6    # "p0":Ljava/lang/Object;
    .local v5, "url":Ljava/net/URI;
    const/4 v6, 0x0

    .line 274
    .local v6, "$i$a$-Coroutine-FileSystemNextModule$definition$1$1":I
    sget-object v9, Lexpo/modules/interfaces/filesystem/Permission;->WRITE:Lexpo/modules/interfaces/filesystem/Permission;

    invoke-virtual {v8, v9}, Lexpo/modules/filesystem/next/FileSystemPath;->validatePermission(Lexpo/modules/interfaces/filesystem/Permission;)Z

    .line 275
    new-instance v9, Lokhttp3/Request$Builder;

    invoke-direct {v9}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v5}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v10

    const-string v11, "toURL(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Lokhttp3/Request$Builder;->url(Ljava/net/URL;)Lokhttp3/Request$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v9

    .line 276
    .local v9, "request":Lokhttp3/Request;
    new-instance v10, Lokhttp3/OkHttpClient;

    invoke-direct {v10}, Lokhttp3/OkHttpClient;-><init>()V

    .line 277
    .local v10, "client":Lokhttp3/OkHttpClient;
    move-object v11, v2

    .local v9, "$this$await$iv":Lokhttp3/Request;
    .local v11, "$completion$iv":Lkotlin/coroutines/Continuation;
    const/4 v12, 0x0

    .line 278
    .local v12, "$i$f$await":I
    const/4 v13, 0x0

    .line 279
    .local v13, "$i$f$suspendCancellableCoroutine":I
    iput-object v8, v2, Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;->L$0:Ljava/lang/Object;

    iput-object v5, v2, Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;->L$1:Ljava/lang/Object;

    iput-object v10, v2, Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;->L$2:Ljava/lang/Object;

    iput-object v9, v2, Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;->L$3:Ljava/lang/Object;

    iput-object v11, v2, Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;->L$4:Ljava/lang/Object;

    iput v7, v2, Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;->label:I

    move-object v14, v11

    check-cast v14, Lkotlin/coroutines/Continuation;

    .local v14, "uCont$iv$iv":Lkotlin/coroutines/Continuation;
    const/4 v15, 0x0

    .line 280
    .local v15, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv$iv":I
    new-instance v3, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v14}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v3, v1, v7}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    move-object v1, v3

    .line 286
    .local v1, "cancellable$iv$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 287
    move-object v3, v1

    check-cast v3, Lkotlinx/coroutines/CancellableContinuation;

    .local v3, "callback$iv":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v7, 0x0

    .line 288
    .local v7, "$i$a$-suspendCancellableCoroutine-OkHttpExtensionsKt$await$2$iv":I
    move-object/from16 v16, v2

    .end local v2    # "this":Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;
    .local v16, "this":Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;
    invoke-virtual {v10, v9}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    .end local v4    # "$result":Ljava/lang/Object;
    .local p1, "$result":Ljava/lang/Object;
    new-instance v4, Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$lambda$2$$inlined$await$1;

    invoke-direct {v4, v3}, Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$lambda$2$$inlined$await$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    check-cast v4, Lokhttp3/Callback;

    invoke-interface {v2, v4}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 289
    .end local v9    # "$this$await$iv":Lokhttp3/Request;
    .end local v10    # "client":Lokhttp3/OkHttpClient;
    nop

    .line 287
    .end local v3    # "callback$iv":Lkotlinx/coroutines/CancellableContinuation;
    .end local v7    # "$i$a$-suspendCancellableCoroutine-OkHttpExtensionsKt$await$2$iv":I
    nop

    .line 290
    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v2

    .line 279
    .end local v1    # "cancellable$iv$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v14    # "uCont$iv$iv":Lkotlin/coroutines/Continuation;
    .end local v15    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv$iv":I
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v2, v1, :cond_0

    move-object v1, v11

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .end local v11    # "$completion$iv":Lkotlin/coroutines/Continuation;
    :cond_0
    if-ne v2, v0, :cond_1

    .line 0
    return-object v0

    .line 279
    :cond_1
    move-object/from16 v1, p1

    move-object v7, v5

    move v4, v6

    move v5, v12

    move v6, v13

    .line 291
    .end local v12    # "$i$f$await":I
    .end local v13    # "$i$f$suspendCancellableCoroutine":I
    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    .local v4, "$i$a$-Coroutine-FileSystemNextModule$definition$1$1":I
    .local v5, "$i$f$await":I
    .local v6, "$i$f$suspendCancellableCoroutine":I
    .local v7, "url":Ljava/net/URI;
    :goto_0
    nop

    .line 278
    .end local v6    # "$i$f$suspendCancellableCoroutine":I
    nop

    .line 277
    .end local v5    # "$i$f$await":I
    move-object v0, v2

    check-cast v0, Lokhttp3/Response;

    .line 292
    .local v0, "response":Lokhttp3/Response;
    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 296
    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v2

    const-string v3, "content-disposition"

    invoke-virtual {v2, v3}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, "contentDisposition":Ljava/lang/String;
    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v3

    const-string v5, "content-type"

    invoke-virtual {v3, v5}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 298
    .local v3, "contentType":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2, v3}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 300
    .end local v3    # "contentType":Ljava/lang/String;
    .end local v7    # "url":Ljava/net/URI;
    .local v2, "fileName":Ljava/lang/String;
    instance-of v3, v8, Lexpo/modules/filesystem/next/FileSystemDirectory;

    if-eqz v3, :cond_2

    .line 301
    new-instance v3, Ljava/io/File;

    invoke-virtual {v8}, Lexpo/modules/filesystem/next/FileSystemPath;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-direct {v3, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    .line 303
    .end local v2    # "fileName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v8}, Lexpo/modules/filesystem/next/FileSystemPath;->getFile()Ljava/io/File;

    move-result-object v3

    .line 300
    .end local v8    # "to":Lexpo/modules/filesystem/next/FileSystemPath;
    :goto_1
    move-object v2, v3

    .line 306
    .local v2, "destination":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    .line 310
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    .end local v0    # "response":Lokhttp3/Response;
    if-eqz v0, :cond_3

    .line 311
    .local v0, "body":Lokhttp3/ResponseBody;
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v3

    check-cast v3, Ljava/io/Closeable;

    .end local v0    # "body":Lokhttp3/ResponseBody;
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/io/InputStream;

    .local v0, "input":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 312
    .local v5, "$i$a$-use-FileSystemNextModule$definition$1$1$1":I
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v6, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v7, v6

    check-cast v7, Ljava/io/FileOutputStream;

    .local v7, "output":Ljava/io/FileOutputStream;
    const/4 v8, 0x0

    .line 313
    .local v8, "$i$a$-use-FileSystemNextModule$definition$1$1$1$1":I
    move-object v9, v7

    check-cast v9, Ljava/io/OutputStream;

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v0, v9, v12, v10, v11}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 312
    .end local v0    # "input":Ljava/io/InputStream;
    .end local v7    # "output":Ljava/io/FileOutputStream;
    .end local v8    # "$i$a$-use-FileSystemNextModule$definition$1$1$1$1":I
    :try_start_2
    invoke-static {v6, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 311
    .end local v5    # "$i$a$-use-FileSystemNextModule$definition$1$1$1":I
    invoke-static {v3, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 316
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 38
    .end local v2    # "destination":Ljava/io/File;
    .end local v4    # "$i$a$-Coroutine-FileSystemNextModule$definition$1$1":I
    return-object v0

    .line 312
    .restart local v4    # "$i$a$-Coroutine-FileSystemNextModule$definition$1$1":I
    .restart local v5    # "$i$a$-use-FileSystemNextModule$definition$1$1$1":I
    :catchall_0
    move-exception v0

    move-object v2, v0

    .end local v1    # "$result":Ljava/lang/Object;
    .end local v4    # "$i$a$-Coroutine-FileSystemNextModule$definition$1$1":I
    .end local v5    # "$i$a$-use-FileSystemNextModule$definition$1$1$1":I
    .end local v16    # "this":Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .restart local v1    # "$result":Ljava/lang/Object;
    .restart local v4    # "$i$a$-Coroutine-FileSystemNextModule$definition$1$1":I
    .restart local v5    # "$i$a$-use-FileSystemNextModule$definition$1$1$1":I
    .restart local v16    # "this":Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;
    :catchall_1
    move-exception v0

    move-object v7, v0

    :try_start_4
    invoke-static {v6, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v1    # "$result":Ljava/lang/Object;
    .end local v4    # "$i$a$-Coroutine-FileSystemNextModule$definition$1$1":I
    .end local v16    # "this":Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 311
    .end local v5    # "$i$a$-use-FileSystemNextModule$definition$1$1$1":I
    .restart local v1    # "$result":Ljava/lang/Object;
    .restart local v4    # "$i$a$-Coroutine-FileSystemNextModule$definition$1$1":I
    .restart local v16    # "this":Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;
    :catchall_2
    move-exception v0

    move-object v2, v0

    .end local v1    # "$result":Ljava/lang/Object;
    .end local v4    # "$i$a$-Coroutine-FileSystemNextModule$definition$1$1":I
    .end local v16    # "this":Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .restart local v1    # "$result":Ljava/lang/Object;
    .restart local v4    # "$i$a$-Coroutine-FileSystemNextModule$definition$1$1":I
    .restart local v16    # "this":Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;
    :catchall_3
    move-exception v0

    move-object v5, v0

    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v5

    .line 310
    :cond_3
    new-instance v0, Lexpo/modules/filesystem/next/UnableToDownloadException;

    const-string v2, "response body is null"

    invoke-direct {v0, v2}, Lexpo/modules/filesystem/next/UnableToDownloadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_4
    new-instance v0, Lexpo/modules/filesystem/next/DestinationAlreadyExistsException;

    invoke-direct {v0}, Lexpo/modules/filesystem/next/DestinationAlreadyExistsException;-><init>()V

    throw v0

    .line 293
    .local v0, "response":Lokhttp3/Response;
    :cond_5
    new-instance v2, Lexpo/modules/filesystem/next/UnableToDownloadException;

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "response has status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lexpo/modules/filesystem/next/UnableToDownloadException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
