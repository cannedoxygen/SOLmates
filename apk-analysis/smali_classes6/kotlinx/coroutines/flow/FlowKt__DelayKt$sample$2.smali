.class final Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Delay.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__DelayKt;->sample(Lkotlinx/coroutines/flow/Flow;J)Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "-TT;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2\n+ 2 Select.kt\nkotlinx/coroutines/selects/SelectKt\n*L\n1#1,407:1\n54#2,5:408\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2\n*L\n278#1:408,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0005H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lkotlinx/coroutines/CoroutineScope;",
        "downstream",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.flow.FlowKt__DelayKt$sample$2"
    f = "Delay.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0x19c
    }
    m = "invokeSuspend"
    n = {
        "downstream",
        "values",
        "lastValue",
        "ticker"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3"
    }
.end annotation


# instance fields
.field final synthetic $periodMillis:J

.field final synthetic $this_sample:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "TT;>;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(JLkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlinx/coroutines/flow/Flow<",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2;->$periodMillis:J

    iput-object p3, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2;->$this_sample:Lkotlinx/coroutines/flow/Flow;

    const/4 v0, 0x3

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2;

    iget-wide v1, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2;->$periodMillis:J

    iget-object v3, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2;->$this_sample:Lkotlinx/coroutines/flow/Flow;

    invoke-direct {v0, v1, v2, v3, p3}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2;-><init>(JLkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2;->L$1:Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 271
    move-object/from16 v1, p0

    iget v2, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2;->label:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v2, p0

    .local v2, "this":Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2;
    move-object/from16 v4, p1

    .local v4, "$result":Ljava/lang/Object;
    const/4 v5, 0x0

    .local v5, "$i$f$select":I
    const/4 v6, 0x0

    .local v6, "$i$a$-run-SelectKt$select$2$iv":I
    iget-object v7, v2, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2;->L$3:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    .local v7, "ticker":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v8, v2, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2;->L$2:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    .local v8, "lastValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v9, v2, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2;->L$1:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ReceiveChannel;

    .local v9, "values":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v10, v2, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2;->L$0:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/flow/FlowCollector;

    .local v10, "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    .end local v2    # "this":Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2;
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v5    # "$i$f$select":I
    .end local v6    # "$i$a$-run-SelectKt$select$2$iv":I
    .end local v7    # "ticker":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v8    # "lastValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v9    # "values":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v10    # "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .restart local v2    # "this":Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2;
    move-object/from16 v4, p1

    .restart local v4    # "$result":Ljava/lang/Object;
    iget-object v5, v2, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/CoroutineScope;

    .local v5, "$this$scopedFlow":Lkotlinx/coroutines/CoroutineScope;
    iget-object v6, v2, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2;->L$1:Ljava/lang/Object;

    move-object v12, v6

    check-cast v12, Lkotlinx/coroutines/flow/FlowCollector;

    .line 272
    .local v12, "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    new-instance v6, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2$values$1;

    iget-object v7, v2, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2;->$this_sample:Lkotlinx/coroutines/flow/Flow;

    invoke-direct {v6, v7, v3}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2$values$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)V

    move-object v9, v6

    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object v6, v5

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/channels/ProduceKt;->produce$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object v6

    .line 275
    .local v6, "values":Lkotlinx/coroutines/channels/ReceiveChannel;
    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 276
    .local v7, "lastValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-wide v8, v2, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2;->$periodMillis:J

    invoke-static {v5, v8, v9}, Lkotlinx/coroutines/flow/FlowKt;->fixedPeriodTicker(Lkotlinx/coroutines/CoroutineScope;J)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object v8

    move-object v9, v6

    move-object v10, v12

    move-object/from16 v16, v8

    move-object v8, v7

    move-object/from16 v7, v16

    .line 277
    .end local v5    # "$this$scopedFlow":Lkotlinx/coroutines/CoroutineScope;
    .end local v6    # "values":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v12    # "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    .local v7, "ticker":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v8    # "lastValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v9    # "values":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v10    # "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    :goto_0
    iget-object v5, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v6, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->DONE:Lkotlinx/coroutines/internal/Symbol;

    if-eq v5, v6, :cond_1

    .line 278
    const/4 v5, 0x0

    .line 408
    .local v5, "$i$f$select":I
    new-instance v6, Lkotlinx/coroutines/selects/SelectImplementation;

    invoke-interface {v2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v11

    invoke-direct {v6, v11}, Lkotlinx/coroutines/selects/SelectImplementation;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    .local v6, "$this$select_u24lambda_u240$iv":Lkotlinx/coroutines/selects/SelectImplementation;
    const/4 v11, 0x0

    .line 409
    .local v11, "$i$a$-run-SelectKt$select$2$iv":I
    move-object v12, v6

    check-cast v12, Lkotlinx/coroutines/selects/SelectBuilder;

    .local v12, "$this$invokeSuspend_u24lambda_u240":Lkotlinx/coroutines/selects/SelectBuilder;
    const/4 v13, 0x0

    .line 279
    .local v13, "$i$a$-select-FlowKt__DelayKt$sample$2$1":I
    invoke-interface {v9}, Lkotlinx/coroutines/channels/ReceiveChannel;->getOnReceiveCatching()Lkotlinx/coroutines/selects/SelectClause1;

    move-result-object v14

    new-instance v15, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2$1$1;

    invoke-direct {v15, v8, v7, v3}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)V

    check-cast v15, Lkotlin/jvm/functions/Function2;

    invoke-interface {v12, v14, v15}, Lkotlinx/coroutines/selects/SelectBuilder;->invoke(Lkotlinx/coroutines/selects/SelectClause1;Lkotlin/jvm/functions/Function2;)V

    .line 290
    invoke-interface {v7}, Lkotlinx/coroutines/channels/ReceiveChannel;->getOnReceive()Lkotlinx/coroutines/selects/SelectClause1;

    move-result-object v14

    new-instance v15, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2$1$2;

    invoke-direct {v15, v8, v10, v3}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2$1$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)V

    check-cast v15, Lkotlin/jvm/functions/Function2;

    invoke-interface {v12, v14, v15}, Lkotlinx/coroutines/selects/SelectBuilder;->invoke(Lkotlinx/coroutines/selects/SelectClause1;Lkotlin/jvm/functions/Function2;)V

    .line 295
    nop

    .line 409
    .end local v12    # "$this$invokeSuspend_u24lambda_u240":Lkotlinx/coroutines/selects/SelectBuilder;
    .end local v13    # "$i$a$-select-FlowKt__DelayKt$sample$2$1":I
    nop

    .line 412
    iput-object v10, v2, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2;->L$0:Ljava/lang/Object;

    iput-object v9, v2, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2;->L$1:Ljava/lang/Object;

    iput-object v8, v2, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2;->L$2:Ljava/lang/Object;

    iput-object v7, v2, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2;->L$3:Ljava/lang/Object;

    const/4 v12, 0x1

    iput v12, v2, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2;->label:I

    invoke-virtual {v6, v2}, Lkotlinx/coroutines/selects/SelectImplementation;->doSelect(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "$this$select_u24lambda_u240$iv":Lkotlinx/coroutines/selects/SelectImplementation;
    if-ne v6, v0, :cond_0

    .line 271
    return-object v0

    .line 412
    :cond_0
    move v6, v11

    .end local v11    # "$i$a$-run-SelectKt$select$2$iv":I
    .local v6, "$i$a$-run-SelectKt$select$2$iv":I
    :goto_1
    nop

    .line 408
    .end local v6    # "$i$a$-run-SelectKt$select$2$iv":I
    nop

    .end local v5    # "$i$f$select":I
    goto :goto_0

    .line 297
    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
