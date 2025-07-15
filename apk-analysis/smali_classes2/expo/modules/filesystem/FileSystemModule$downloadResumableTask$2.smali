.class final Lexpo/modules/filesystem/FileSystemModule$downloadResumableTask$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FileSystemModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/filesystem/FileSystemModule;->downloadResumableTask(Lexpo/modules/filesystem/FileSystemModule$DownloadResumableTaskParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFileSystemModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileSystemModule.kt\nexpo/modules/filesystem/FileSystemModule$downloadResumableTask$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1128:1\n1#2:1129\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0001\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
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
    c = "expo.modules.filesystem.FileSystemModule$downloadResumableTask$2"
    f = "FileSystemModule.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $params:Lexpo/modules/filesystem/FileSystemModule$DownloadResumableTaskParams;

.field label:I

.field final synthetic this$0:Lexpo/modules/filesystem/FileSystemModule;


# direct methods
.method constructor <init>(Lexpo/modules/filesystem/FileSystemModule$DownloadResumableTaskParams;Lexpo/modules/filesystem/FileSystemModule;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/filesystem/FileSystemModule$DownloadResumableTaskParams;",
            "Lexpo/modules/filesystem/FileSystemModule;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/filesystem/FileSystemModule$downloadResumableTask$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/filesystem/FileSystemModule$downloadResumableTask$2;->$params:Lexpo/modules/filesystem/FileSystemModule$DownloadResumableTaskParams;

    iput-object p2, p0, Lexpo/modules/filesystem/FileSystemModule$downloadResumableTask$2;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lexpo/modules/filesystem/FileSystemModule$downloadResumableTask$2;

    iget-object v1, p0, Lexpo/modules/filesystem/FileSystemModule$downloadResumableTask$2;->$params:Lexpo/modules/filesystem/FileSystemModule$DownloadResumableTaskParams;

    iget-object v2, p0, Lexpo/modules/filesystem/FileSystemModule$downloadResumableTask$2;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    invoke-direct {v0, v1, v2, p2}, Lexpo/modules/filesystem/FileSystemModule$downloadResumableTask$2;-><init>(Lexpo/modules/filesystem/FileSystemModule$DownloadResumableTaskParams;Lexpo/modules/filesystem/FileSystemModule;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/filesystem/FileSystemModule$downloadResumableTask$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1, p2}, Lexpo/modules/filesystem/FileSystemModule$downloadResumableTask$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lexpo/modules/filesystem/FileSystemModule$downloadResumableTask$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lexpo/modules/filesystem/FileSystemModule$downloadResumableTask$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 922
    move-object/from16 v1, p0

    iget v0, v1, Lexpo/modules/filesystem/FileSystemModule$downloadResumableTask$2;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .local v2, "this":Lexpo/modules/filesystem/FileSystemModule$downloadResumableTask$2;
    move-object/from16 v3, p1

    .line 923
    .local v3, "$result":Ljava/lang/Object;
    iget-object v0, v2, Lexpo/modules/filesystem/FileSystemModule$downloadResumableTask$2;->$params:Lexpo/modules/filesystem/FileSystemModule$DownloadResumableTaskParams;

    invoke-virtual {v0}, Lexpo/modules/filesystem/FileSystemModule$DownloadResumableTaskParams;->component1()Lexpo/modules/filesystem/DownloadOptions;

    move-result-object v4

    .local v4, "options":Lexpo/modules/filesystem/DownloadOptions;
    invoke-virtual {v0}, Lexpo/modules/filesystem/FileSystemModule$DownloadResumableTaskParams;->component2()Lokhttp3/Call;

    move-result-object v5

    .local v5, "call":Lokhttp3/Call;
    invoke-virtual {v0}, Lexpo/modules/filesystem/FileSystemModule$DownloadResumableTaskParams;->component3()Ljava/io/File;

    move-result-object v6

    .local v6, "file":Ljava/io/File;
    invoke-virtual {v0}, Lexpo/modules/filesystem/FileSystemModule$DownloadResumableTaskParams;->component4()Z

    move-result v7

    .local v7, "isResume":Z
    invoke-virtual {v0}, Lexpo/modules/filesystem/FileSystemModule$DownloadResumableTaskParams;->component5()Lexpo/modules/kotlin/Promise;

    move-result-object v8

    .line 924
    .local v8, "promise":Lexpo/modules/kotlin/Promise;
    nop

    .line 925
    const/4 v9, 0x0

    :try_start_0
    invoke-interface {v5}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    .line 926
    .local v0, "response":Lokhttp3/Response;
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v10

    .line 927
    .local v10, "responseBody":Lokhttp3/ResponseBody;
    new-instance v11, Ljava/io/BufferedInputStream;

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v10}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v10, v11

    .line 928
    .local v10, "input":Ljava/io/BufferedInputStream;
    new-instance v11, Ljava/io/FileOutputStream;

    const/4 v13, 0x0

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    .end local v7    # "isResume":Z
    :cond_0
    move v7, v13

    :goto_0
    invoke-direct {v11, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v7, v11

    .line 929
    .local v7, "output":Ljava/io/FileOutputStream;
    const/16 v11, 0x400

    new-array v11, v11, [B

    .line 930
    .local v11, "data":[B
    new-instance v14, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 931
    .local v14, "count":Lkotlin/jvm/internal/Ref$IntRef;
    :goto_1
    invoke-virtual {v10, v11}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v15

    move/from16 p1, v15

    .line 1129
    .local p1, "it":I
    const/16 v16, 0x0

    .line 931
    .local v16, "$i$a$-also-FileSystemModule$downloadResumableTask$2$1":I
    move/from16 v12, p1

    .end local p1    # "it":I
    .local v12, "it":I
    iput v12, v14, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .end local v12    # "it":I
    .end local v16    # "$i$a$-also-FileSystemModule$downloadResumableTask$2$1":I
    const/4 v12, -0x1

    if-eq v15, v12, :cond_1

    .line 932
    iget v12, v14, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v7, v11, v13, v12}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 934
    .end local v7    # "output":Ljava/io/FileOutputStream;
    .end local v10    # "input":Ljava/io/BufferedInputStream;
    .end local v11    # "data":[B
    .end local v14    # "count":Lkotlin/jvm/internal/Ref$IntRef;
    :cond_1
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    iget-object v10, v2, Lexpo/modules/filesystem/FileSystemModule$downloadResumableTask$2;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    move-object v11, v7

    .local v11, "$this$invokeSuspend_u24lambda_u243":Landroid/os/Bundle;
    const/4 v12, 0x0

    .line 935
    .local v12, "$i$a$-apply-FileSystemModule$downloadResumableTask$2$result$1":I
    const-string v14, "uri"

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    const-string v14, "status"

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v15

    invoke-virtual {v11, v14, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 937
    const-string v14, "headers"

    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v15

    invoke-static {v10, v15}, Lexpo/modules/filesystem/FileSystemModule;->access$translateHeaders(Lexpo/modules/filesystem/FileSystemModule;Lokhttp3/Headers;)Landroid/os/Bundle;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 938
    invoke-virtual {v4}, Lexpo/modules/filesystem/DownloadOptions;->getMd5()Z

    move-result v14

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    move v4, v15

    .line 1129
    .local v4, "it":Z
    const/4 v15, 0x0

    .line 938
    .local v15, "$i$a$-takeIf-FileSystemModule$downloadResumableTask$2$result$1$1":I
    if-eqz v4, :cond_2

    const/16 v17, 0x1

    goto :goto_2

    :cond_2
    move/from16 v17, v13

    .end local v4    # "it":Z
    .end local v15    # "$i$a$-takeIf-FileSystemModule$downloadResumableTask$2$result$1$1":I
    :goto_2
    if-eqz v17, :cond_3

    goto :goto_3

    :cond_3
    move-object v14, v9

    :goto_3
    if-eqz v14, :cond_4

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1129
    const/4 v4, 0x0

    .line 938
    .local v4, "$i$a$-let-FileSystemModule$downloadResumableTask$2$result$1$2":I
    const-string v13, "md5"

    invoke-static {v10, v6}, Lexpo/modules/filesystem/FileSystemModule;->access$md5(Lexpo/modules/filesystem/FileSystemModule;Ljava/io/File;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v13, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .end local v4    # "$i$a$-let-FileSystemModule$downloadResumableTask$2$result$1$2":I
    .end local v6    # "file":Ljava/io/File;
    .end local v11    # "$this$invokeSuspend_u24lambda_u243":Landroid/os/Bundle;
    nop

    .line 939
    :cond_4
    nop

    .line 934
    .end local v12    # "$i$a$-apply-FileSystemModule$downloadResumableTask$2$result$1":I
    move-object v4, v7

    .line 940
    .local v4, "result":Landroid/os/Bundle;
    invoke-virtual {v0}, Lokhttp3/Response;->close()V

    .line 941
    invoke-interface {v8, v4}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 942
    nop

    .end local v0    # "response":Lokhttp3/Response;
    .end local v4    # "result":Landroid/os/Bundle;
    .end local v5    # "call":Lokhttp3/Call;
    .end local v8    # "promise":Lexpo/modules/kotlin/Promise;
    goto :goto_4

    .line 943
    .restart local v5    # "call":Lokhttp3/Call;
    .restart local v8    # "promise":Lexpo/modules/kotlin/Promise;
    :catch_0
    move-exception v0

    .line 944
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {v5}, Lokhttp3/Call;->isCanceled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 945
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "call":Lokhttp3/Call;
    invoke-interface {v8, v9}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V

    .line 946
    .end local v8    # "promise":Lexpo/modules/kotlin/Promise;
    return-object v9

    .line 948
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v8    # "promise":Lexpo/modules/kotlin/Promise;
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1129
    .local v4, "it":Ljava/lang/String;
    const/4 v5, 0x0

    .line 948
    .local v5, "$i$a$-let-FileSystemModule$downloadResumableTask$2$2":I
    invoke-static {}, Lexpo/modules/filesystem/FileSystemModuleKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .end local v4    # "it":Ljava/lang/String;
    .end local v5    # "$i$a$-let-FileSystemModule$downloadResumableTask$2$2":I
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    .line 949
    :cond_6
    invoke-static {}, Lexpo/modules/filesystem/FileSystemModuleKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v4

    .end local v8    # "promise":Lexpo/modules/kotlin/Promise;
    const-string v5, "access$getTAG$p(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object v6, v0

    check-cast v6, Ljava/lang/Throwable;

    invoke-interface {v8, v4, v5, v6}, Lexpo/modules/kotlin/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 950
    nop

    .line 924
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-object v9

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
