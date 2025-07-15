.class public final Lexpo/modules/clipboard/ClipboardImageKt;
.super Ljava/lang/Object;
.source "ClipboardImage.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/clipboard/ClipboardImageKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u001a\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0001H\u0000\u001a\u001e\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0080@\u00a2\u0006\u0002\u0010\u000b\u001a&\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u000e\u001a\u00020\u000fH\u0080@\u00a2\u0006\u0002\u0010\u0010\u001a\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u0001H\u0000\u001a&\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0016H\u0080@\u00a2\u0006\u0002\u0010\u0017\u001a\u0012\u0010\u0018\u001a\u00020\u0019*\u00020\u000fH\u0082@\u00a2\u0006\u0002\u0010\u001a\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "JPEG_PREFIX",
        "",
        "PNG_PREFIX",
        "bitmapFromBase64String",
        "Landroid/graphics/Bitmap;",
        "base64Image",
        "bitmapFromContentUriAsync",
        "context",
        "Landroid/content/Context;",
        "imageUri",
        "Landroid/net/Uri;",
        "(Landroid/content/Context;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "clipDataFromBase64Image",
        "Landroid/content/ClipData;",
        "clipboardCacheDir",
        "Ljava/io/File;",
        "(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getImageFormatFromBase64",
        "Lexpo/modules/clipboard/ImageFormat;",
        "imageFromContentUri",
        "Lexpo/modules/clipboard/ImageResult;",
        "options",
        "Lexpo/modules/clipboard/GetImageOptions;",
        "(Landroid/content/Context;Landroid/net/Uri;Lexpo/modules/clipboard/GetImageOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "ensureExists",
        "",
        "(Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "expo-clipboard_debug"
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
.field public static final JPEG_PREFIX:Ljava/lang/String; = "/9j/"

.field public static final PNG_PREFIX:Ljava/lang/String; = "iVBORw0K"


