.class final Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BitmapCroppingWorkerJob.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.canhub.cropper.BitmapCroppingWorkerJob$start$1$1"
    f = "BitmapCroppingWorkerJob.kt"
    i = {}
    l = {
        0x5d
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $bitmapSampled:Lcom/canhub/cropper/BitmapUtils$BitmapSampled;

.field final synthetic $resizedBitmap:Landroid/graphics/Bitmap;

.field label:I

.field final synthetic this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;


# direct methods
.method constructor <init>(Lcom/canhub/cropper/BitmapCroppingWorkerJob;Landroid/graphics/Bitmap;Lcom/canhub/cropper/BitmapUtils$BitmapSampled;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/canhub/cropper/BitmapCroppingWorkerJob;",
            "Landroid/graphics/Bitmap;",
            "Lcom/canhub/cropper/BitmapUtils$BitmapSampled;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    iput-object p2, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;->$resizedBitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;->$bitmapSampled:Lcom/canhub/cropper/BitmapUtils$BitmapSampled;

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

    new-instance v0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;

    iget-object v1, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    iget-object v2, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;->$resizedBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;->$bitmapSampled:Lcom/canhub/cropper/BitmapUtils$BitmapSampled;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;-><init>(Lcom/canhub/cropper/BitmapCroppingWorkerJob;Landroid/graphics/Bitmap;Lcom/canhub/cropper/BitmapUtils$BitmapSampled;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 84
    iget v1, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;->label:I

    packed-switch v1, :pswitch_data_0

    .line 99
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "this":Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 85
    .local v1, "this":Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    sget-object v2, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    .line 86
    iget-object v3, v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v3}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getContext$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)Landroid/content/Context;

    move-result-object v3

    .line 87
    iget-object v4, v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;->$resizedBitmap:Landroid/graphics/Bitmap;

    .line 88
    iget-object v5, v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v5}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getSaveCompressFormat$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v5

    .line 89
    iget-object v6, v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v6}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getSaveCompressQuality$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)I

    move-result v6

    .line 90
    iget-object v7, v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v7}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getCustomOutputUri$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)Landroid/net/Uri;

    move-result-object v7

    .line 85
    invoke-virtual/range {v2 .. v7}, Lcom/canhub/cropper/BitmapUtils;->writeBitmapToUri(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ILandroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 92
    .local v2, "newUri":Landroid/net/Uri;
    iget-object v3, v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;->$resizedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 93
    iget-object v3, v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    .line 94
    new-instance v4, Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;

    .line 95
    nop

    .line 96
    .end local v2    # "newUri":Landroid/net/Uri;
    iget-object v5, v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;->$bitmapSampled:Lcom/canhub/cropper/BitmapUtils$BitmapSampled;

    invoke-virtual {v5}, Lcom/canhub/cropper/BitmapUtils$BitmapSampled;->getSampleSize()I

    move-result v5

    .line 94
    invoke-direct {v4, v2, v5}, Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;-><init>(Landroid/net/Uri;I)V

    move-object v2, v1

    check-cast v2, Lkotlin/coroutines/Continuation;

    .line 93
    const/4 v5, 0x1

    iput v5, v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;->label:I

    invoke-static {v3, v4, v2}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$onPostExecute(Lcom/canhub/cropper/BitmapCroppingWorkerJob;Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_0

    .line 84
    return-object v0

    .line 93
    :cond_0
    move-object v0, v1

    .line 99
    .end local v1    # "this":Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;
    .restart local v0    # "this":Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;
    :goto_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
