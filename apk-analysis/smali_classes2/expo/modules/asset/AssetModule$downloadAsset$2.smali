.class final Lexpo/modules/asset/AssetModule$downloadAsset$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AssetModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/asset/AssetModule;->downloadAsset(Lexpo/modules/kotlin/AppContext;Ljava/net/URI;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Landroid/net/Uri;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001*\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Landroid/net/Uri;",
        "kotlin.jvm.PlatformType",
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
    c = "expo.modules.asset.AssetModule$downloadAsset$2"
    f = "AssetModule.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $localUrl:Ljava/io/File;

.field final synthetic $uri:Ljava/net/URI;

.field label:I

.field final synthetic this$0:Lexpo/modules/asset/AssetModule;


# direct methods
.method constructor <init>(Ljava/net/URI;Lexpo/modules/asset/AssetModule;Ljava/io/File;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Lexpo/modules/asset/AssetModule;",
            "Ljava/io/File;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/asset/AssetModule$downloadAsset$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/asset/AssetModule$downloadAsset$2;->$uri:Ljava/net/URI;

    iput-object p2, p0, Lexpo/modules/asset/AssetModule$downloadAsset$2;->this$0:Lexpo/modules/asset/AssetModule;

    iput-object p3, p0, Lexpo/modules/asset/AssetModule$downloadAsset$2;->$localUrl:Ljava/io/File;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lexpo/modules/asset/AssetModule$downloadAsset$2;

    iget-object v1, p0, Lexpo/modules/asset/AssetModule$downloadAsset$2;->$uri:Ljava/net/URI;

    iget-object v2, p0, Lexpo/modules/asset/AssetModule$downloadAsset$2;->this$0:Lexpo/modules/asset/AssetModule;

    iget-object v3, p0, Lexpo/modules/asset/AssetModule$downloadAsset$2;->$localUrl:Ljava/io/File;

    invoke-direct {v0, v1, v2, v3, p2}, Lexpo/modules/asset/AssetModule$downloadAsset$2;-><init>(Ljava/net/URI;Lexpo/modules/asset/AssetModule;Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/asset/AssetModule$downloadAsset$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lexpo/modules/asset/AssetModule$downloadAsset$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lexpo/modules/asset/AssetModule$downloadAsset$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lexpo/modules/asset/AssetModule$downloadAsset$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    const-string v0, "toString(...)"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 56
    iget v1, p0, Lexpo/modules/asset/AssetModule$downloadAsset$2;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 57
    .local v1, "this":Lexpo/modules/asset/AssetModule$downloadAsset$2;
    .local p1, "$result":Ljava/lang/Object;
    nop

    .line 58
    nop

    .line 59
    :try_start_0
    iget-object v2, v1, Lexpo/modules/asset/AssetModule$downloadAsset$2;->$uri:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    const-string v3, ":"

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v5, v4, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lexpo/modules/asset/AssetModule$downloadAsset$2;->this$0:Lexpo/modules/asset/AssetModule;

    invoke-static {v2}, Lexpo/modules/asset/AssetModule;->access$getContext(Lexpo/modules/asset/AssetModule;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lexpo/modules/asset/AssetModule$downloadAsset$2;->$uri:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lexpo/modules/asset/ResourceAssetKt;->openAssetResourceStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    goto :goto_0

    .line 60
    :cond_0
    iget-object v2, v1, Lexpo/modules/asset/AssetModule$downloadAsset$2;->$uri:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "file:///android_res/"

    invoke-static {v2, v3, v5, v4, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lexpo/modules/asset/AssetModule$downloadAsset$2;->this$0:Lexpo/modules/asset/AssetModule;

    invoke-static {v2}, Lexpo/modules/asset/AssetModule;->access$getContext(Lexpo/modules/asset/AssetModule;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lexpo/modules/asset/AssetModule$downloadAsset$2;->$uri:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lexpo/modules/asset/ResourceAssetKt;->openAndroidResStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    goto :goto_0

    .line 61
    :cond_1
    iget-object v2, v1, Lexpo/modules/asset/AssetModule$downloadAsset$2;->$uri:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    .line 58
    :goto_0
    nop

    .line 63
    .local v2, "inputStream":Ljava/io/InputStream;
    move-object v3, v2

    check-cast v3, Ljava/io/Closeable;

    iget-object v7, v1, Lexpo/modules/asset/AssetModule$downloadAsset$2;->$localUrl:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "inputStream":Ljava/io/InputStream;
    :try_start_1
    move-object v2, v3

    check-cast v2, Ljava/io/InputStream;

    .local v2, "input":Ljava/io/InputStream;
    const/4 v8, 0x0

    .local v8, "$i$a$-use-AssetModule$downloadAsset$2$1":I
    new-instance v9, Ljava/io/FileOutputStream;

    .line 64
    invoke-direct {v9, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v9, Ljava/io/Closeable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    move-object v7, v9

    check-cast v7, Ljava/io/FileOutputStream;

    .local v7, "output":Ljava/io/FileOutputStream;
    const/4 v10, 0x0

    .line 65
    .local v10, "$i$a$-use-AssetModule$downloadAsset$2$1$1":I
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v11, v7

    check-cast v11, Ljava/io/OutputStream;

    invoke-static {v2, v11, v5, v4, v6}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    .end local v2    # "input":Ljava/io/InputStream;
    .end local v7    # "output":Ljava/io/FileOutputStream;
    .end local v10    # "$i$a$-use-AssetModule$downloadAsset$2$1$1":I
    :try_start_3
    invoke-static {v9, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 63
    .end local v8    # "$i$a$-use-AssetModule$downloadAsset$2$1":I
    :try_start_4
    invoke-static {v3, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 68
    iget-object v2, v1, Lexpo/modules/asset/AssetModule$downloadAsset$2;->$localUrl:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 57
    return-object v0

    .line 64
    .restart local v8    # "$i$a$-use-AssetModule$downloadAsset$2$1":I
    :catchall_0
    move-exception v2

    .end local v1    # "this":Lexpo/modules/asset/AssetModule$downloadAsset$2;
    .end local v8    # "$i$a$-use-AssetModule$downloadAsset$2$1":I
    .end local p1    # "$result":Ljava/lang/Object;
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .restart local v1    # "this":Lexpo/modules/asset/AssetModule$downloadAsset$2;
    .restart local v8    # "$i$a$-use-AssetModule$downloadAsset$2$1":I
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_1
    move-exception v4

    :try_start_6
    invoke-static {v9, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v1    # "this":Lexpo/modules/asset/AssetModule$downloadAsset$2;
    .end local p1    # "$result":Ljava/lang/Object;
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 63
    .end local v8    # "$i$a$-use-AssetModule$downloadAsset$2$1":I
    .restart local v1    # "this":Lexpo/modules/asset/AssetModule$downloadAsset$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_2
    move-exception v2

    .end local v1    # "this":Lexpo/modules/asset/AssetModule$downloadAsset$2;
    .end local p1    # "$result":Ljava/lang/Object;
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .restart local v1    # "this":Lexpo/modules/asset/AssetModule$downloadAsset$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_3
    move-exception v4

    :try_start_8
    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v1    # "this":Lexpo/modules/asset/AssetModule$downloadAsset$2;
    .end local p1    # "$result":Ljava/lang/Object;
    throw v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 69
    .restart local v1    # "this":Lexpo/modules/asset/AssetModule$downloadAsset$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 70
    new-instance v2, Lexpo/modules/asset/UnableToDownloadAssetException;

    iget-object v3, v1, Lexpo/modules/asset/AssetModule$downloadAsset$2;->$uri:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lexpo/modules/asset/UnableToDownloadAssetException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
