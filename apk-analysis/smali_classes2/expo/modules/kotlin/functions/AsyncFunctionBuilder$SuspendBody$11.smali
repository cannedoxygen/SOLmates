.class public final Lexpo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$11;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AsyncFunctionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;->SuspendBody(Lkotlin/jvm/functions/Function6;)Lexpo/modules/kotlin/functions/SuspendFunctionComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "[",
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAsyncFunctionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncFunctionBuilder.kt\nexpo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$11\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n*L\n1#1,269:1\n36#2,4:270\n*S KotlinDebug\n*F\n+ 1 AsyncFunctionBuilder.kt\nexpo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$11\n*L\n64#1:270,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001\"\u0006\u0008\u0001\u0010\u0003\u0018\u0001\"\u0006\u0008\u0002\u0010\u0004\u0018\u0001\"\u0006\u0008\u0003\u0010\u0005\u0018\u0001\"\u0006\u0008\u0004\u0010\u0006\u0018\u0001\"\u0006\u0008\u0005\u0010\u0007\u0018\u0001*\u00020\u00082\u0010\u0010\t\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010\nH\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "P0",
        "P1",
        "P2",
        "P3",
        "P4",
        "Lkotlinx/coroutines/CoroutineScope;",
        "<name for destructuring parameter 0>",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0xb0
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "expo.modules.kotlin.functions.AsyncFunctionBuilder$SuspendBody$11"
    f = "AsyncFunctionBuilder.kt"
    i = {}
    l = {
        0x41
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $block:Lkotlin/jvm/functions/Function6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function6<",
            "TP0;TP1;TP2;TP3;TP4;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function6;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function6<",
            "-TP0;-TP1;-TP2;-TP3;-TP4;-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$11;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$11;->$block:Lkotlin/jvm/functions/Function6;

    const/4 v0, 0x3

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, [Ljava/lang/Object;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$11;->invoke(Lkotlinx/coroutines/CoroutineScope;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "[",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$11;

    iget-object v1, p0, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$11;->$block:Lkotlin/jvm/functions/Function6;

    invoke-direct {v0, v1, p3}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$11;-><init>(Lkotlin/jvm/functions/Function6;Lkotlin/coroutines/Continuation;)V

    iput-object p2, v0, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$11;->L$0:Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$11;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 63
    iget v1, p0, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$11;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lexpo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$11;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p1

    goto :goto_0

    .end local v0    # "this":Lexpo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$11;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, p0

    .local v8, "this":Lexpo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$11;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v1, v8, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$11;->L$0:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v9, v1, v2

    .local v9, "p0":Ljava/lang/Object;
    const/4 v2, 0x1

    aget-object v10, v1, v2

    .local v10, "p1":Ljava/lang/Object;
    const/4 v3, 0x2

    aget-object v11, v1, v3

    .local v11, "p2":Ljava/lang/Object;
    const/4 v3, 0x3

    aget-object v12, v1, v3

    .local v12, "p3":Ljava/lang/Object;
    const/4 v3, 0x4

    aget-object v13, v1, v3

    .line 64
    .local v13, "p4":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 270
    .local v1, "$i$f$enforceType":I
    nop

    .line 273
    nop

    .line 65
    .end local v1    # "$i$f$enforceType":I
    iget-object v1, v8, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$11;->$block:Lkotlin/jvm/functions/Function6;

    iput v2, v8, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$11;->label:I

    move-object v2, v9

    move-object v3, v10

    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    move-object v7, v8

    invoke-interface/range {v1 .. v7}, Lkotlin/jvm/functions/Function6;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v9    # "p0":Ljava/lang/Object;
    .end local v10    # "p1":Ljava/lang/Object;
    .end local v11    # "p2":Ljava/lang/Object;
    .end local v12    # "p3":Ljava/lang/Object;
    .end local v13    # "p4":Ljava/lang/Object;
    if-ne v1, v0, :cond_0

    .line 63
    return-object v0

    .line 65
    :cond_0
    move-object v0, v8

    .end local v8    # "this":Lexpo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$11;
    .restart local v0    # "this":Lexpo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$11;
    :goto_0
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend$$forInline(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "$result"    # Ljava/lang/Object;

    iget-object v0, p0, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$11;->L$0:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 63
    const/4 v1, 0x0

    aget-object v3, v0, v1

    .local v3, "p0":Ljava/lang/Object;
    const/4 v1, 0x1

    aget-object v4, v0, v1

    .local v4, "p1":Ljava/lang/Object;
    const/4 v1, 0x2

    aget-object v5, v0, v1

    .local v5, "p2":Ljava/lang/Object;
    const/4 v1, 0x3

    aget-object v6, v0, v1

    .local v6, "p3":Ljava/lang/Object;
    const/4 v1, 0x4

    aget-object v7, v0, v1

    .line 64
    .local v7, "p4":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 270
    .local v0, "$i$f$enforceType":I
    nop

    .line 273
    nop

    .line 65
    .end local v0    # "$i$f$enforceType":I
    iget-object v2, p0, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$11;->$block:Lkotlin/jvm/functions/Function6;

    move-object v8, p0

    invoke-interface/range {v2 .. v8}, Lkotlin/jvm/functions/Function6;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
