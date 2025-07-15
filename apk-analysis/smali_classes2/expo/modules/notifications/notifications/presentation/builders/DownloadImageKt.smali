.class public final Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt;
.super Ljava/lang/Object;
.source "DownloadImage.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\u001a,\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005H\u0086@\u00a2\u0006\u0002\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "downloadImage",
        "Landroid/graphics/Bitmap;",
        "imageUrl",
        "Landroid/net/Uri;",
        "connectTimeout",
        "",
        "readTimeout",
        "(Landroid/net/Uri;JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "expo-notifications_debug"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final downloadImage(Landroid/net/Uri;JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "JJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p5

    instance-of v1, v0, Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$1;

    iget v2, v1, Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$1;

    invoke-direct {v1, v0}, Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v0, v1

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v2, v1, Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$1;->result:Ljava/lang/Object;

    .local v2, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 11
    iget v3, v1, Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v2    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v2    # "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "$i$a$-runCatching-DownloadImageKt$downloadImage$2":I
    :try_start_0
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    goto :goto_1

    .end local v0    # "$i$a$-runCatching-DownloadImageKt$downloadImage$2":I
    :pswitch_1
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v4, p0

    .local v4, "imageUrl":Landroid/net/Uri;
    move-wide/from16 v10, p1

    .local v10, "connectTimeout":J
    move-wide/from16 v12, p3

    .line 12
    .local v12, "readTimeout":J
    :try_start_1
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 v14, 0x0

    .line 13
    .local v14, "$i$a$-runCatching-DownloadImageKt$downloadImage$2":I
    add-long v7, v10, v12

    new-instance v15, Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$2$1;

    const/4 v9, 0x0

    move-object v3, v15

    move-wide v5, v10

    move-wide/from16 p0, v10

    move-wide v10, v7

    .end local v10    # "connectTimeout":J
    .local p0, "connectTimeout":J
    move-wide v7, v12

    invoke-direct/range {v3 .. v9}, Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$2$1;-><init>(Landroid/net/Uri;JJLkotlin/coroutines/Continuation;)V

    check-cast v15, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x1

    iput v3, v1, Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$1;->label:I

    invoke-static {v10, v11, v15, v1}, Lkotlinx/coroutines/TimeoutKt;->withTimeout(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v4    # "imageUrl":Landroid/net/Uri;
    .end local v12    # "readTimeout":J
    .end local p0    # "connectTimeout":J
    if-ne v3, v0, :cond_1

    .line 11
    return-object v0

    .line 13
    :cond_1
    move v0, v14

    .end local v14    # "$i$a$-runCatching-DownloadImageKt$downloadImage$2":I
    .restart local v0    # "$i$a$-runCatching-DownloadImageKt$downloadImage$2":I
    :goto_1
    check-cast v3, Landroid/graphics/Bitmap;

    .line 12
    .end local v0    # "$i$a$-runCatching-DownloadImageKt$downloadImage$2":I
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    :goto_2
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    .line 12
    :cond_2
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic downloadImage$default(Landroid/net/Uri;JJLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 11
    and-int/lit8 p7, p6, 0x2

    const-wide/16 v0, 0x1f40

    if-eqz p7, :cond_0

    move-wide v3, v0

    goto :goto_0

    :cond_0
    move-wide v3, p1

    :goto_0
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_1

    move-wide v5, v0

    goto :goto_1

    :cond_1
    move-wide v5, p3

    :goto_1
    move-object v2, p0

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt;->downloadImage(Landroid/net/Uri;JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
