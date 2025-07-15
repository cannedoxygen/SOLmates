.class final Lexpo/modules/fetch/NativeResponse$onResponse$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NativeResponse.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/fetch/NativeResponse;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
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
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "expo.modules.fetch.NativeResponse$onResponse$1"
    f = "NativeResponse.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $response:Lokhttp3/Response;

.field label:I

.field final synthetic this$0:Lexpo/modules/fetch/NativeResponse;


# direct methods
.method constructor <init>(Lokhttp3/Response;Lexpo/modules/fetch/NativeResponse;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            "Lexpo/modules/fetch/NativeResponse;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/fetch/NativeResponse$onResponse$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/fetch/NativeResponse$onResponse$1;->$response:Lokhttp3/Response;

    iput-object p2, p0, Lexpo/modules/fetch/NativeResponse$onResponse$1;->this$0:Lexpo/modules/fetch/NativeResponse;

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

    new-instance v0, Lexpo/modules/fetch/NativeResponse$onResponse$1;

    iget-object v1, p0, Lexpo/modules/fetch/NativeResponse$onResponse$1;->$response:Lokhttp3/Response;

    iget-object v2, p0, Lexpo/modules/fetch/NativeResponse$onResponse$1;->this$0:Lexpo/modules/fetch/NativeResponse;

    invoke-direct {v0, v1, v2, p2}, Lexpo/modules/fetch/NativeResponse$onResponse$1;-><init>(Lokhttp3/Response;Lexpo/modules/fetch/NativeResponse;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/fetch/NativeResponse$onResponse$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lexpo/modules/fetch/NativeResponse$onResponse$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lexpo/modules/fetch/NativeResponse$onResponse$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lexpo/modules/fetch/NativeResponse$onResponse$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 128
    iget v0, p0, Lexpo/modules/fetch/NativeResponse$onResponse$1;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p0

    .line 129
    .local v0, "this":Lexpo/modules/fetch/NativeResponse$onResponse$1;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v1, v0, Lexpo/modules/fetch/NativeResponse$onResponse$1;->$response:Lokhttp3/Response;

    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 130
    .local v1, "stream":Lokio/BufferedSource;
    :cond_0
    iget-object v2, v0, Lexpo/modules/fetch/NativeResponse$onResponse$1;->this$0:Lexpo/modules/fetch/NativeResponse;

    invoke-static {v2, v1}, Lexpo/modules/fetch/NativeResponse;->access$pumpResponseBodyStream(Lexpo/modules/fetch/NativeResponse;Lokio/BufferedSource;)V

    .line 131
    .end local v1    # "stream":Lokio/BufferedSource;
    iget-object v1, v0, Lexpo/modules/fetch/NativeResponse$onResponse$1;->$response:Lokhttp3/Response;

    invoke-virtual {v1}, Lokhttp3/Response;->close()V

    .line 133
    iget-object v1, v0, Lexpo/modules/fetch/NativeResponse$onResponse$1;->this$0:Lexpo/modules/fetch/NativeResponse;

    invoke-static {v1}, Lexpo/modules/fetch/NativeResponse;->access$getState(Lexpo/modules/fetch/NativeResponse;)Lexpo/modules/fetch/ResponseState;

    move-result-object v1

    sget-object v2, Lexpo/modules/fetch/ResponseState;->BODY_STREAMING_STARTED:Lexpo/modules/fetch/ResponseState;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 134
    iget-object v1, v0, Lexpo/modules/fetch/NativeResponse$onResponse$1;->this$0:Lexpo/modules/fetch/NativeResponse;

    const-string v2, "didComplete"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Lexpo/modules/fetch/NativeResponse;->emit(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    :cond_1
    iget-object v1, v0, Lexpo/modules/fetch/NativeResponse$onResponse$1;->this$0:Lexpo/modules/fetch/NativeResponse;

    sget-object v2, Lexpo/modules/fetch/ResponseState;->BODY_COMPLETED:Lexpo/modules/fetch/ResponseState;

    invoke-static {v1, v2}, Lexpo/modules/fetch/NativeResponse;->access$setState(Lexpo/modules/fetch/NativeResponse;Lexpo/modules/fetch/ResponseState;)V

    .line 137
    iget-object v1, v0, Lexpo/modules/fetch/NativeResponse$onResponse$1;->this$0:Lexpo/modules/fetch/NativeResponse;

    const-string v2, "readyForJSFinalization"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lexpo/modules/fetch/NativeResponse;->emit(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 129
    :cond_2
    :goto_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
