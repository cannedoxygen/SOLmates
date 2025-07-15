.class final Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BitmapCroppingWorkerJob.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/canhub/cropper/BitmapCroppingWorkerJob;->start()V
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
    c = "com.canhub.cropper.BitmapCroppingWorkerJob$start$1"
    f = "BitmapCroppingWorkerJob.kt"
    i = {}
    l = {
        0x4d,
        0x66
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;


# direct methods
.method constructor <init>(Lcom/canhub/cropper/BitmapCroppingWorkerJob;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/canhub/cropper/BitmapCroppingWorkerJob;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

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

    new-instance v0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;

    iget-object v1, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-direct {v0, v1, p2}, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;-><init>(Lcom/canhub/cropper/BitmapCroppingWorkerJob;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 42
    move-object/from16 v2, p0

    iget v0, v2, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->label:I

    packed-switch v0, :pswitch_data_0

    .line 104
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :pswitch_0
    move-object/from16 v0, p0

    .local v0, "this":Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;
    move-object/from16 v1, p1

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    .end local v0    # "this":Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;
    .end local v1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object/from16 v3, p0

    .local v3, "this":Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;
    move-object/from16 v4, p1

    .local v4, "$result":Ljava/lang/Object;
    :try_start_0
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 101
    :catch_0
    move-exception v0

    move-object/from16 v21, v3

    move-object v3, v0

    move-object/from16 v0, v21

    goto/16 :goto_2

    .line 42
    .end local v3    # "this":Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;
    .end local v4    # "$result":Ljava/lang/Object;
    :pswitch_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v3, p0

    .restart local v3    # "this":Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;
    move-object/from16 v4, p1

    .restart local v4    # "$result":Ljava/lang/Object;
    iget-object v0, v3, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 43
    .local v0, "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    nop

    .line 44
    :try_start_1
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 46
    nop

    .line 47
    iget-object v5, v3, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-virtual {v5}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->getUri()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 48
    sget-object v7, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    .line 49
    iget-object v5, v3, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v5}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getContext$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)Landroid/content/Context;

    move-result-object v8

    .line 50
    iget-object v5, v3, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-virtual {v5}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->getUri()Landroid/net/Uri;

    move-result-object v9

    .line 51
    iget-object v5, v3, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v5}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getCropPoints$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)[F

    move-result-object v10

    .line 52
    iget-object v5, v3, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v5}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getDegreesRotated$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)I

    move-result v11

    .line 53
    iget-object v5, v3, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v5}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getOrgWidth$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)I

    move-result v12

    .line 54
    iget-object v5, v3, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v5}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getOrgHeight$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)I

    move-result v13

    .line 55
    iget-object v5, v3, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v5}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getFixAspectRatio$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)Z

    move-result v14

    .line 56
    iget-object v5, v3, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v5}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getAspectRatioX$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)I

    move-result v15

    .line 57
    iget-object v5, v3, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v5}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getAspectRatioY$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)I

    move-result v16

    .line 58
    iget-object v5, v3, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v5}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getReqWidth$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)I

    move-result v17

    .line 59
    iget-object v5, v3, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v5}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getReqHeight$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)I

    move-result v18

    .line 60
    iget-object v5, v3, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v5}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getFlipHorizontally$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)Z

    move-result v19

    .line 61
    iget-object v5, v3, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v5}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getFlipVertically$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)Z

    move-result v20

    .line 48
    invoke-virtual/range {v7 .. v20}, Lcom/canhub/cropper/BitmapUtils;->cropBitmap(Landroid/content/Context;Landroid/net/Uri;[FIIIZIIIIZZ)Lcom/canhub/cropper/BitmapUtils$BitmapSampled;

    move-result-object v5

    move-object v11, v5

    .local v5, "bitmapSampled":Lcom/canhub/cropper/BitmapUtils$BitmapSampled;
    goto :goto_0

    .line 64
    .end local v5    # "bitmapSampled":Lcom/canhub/cropper/BitmapUtils$BitmapSampled;
    :cond_0
    iget-object v5, v3, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v5}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getBitmap$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 65
    sget-object v7, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    .line 66
    iget-object v5, v3, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v5}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getBitmap$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 67
    iget-object v5, v3, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v5}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getCropPoints$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)[F

    move-result-object v9

    .line 68
    iget-object v5, v3, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v5}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getDegreesRotated$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)I

    move-result v10

    .line 69
    iget-object v5, v3, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v5}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getFixAspectRatio$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)Z

    move-result v11

    .line 70
    iget-object v5, v3, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v5}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getAspectRatioX$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)I

    move-result v12

    .line 71
    iget-object v5, v3, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v5}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getAspectRatioY$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)I

    move-result v13

    .line 72
    iget-object v5, v3, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v5}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getFlipHorizontally$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)Z

    move-result v14

    .line 73
    iget-object v5, v3, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v5}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getFlipVertically$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)Z

    move-result v15

    .line 65
    invoke-virtual/range {v7 .. v15}, Lcom/canhub/cropper/BitmapUtils;->cropBitmapObjectHandleOOM(Landroid/graphics/Bitmap;[FIZIIZZ)Lcom/canhub/cropper/BitmapUtils$BitmapSampled;

    move-result-object v5

    move-object v11, v5

    .line 82
    .local v11, "bitmapSampled":Lcom/canhub/cropper/BitmapUtils$BitmapSampled;
    :goto_0
    sget-object v5, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual {v11}, Lcom/canhub/cropper/BitmapUtils$BitmapSampled;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    iget-object v8, v3, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v8}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getReqWidth$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)I

    move-result v8

    iget-object v9, v3, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v9}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getReqHeight$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)I

    move-result v9

    iget-object v10, v3, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-static {v10}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$getOptions$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    move-result-object v10

    invoke-virtual {v5, v7, v8, v9, v10}, Lcom/canhub/cropper/BitmapUtils;->resizeBitmap(Landroid/graphics/Bitmap;IILcom/canhub/cropper/CropImageView$RequestSizeOptions;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 81
    move-object v12, v5

    .line 84
    .local v12, "resizedBitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lkotlin/coroutines/CoroutineContext;

    new-instance v5, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;

    iget-object v8, v3, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-direct {v5, v8, v12, v11, v6}, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;-><init>(Lcom/canhub/cropper/BitmapCroppingWorkerJob;Landroid/graphics/Bitmap;Lcom/canhub/cropper/BitmapUtils$BitmapSampled;Lkotlin/coroutines/Continuation;)V

    move-object v8, v5

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object v5, v0

    move-object v6, v7

    move-object v7, v13

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_4

    .line 77
    .end local v0    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    .end local v11    # "bitmapSampled":Lcom/canhub/cropper/BitmapUtils$BitmapSampled;
    .end local v12    # "resizedBitmap":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v0, v3, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    new-instance v5, Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;-><init>(Landroid/graphics/Bitmap;I)V

    move-object v6, v3

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput v7, v3, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->label:I

    invoke-static {v0, v5, v6}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$onPostExecute(Lcom/canhub/cropper/BitmapCroppingWorkerJob;Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_2

    .line 42
    return-object v1

    .line 78
    :cond_2
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 102
    .local v0, "this":Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    iget-object v5, v0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->this$0:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    new-instance v6, Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;

    const/4 v7, 0x0

    invoke-direct {v6, v3, v7}, Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;-><init>(Ljava/lang/Exception;Z)V

    move-object v7, v0

    check-cast v7, Lkotlin/coroutines/Continuation;

    const/4 v8, 0x2

    iput v8, v0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->label:I

    invoke-static {v5, v6, v7}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->access$onPostExecute(Lcom/canhub/cropper/BitmapCroppingWorkerJob;Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "e":Ljava/lang/Exception;
    if-ne v3, v1, :cond_3

    .line 42
    return-object v1

    .line 102
    :cond_3
    move-object v1, v4

    .line 104
    .end local v4    # "$result":Ljava/lang/Object;
    .restart local v1    # "$result":Ljava/lang/Object;
    :goto_3
    move-object v3, v0

    move-object v4, v1

    .end local v0    # "this":Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;
    .end local v1    # "$result":Ljava/lang/Object;
    .local v3, "this":Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;
    .restart local v4    # "$result":Ljava/lang/Object;
    :cond_4
    :goto_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
