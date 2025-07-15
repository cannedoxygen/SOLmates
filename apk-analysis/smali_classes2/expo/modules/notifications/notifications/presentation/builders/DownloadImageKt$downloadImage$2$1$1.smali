.class final Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$2$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DownloadImage.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "expo.modules.notifications.notifications.presentation.builders.DownloadImageKt$downloadImage$2$1$1"
    f = "DownloadImage.kt"
    i = {}
    l = {}
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
            "Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$2$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$2$1$1;->$imageUrl:Landroid/net/Uri;

    iput-wide p2, p0, Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$2$1$1;->$connectTimeout:J

    iput-wide p4, p0, Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$2$1$1;->$readTimeout:J

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

    new-instance v7, Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$2$1$1;

    iget-object v1, p0, Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$2$1$1;->$imageUrl:Landroid/net/Uri;

    iget-wide v2, p0, Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$2$1$1;->$connectTimeout:J

    iget-wide v4, p0, Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$2$1$1;->$readTimeout:J

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$2$1$1;-><init>(Landroid/net/Uri;JJLkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/coroutines/Continuation;

    return-object v7
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$2$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$2$1$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 14
    iget v0, p0, Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$2$1$1;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p0

    .line 15
    .local v0, "this":Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$2$1$1;
    .local p1, "$result":Ljava/lang/Object;
    new-instance v1, Ljava/net/URL;

    iget-object v2, v0, Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$2$1$1;->$imageUrl:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 16
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 17
    .local v2, "connection":Ljava/net/URLConnection;
    iget-wide v3, v0, Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$2$1$1;->$connectTimeout:J

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 18
    iget-wide v3, v0, Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt$downloadImage$2$1$1;->$readTimeout:J

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 19
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
