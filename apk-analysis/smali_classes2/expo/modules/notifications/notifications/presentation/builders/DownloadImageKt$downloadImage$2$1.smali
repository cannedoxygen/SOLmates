.class final Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DownloadImage.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt;->downloadImage(Landroid/net/Uri;JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Landroid/graphics/Bitmap;",
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
        "Landroid/graphics/Bitmap;",
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
    c = "expo.modules.notifications.notifications.presentation.builders.DownloadImageKt$downloadImage$2$1"
    f = "DownloadImage.kt"
    i = {}
    l = {
        0xe
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $connectTimeout:J

.field final synthetic $imageUrl:Landroid/net/Uri;

.field final synthetic $readTimeout:J

.field label:I


# direct methods
.method constructor <init>(Landroid/net/Uri;JJLkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "JJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$2$1;->$imageUrl:Landroid/net/Uri;

    iput-wide p2, p0, Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$2$1;->$connectTimeout:J

    iput-wide p4, p0, Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$2$1;->$readTimeout:J

    const/4 v0, 0x2

    invoke-direct {p0, v0, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
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

    new-instance v7, Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$2$1;

    iget-object v1, p0, Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$2$1;->$imageUrl:Landroid/net/Uri;

    iget-wide v2, p0, Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$2$1;->$connectTimeout:J

    iget-wide v4, p0, Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$2$1;->$readTimeout:J

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$2$1;-><init>(Landroid/net/Uri;JJLkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/coroutines/Continuation;

    return-object v7
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$2$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 13
    iget v1, p0, Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$2$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$2$1;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p1

    goto :goto_0

    .end local v0    # "this":Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$2$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 14
    .local v1, "this":Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$2$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v10, Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$2$1$1;

    iget-object v4, v1, Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$2$1;->$imageUrl:Landroid/net/Uri;

    iget-wide v5, v1, Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$2$1;->$connectTimeout:J

    iget-wide v7, v1, Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$2$1;->$readTimeout:J

    const/4 v9, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$2$1$1;-><init>(Landroid/net/Uri;JJLkotlin/coroutines/Continuation;)V

    check-cast v10, Lkotlin/jvm/functions/Function2;

    move-object v3, v1

    check-cast v3, Lkotlin/coroutines/Continuation;

    const/4 v4, 0x1

    iput v4, v1, Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$2$1;->label:I

    invoke-static {v2, v10, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_0

    .line 13
    return-object v0

    .line 14
    :cond_0
    move-object v0, v1

    .end local v1    # "this":Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$2$1;
    .restart local v0    # "this":Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$2$1;
    :goto_0
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