# direct methods
.method public static final synthetic access$ensureExists(Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$receiver"    # Ljava/io/File;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 1
    invoke-static {p0, p1}, Lexpo/modules/clipboard/ClipboardImageKt;->ensureExists(Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final bitmapFromBase64String(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "base64Image"    # Ljava/lang/String;

    const-string v0, "base64Image"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    nop

    .line 174
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 175
    .local v1, "byteArray":[B
    array-length v2, v1

    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    .end local v1    # "byteArray":[B
    return-object v0

    .line 176
    .restart local v1    # "byteArray":[B
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Failed to convert base64 into Bitmap"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "base64Image":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v1    # "byteArray":[B
    .restart local p0    # "base64Image":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Lexpo/modules/clipboard/InvalidImageException;

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-direct {v1, p0, v2}, Lexpo/modules/clipboard/InvalidImageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final bitmapFromContentUriAsync(Landroid/content/Context;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lexpo/modules/clipboard/ClipboardImageKt$bitmapFromContentUriAsync$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lexpo/modules/clipboard/ClipboardImageKt$bitmapFromContentUriAsync$1;

    iget v1, v0, Lexpo/modules/clipboard/ClipboardImageKt$bitmapFromContentUriAsync$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lexpo/modules/clipboard/ClipboardImageKt$bitmapFromContentUriAsync$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lexpo/modules/clipboard/ClipboardImageKt$bitmapFromContentUriAsync$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lexpo/modules/clipboard/ClipboardImageKt$bitmapFromContentUriAsync$1;

    invoke-direct {v0, p2}, Lexpo/modules/clipboard/ClipboardImageKt$bitmapFromContentUriAsync$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lexpo/modules/clipboard/ClipboardImageKt$bitmapFromContentUriAsync$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 157
    iget v2, p2, Lexpo/modules/clipboard/ClipboardImageKt$bitmapFromContentUriAsync$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_1

    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 158
    .local p0, "context":Landroid/content/Context;
    .local p1, "imageUri":Landroid/net/Uri;
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lexpo/modules/clipboard/ClipboardImageKt$bitmapFromContentUriAsync$2;

    invoke-direct {v3, p0, p1}, Lexpo/modules/clipboard/ClipboardImageKt$bitmapFromContentUriAsync$2;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    const/4 v4, 0x1

    iput v4, p2, Lexpo/modules/clipboard/ClipboardImageKt$bitmapFromContentUriAsync$1;->label:I

    invoke-static {v2, v3, p2}, Lkotlinx/coroutines/InterruptibleKt;->runInterruptible(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "imageUri":Landroid/net/Uri;
    if-ne p0, v1, :cond_1

    .line 157
    return-object v1

    .line 158
    :cond_1
    :goto_1
    const-string p1, "runInterruptible(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final clipDataFromBase64Image(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/content/ClipData;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;

    iget v1, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;

    invoke-direct {v0, p3}, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p3, v0

    .local p3, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p3, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 112
    iget v2, p3, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    const/4 p0, 0x0

    .local p0, "$i$a$-use-ClipboardImageKt$clipDataFromBase64Image$2":I
    iget-object p1, p3, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/io/Closeable;

    iget-object p2, p3, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$1:Ljava/lang/Object;

    check-cast p2, Ljava/io/File;

    .local p2, "file":Ljava/io/File;
    iget-object v1, p3, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$0:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    .local v1, "context":Landroid/content/Context;
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    .line 135
    .end local v1    # "context":Landroid/content/Context;
    .end local p0    # "$i$a$-use-ClipboardImageKt$clipDataFromBase64Image$2":I
    .end local p2    # "file":Ljava/io/File;
    :catchall_0
    move-exception p0

    goto/16 :goto_5

    .line 112
    :pswitch_1
    iget-object p0, p3, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$3:Ljava/lang/Object;

    check-cast p0, Ljava/io/File;

    .local p0, "file":Ljava/io/File;
    iget-object p1, p3, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lexpo/modules/clipboard/ImageFormat;

    .local p1, "format":Lexpo/modules/clipboard/ImageFormat;
    iget-object p2, p3, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$1:Ljava/lang/Object;

    check-cast p2, Landroid/graphics/Bitmap;

    .local p2, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p3, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    .local v2, "context":Landroid/content/Context;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v2

    move-object v2, p2

    move-object p2, p1

    move-object p1, v0

    goto/16 :goto_3

    .end local v2    # "context":Landroid/content/Context;
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "format":Lexpo/modules/clipboard/ImageFormat;
    .end local p2    # "bitmap":Landroid/graphics/Bitmap;
    :pswitch_2
    const/4 p0, 0x0

    .local p0, "$i$a$-also-ClipboardImageKt$clipDataFromBase64Image$file$1":I
    iget-object p1, p3, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$3:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    iget-object p2, p3, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$2:Ljava/lang/Object;

    check-cast p2, Lexpo/modules/clipboard/ImageFormat;

    .local p2, "format":Lexpo/modules/clipboard/ImageFormat;
    iget-object v2, p3, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$1:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Bitmap;

    .local v2, "bitmap":Landroid/graphics/Bitmap;
    iget-object v5, p3, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$0:Ljava/lang/Object;

    check-cast v5, Landroid/content/Context;

    .local v5, "context":Landroid/content/Context;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "context":Landroid/content/Context;
    .end local p0    # "$i$a$-also-ClipboardImageKt$clipDataFromBase64Image$file$1":I
    .end local p2    # "format":Lexpo/modules/clipboard/ImageFormat;
    :pswitch_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, p0

    .restart local v5    # "context":Landroid/content/Context;
    move-object p0, p2

    .line 118
    .local p0, "clipboardCacheDir":Ljava/io/File;
    .local p1, "base64Image":Ljava/lang/String;
    invoke-static {p1}, Lexpo/modules/clipboard/ClipboardImageKt;->bitmapFromBase64String(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 121
    .local p2, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {p1}, Lexpo/modules/clipboard/ClipboardImageKt;->getImageFormatFromBase64(Ljava/lang/String;)Lexpo/modules/clipboard/ImageFormat;

    move-result-object p1

    .line 123
    .local p1, "format":Lexpo/modules/clipboard/ImageFormat;
    sget-object v2, Lexpo/modules/clipboard/ClipboardImageKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lexpo/modules/clipboard/ImageFormat;->ordinal()I

    move-result v6

    aget v2, v2, v6

    packed-switch v2, :pswitch_data_1

    .line 125
    .end local v5    # "context":Landroid/content/Context;
    .end local p0    # "clipboardCacheDir":Ljava/io/File;
    .end local p1    # "format":Lexpo/modules/clipboard/ImageFormat;
    .end local p2    # "bitmap":Landroid/graphics/Bitmap;
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .restart local v5    # "context":Landroid/content/Context;
    .restart local p0    # "clipboardCacheDir":Ljava/io/File;
    .restart local p1    # "format":Lexpo/modules/clipboard/ImageFormat;
    .restart local p2    # "bitmap":Landroid/graphics/Bitmap;
    :pswitch_4
    const-string v2, "copied_image.jpeg"

    goto :goto_1

    .line 124
    :pswitch_5
    const-string v2, "copied_image.png"

    .line 123
    :goto_1
    nop

    .line 129
    .local v2, "fileName":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .end local v2    # "fileName":Ljava/lang/String;
    .end local p0    # "clipboardCacheDir":Ljava/io/File;
    move-object p0, v6

    .local p0, "it":Ljava/io/File;
    const/4 v2, 0x0

    .line 130
    .local v2, "$i$a$-also-ClipboardImageKt$clipDataFromBase64Image$file$1":I
    iput-object v5, p3, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$0:Ljava/lang/Object;

    iput-object p2, p3, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$1:Ljava/lang/Object;

    iput-object p1, p3, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$2:Ljava/lang/Object;

    iput-object v6, p3, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$3:Ljava/lang/Object;

    iput v3, p3, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->label:I

    invoke-static {p0, p3}, Lexpo/modules/clipboard/ClipboardImageKt;->ensureExists(Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "it":Ljava/io/File;
    if-ne p0, v1, :cond_1

    .line 112
    return-object v1

    .line 130
    :cond_1
    move p0, v2

    move-object v2, p2

    move-object p2, p1

    move-object p1, v6

    .line 131
    .end local p1    # "format":Lexpo/modules/clipboard/ImageFormat;
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    .local p0, "$i$a$-also-ClipboardImageKt$clipDataFromBase64Image$file$1":I
    .local p2, "format":Lexpo/modules/clipboard/ImageFormat;
    :goto_2
    nop

    .line 129
    .end local p0    # "$i$a$-also-ClipboardImageKt$clipDataFromBase64Image$file$1":I
    move-object p0, p1

    .line 134
    .local p0, "file":Ljava/io/File;
    new-instance p1, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$fileStream$1;

    invoke-direct {p1, p0}, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$fileStream$1;-><init>(Ljava/io/File;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    iput-object v5, p3, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$0:Ljava/lang/Object;

    iput-object v2, p3, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$1:Ljava/lang/Object;

    iput-object p2, p3, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$2:Ljava/lang/Object;

    iput-object p0, p3, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$3:Ljava/lang/Object;

    const/4 v6, 0x2

    iput v6, p3, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->label:I

    invoke-static {v4, p1, p3, v3, v4}, Lkotlinx/coroutines/InterruptibleKt;->runInterruptible$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    .line 112
    return-object v1

    :cond_2
    :goto_3
    check-cast p1, Ljava/io/FileOutputStream;

    .line 135
    .local p1, "fileStream":Ljava/io/FileOutputStream;
    new-instance v6, Ljava/io/BufferedOutputStream;

    move-object v7, p1

    check-cast v7, Ljava/io/OutputStream;

    invoke-direct {v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    check-cast v6, Ljava/io/Closeable;

    .end local p1    # "fileStream":Ljava/io/FileOutputStream;
    :try_start_1
    move-object p1, v6

    check-cast p1, Ljava/io/BufferedOutputStream;

    .local p1, "outputStream":Ljava/io/BufferedOutputStream;
    const/4 v7, 0x0

    .line 136
    .local v7, "$i$a$-use-ClipboardImageKt$clipDataFromBase64Image$2":I
    invoke-virtual {p2}, Lexpo/modules/clipboard/ImageFormat;->getCompressFormat()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v8

    move-object v9, p1

    check-cast v9, Ljava/io/OutputStream;

    const/16 v10, 0x64

    invoke-virtual {v2, v8, v10, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 137
    nop

    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local p2    # "format":Lexpo/modules/clipboard/ImageFormat;
    new-instance p2, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$2$1;

    invoke-direct {p2, p1}, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$2$1;-><init>(Ljava/io/BufferedOutputStream;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    iput-object v5, p3, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$0:Ljava/lang/Object;

    iput-object p0, p3, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$1:Ljava/lang/Object;

    iput-object v6, p3, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$2:Ljava/lang/Object;

    iput-object v4, p3, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$3:Ljava/lang/Object;

    const/4 v2, 0x3

    iput v2, p3, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->label:I

    invoke-static {v4, p2, p3, v3, v4}, Lkotlinx/coroutines/InterruptibleKt;->runInterruptible$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local p1    # "outputStream":Ljava/io/BufferedOutputStream;
    if-ne p2, v1, :cond_3

    .line 112
    return-object v1

    .line 137
    :cond_3
    move-object p2, p0

    move-object v1, v5

    move-object p1, v6

    move p0, v7

    .line 138
    .end local v5    # "context":Landroid/content/Context;
    .end local v7    # "$i$a$-use-ClipboardImageKt$clipDataFromBase64Image$2":I
    .restart local v1    # "context":Landroid/content/Context;
    .local p0, "$i$a$-use-ClipboardImageKt$clipDataFromBase64Image$2":I
    .local p2, "file":Ljava/io/File;
    :goto_4
    :try_start_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    .end local p0    # "$i$a$-use-ClipboardImageKt$clipDataFromBase64Image$2":I
    invoke-static {p1, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 141
    sget-object p0, Lexpo/modules/clipboard/ClipboardFileProvider;->Companion:Lexpo/modules/clipboard/ClipboardFileProvider$Companion;

    .line 142
    nop

    .line 143
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ".ClipboardFileProvider"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 144
    nop

    .line 141
    invoke-virtual {p0, v1, p1, p2}, Lexpo/modules/clipboard/ClipboardFileProvider$Companion;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    .line 146
    .local p0, "imageUri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "image"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {p1, v2, p0}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object p1

    const-string v2, "newUri(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 135
    .end local v1    # "context":Landroid/content/Context;
    .end local p0    # "imageUri":Landroid/net/Uri;
    .end local p2    # "file":Ljava/io/File;
    :catchall_1
    move-exception p0

    move-object p1, v6

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    :goto_5
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    :catchall_2
    move-exception p2

    invoke-static {p1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private static final ensureExists(Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this$ensureExists"    # Ljava/io/File;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 187
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lexpo/modules/clipboard/ClipboardImageKt$ensureExists$2;

    invoke-direct {v1, p0}, Lexpo/modules/clipboard/ClipboardImageKt$ensureExists$2;-><init>(Ljava/io/File;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/InterruptibleKt;->runInterruptible(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 190
    return-object v0
.end method

.method public static final getImageFormatFromBase64(Ljava/lang/String;)Lexpo/modules/clipboard/ImageFormat;
    .locals 5
    .param p0, "base64Image"    # Ljava/lang/String;

    const-string v0, "base64Image"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "substring(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .local v0, "prefix":Ljava/lang/String;
    nop

    .line 55
    const-string v2, "iVBORw0K"

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v2, v1, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Lexpo/modules/clipboard/ImageFormat;->PNG:Lexpo/modules/clipboard/ImageFormat;

    goto :goto_0

    .line 56
    :cond_0
    const-string v2, "/9j/"

    invoke-static {v0, v2, v1, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lexpo/modules/clipboard/ImageFormat;->JPG:Lexpo/modules/clipboard/ImageFormat;

    goto :goto_0

    .line 57
    :cond_1
    sget-object v1, Lexpo/modules/clipboard/ImageFormat;->JPG:Lexpo/modules/clipboard/ImageFormat;

    .line 54
    :goto_0
    return-object v1
.end method

.method public static final imageFromContentUri(Landroid/content/Context;Landroid/net/Uri;Lexpo/modules/clipboard/GetImageOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Lexpo/modules/clipboard/GetImageOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/clipboard/ImageResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;

    iget v1, v0, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;

    invoke-direct {v0, p3}, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p3, v0

    .local p3, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p3, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 71
    iget v2, p3, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object p0, p3, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;->L$2:Ljava/lang/Object;

    check-cast p0, Ljava/io/ByteArrayOutputStream;

    .local p0, "outputStream":Ljava/io/ByteArrayOutputStream;
    iget-object p1, p3, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lexpo/modules/clipboard/ImageFormat;

    .local p1, "format":Lexpo/modules/clipboard/ImageFormat;
    iget-object p2, p3, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;->L$0:Ljava/lang/Object;

    check-cast p2, Landroid/graphics/Bitmap;

    .local p2, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .end local p0    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local p1    # "format":Lexpo/modules/clipboard/ImageFormat;
    .end local p2    # "bitmap":Landroid/graphics/Bitmap;
    :pswitch_1
    iget-object p0, p3, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lexpo/modules/clipboard/GetImageOptions;

    .local p0, "options":Lexpo/modules/clipboard/GetImageOptions;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, p0

    move-object p0, v0

    goto :goto_1

    .end local p0    # "options":Lexpo/modules/clipboard/GetImageOptions;
    :pswitch_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 77
    .local p0, "context":Landroid/content/Context;
    .local p1, "imageUri":Landroid/net/Uri;
    .local p2, "options":Lexpo/modules/clipboard/GetImageOptions;
    iput-object p2, p3, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;->L$0:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, p3, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;->label:I

    invoke-static {p0, p1, p3}, Lexpo/modules/clipboard/ClipboardImageKt;->bitmapFromContentUriAsync(Landroid/content/Context;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "imageUri":Landroid/net/Uri;
    if-ne p0, v1, :cond_1

    .line 71
    return-object v1

    :cond_1
    :goto_1
    check-cast p0, Landroid/graphics/Bitmap;

    .line 80
    .local p0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Lexpo/modules/clipboard/GetImageOptions;->getImageFormat()Lexpo/modules/clipboard/ImageFormat;

    move-result-object p1

    .line 81
    .local p1, "format":Lexpo/modules/clipboard/ImageFormat;
    invoke-virtual {p2}, Lexpo/modules/clipboard/GetImageOptions;->getJpegQuality()D

    move-result-wide v2

    const/16 v4, 0x64

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int p2, v2

    .line 82
    .local p2, "quality":I
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v3, v2

    .local v3, "it":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 83
    .local v4, "$i$a$-also-ClipboardImageKt$imageFromContentUri$outputStream$1":I
    invoke-virtual {p1}, Lexpo/modules/clipboard/ImageFormat;->getCompressFormat()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v5

    move-object v6, v3

    check-cast v6, Ljava/io/OutputStream;

    invoke-virtual {p0, v5, p2, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 84
    .end local p2    # "quality":I
    nop

    .line 82
    .end local v3    # "it":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "$i$a$-also-ClipboardImageKt$imageFromContentUri$outputStream$1":I
    move-object p2, v2

    .line 85
    .local p2, "outputStream":Ljava/io/ByteArrayOutputStream;
    iput-object p0, p3, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;->L$0:Ljava/lang/Object;

    iput-object p1, p3, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;->L$1:Ljava/lang/Object;

    iput-object p2, p3, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;->L$2:Ljava/lang/Object;

    const/4 v2, 0x2

    iput v2, p3, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;->label:I

    invoke-static {p3}, Lkotlinx/coroutines/YieldKt;->yield(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_2

    .line 71
    return-object v1

    .line 85
    :cond_2
    move-object v8, p2

    move-object p2, p0

    move-object p0, v8

    .line 88
    .local p0, "outputStream":Ljava/io/ByteArrayOutputStream;
    .local p2, "bitmap":Landroid/graphics/Bitmap;
    :goto_2
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 89
    .local v1, "byteArray":[B
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "encodedString":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lexpo/modules/clipboard/ImageFormat;->getMimeType()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";base64,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 92
    .local v3, "builder":Ljava/lang/StringBuilder;
    new-instance v4, Lexpo/modules/clipboard/ImageResult;

    .line 93
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "toString(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 95
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 92
    invoke-direct {v4, v5, v6, v7}, Lexpo/modules/clipboard/ImageResult;-><init>(Ljava/lang/String;II)V

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
