.class final Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BitmapLoadingWorkerJob.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/canhub/cropper/BitmapLoadingWorkerJob;->start()V
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.canhub.cropper.BitmapLoadingWorkerJob$start$1"
    f = "BitmapLoadingWorkerJob.kt"
    i = {}
    l = {
        0x2d,
        0x3a
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/canhub/cropper/BitmapLoadingWorkerJob;


# direct methods
.method constructor <init>(Lcom/canhub/cropper/BitmapLoadingWorkerJob;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/canhub/cropper/BitmapLoadingWorkerJob;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapLoadingWorkerJob;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance v0, Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;

    iget-object v1, p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapLoadingWorkerJob;

    invoke-direct {v0, v1, p2}, Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;-><init>(Lcom/canhub/cropper/BitmapLoadingWorkerJob;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 37
    iget v1, p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;->label:I

    packed-switch v1, :pswitch_data_0

    .line 60
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    .end local v0    # "this":Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object v1, p0

    .local v1, "this":Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 57
    :catch_0
    move-exception v2

    goto/16 :goto_1

    .line 37
    .end local v1    # "this":Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .restart local v1    # "this":Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 38
    .local v2, "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    nop

    .line 39
    :try_start_1
    invoke-static {v2}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 41
    sget-object v3, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v4, v1, Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapLoadingWorkerJob;

    invoke-static {v4}, Lcom/canhub/cropper/BitmapLoadingWorkerJob;->access$getContext$p(Lcom/canhub/cropper/BitmapLoadingWorkerJob;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, v1, Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapLoadingWorkerJob;

    invoke-virtual {v5}, Lcom/canhub/cropper/BitmapLoadingWorkerJob;->getUri()Landroid/net/Uri;

    move-result-object v5

    iget-object v6, v1, Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapLoadingWorkerJob;

    invoke-static {v6}, Lcom/canhub/cropper/BitmapLoadingWorkerJob;->access$getWidth$p(Lcom/canhub/cropper/BitmapLoadingWorkerJob;)I

    move-result v6

    iget-object v7, v1, Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapLoadingWorkerJob;

    invoke-static {v7}, Lcom/canhub/cropper/BitmapLoadingWorkerJob;->access$getHeight$p(Lcom/canhub/cropper/BitmapLoadingWorkerJob;)I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/canhub/cropper/BitmapUtils;->decodeSampledBitmap(Landroid/content/Context;Landroid/net/Uri;II)Lcom/canhub/cropper/BitmapUtils$BitmapSampled;

    move-result-object v3

    .line 40
    nop

    .line 42
    .local v3, "decodeResult":Lcom/canhub/cropper/BitmapUtils$BitmapSampled;
    invoke-static {v2}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 44
    .end local v2    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    sget-object v2, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual {v3}, Lcom/canhub/cropper/BitmapUtils$BitmapSampled;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, v1, Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapLoadingWorkerJob;

    invoke-static {v5}, Lcom/canhub/cropper/BitmapLoadingWorkerJob;->access$getContext$p(Lcom/canhub/cropper/BitmapLoadingWorkerJob;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, v1, Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapLoadingWorkerJob;

    invoke-virtual {v6}, Lcom/canhub/cropper/BitmapLoadingWorkerJob;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Lcom/canhub/cropper/BitmapUtils;->orientateBitmapByExif(Landroid/graphics/Bitmap;Landroid/content/Context;Landroid/net/Uri;)Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;

    move-result-object v2

    .line 43
    nop

    .line 45
    .local v2, "orientateResult":Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;
    iget-object v4, v1, Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapLoadingWorkerJob;

    .line 46
    new-instance v12, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;

    .line 47
    iget-object v5, v1, Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapLoadingWorkerJob;

    invoke-virtual {v5}, Lcom/canhub/cropper/BitmapLoadingWorkerJob;->getUri()Landroid/net/Uri;

    move-result-object v6

    .line 48
    invoke-virtual {v2}, Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 49
    invoke-virtual {v3}, Lcom/canhub/cropper/BitmapUtils$BitmapSampled;->getSampleSize()I

    move-result v8

    .line 50
    .end local v3    # "decodeResult":Lcom/canhub/cropper/BitmapUtils$BitmapSampled;
    invoke-virtual {v2}, Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;->getDegrees()I

    move-result v9

    .line 51
    invoke-virtual {v2}, Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;->getFlipHorizontally()Z

    move-result v10

    .line 52
    invoke-virtual {v2}, Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;->getFlipVertically()Z

    move-result v11

    .line 46
    .end local v2    # "orientateResult":Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;
    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;IIZZ)V

    move-object v2, v1

    check-cast v2, Lkotlin/coroutines/Continuation;

    .line 45
    const/4 v3, 0x1

    iput v3, v1, Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;->label:I

    invoke-static {v4, v12, v2}, Lcom/canhub/cropper/BitmapLoadingWorkerJob;->access$onPostExecute(Lcom/canhub/cropper/BitmapLoadingWorkerJob;Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v2, v0, :cond_0

    .line 37
    return-object v0

    .line 45
    :cond_0
    :goto_0
    goto :goto_3

    .line 58
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    iget-object v3, v1, Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapLoadingWorkerJob;

    new-instance v4, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;

    iget-object v5, v1, Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapLoadingWorkerJob;

    invoke-virtual {v5}, Lcom/canhub/cropper/BitmapLoadingWorkerJob;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;-><init>(Landroid/net/Uri;Ljava/lang/Exception;)V

    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    const/4 v6, 0x2

    iput v6, v1, Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;->label:I

    invoke-static {v3, v4, v5}, Lcom/canhub/cropper/BitmapLoadingWorkerJob;->access$onPostExecute(Lcom/canhub/cropper/BitmapLoadingWorkerJob;Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "e":Ljava/lang/Exception;
    if-ne v2, v0, :cond_1

    .line 37
    return-object v0

    .line 58
    :cond_1
    move-object v0, v1

    .line 60
    .end local v1    # "this":Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;
    .restart local v0    # "this":Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;
    :goto_2
    move-object v1, v0

    .end local v0    # "this":Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;
    .restart local v1    # "this":Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;
    :cond_2
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
