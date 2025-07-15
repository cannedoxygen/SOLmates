.class final Lexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SuspendFunctionComponent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/kotlin/functions/SuspendFunctionComponent;->attachToJSObject(Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;Ljava/lang/String;)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSuspendFunctionComponent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuspendFunctionComponent.kt\nexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1\n+ 2 ExceptionDecorator.kt\nexpo/modules/kotlin/exception/ExceptionDecoratorKt\n+ 3 CodedException.kt\nexpo/modules/kotlin/exception/CodedExceptionKt\n*L\n1#1,62:1\n5#2,4:63\n11#3,6:67\n11#3,6:73\n*S KotlinDebug\n*F\n+ 1 SuspendFunctionComponent.kt\nexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1\n*L\n44#1:63,4\n44#1:67,6\n56#1:73,6\n*E\n"
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
    c = "expo.modules.kotlin.functions.SuspendFunctionComponent$attachToJSObject$2$1"
    f = "SuspendFunctionComponent.kt"
    i = {
        0x0
    }
    l = {
        0x2f
    }
    m = "invokeSuspend"
    n = {
        "$this$launch"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $appContext:Lexpo/modules/kotlin/AppContext;

.field final synthetic $args:[Ljava/lang/Object;

.field final synthetic $moduleName:Ljava/lang/String;

.field final synthetic $promiseImpl:Lexpo/modules/kotlin/jni/PromiseImpl;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lexpo/modules/kotlin/functions/SuspendFunctionComponent;


# direct methods
.method constructor <init>(Lexpo/modules/kotlin/jni/PromiseImpl;Lexpo/modules/kotlin/functions/SuspendFunctionComponent;Ljava/lang/String;[Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/jni/PromiseImpl;",
            "Lexpo/modules/kotlin/functions/SuspendFunctionComponent;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "Lexpo/modules/kotlin/AppContext;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1;->$promiseImpl:Lexpo/modules/kotlin/jni/PromiseImpl;

    iput-object p2, p0, Lexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1;->this$0:Lexpo/modules/kotlin/functions/SuspendFunctionComponent;

    iput-object p3, p0, Lexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1;->$moduleName:Ljava/lang/String;

    iput-object p4, p0, Lexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1;->$args:[Ljava/lang/Object;

    iput-object p5, p0, Lexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1;->$appContext:Lexpo/modules/kotlin/AppContext;

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

    new-instance v7, Lexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1;

    iget-object v1, p0, Lexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1;->$promiseImpl:Lexpo/modules/kotlin/jni/PromiseImpl;

    iget-object v2, p0, Lexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1;->this$0:Lexpo/modules/kotlin/functions/SuspendFunctionComponent;

    iget-object v3, p0, Lexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1;->$moduleName:Ljava/lang/String;

    iget-object v4, p0, Lexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1;->$args:[Ljava/lang/Object;

    iget-object v5, p0, Lexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1;->$appContext:Lexpo/modules/kotlin/AppContext;

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1;-><init>(Lexpo/modules/kotlin/jni/PromiseImpl;Lexpo/modules/kotlin/functions/SuspendFunctionComponent;Ljava/lang/String;[Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v7, Lexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlin/coroutines/Continuation;

    return-object v7
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 42
    iget v1, p0, Lexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1;->label:I

    const-string v2, "getCode(...)"

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1;
    .local p1, "$result":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "$i$f$exceptionDecorator":I
    const/4 v3, 0x0

    .local v3, "$i$a$-exceptionDecorator-SuspendFunctionComponent$attachToJSObject$2$1$2":I
    iget-object v4, v0, Lexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lexpo/modules/kotlin/jni/PromiseImpl;

    iget-object v5, v0, Lexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1;->L$2:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v0, Lexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lexpo/modules/kotlin/functions/SuspendFunctionComponent;

    iget-object v7, v0, Lexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/CoroutineScope;

    .local v7, "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v10, v1

    move-object v1, v0

    move-object v0, p1

    goto :goto_0

    .line 65
    .end local v3    # "$i$a$-exceptionDecorator-SuspendFunctionComponent$attachToJSObject$2$1$2":I
    .end local v7    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 42
    .end local v0    # "this":Lexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1;
    .end local v1    # "$i$f$exceptionDecorator":I
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .local v1, "this":Lexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v3, v1, Lexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1;->L$0:Ljava/lang/Object;

    move-object v7, v3

    check-cast v7, Lkotlinx/coroutines/CoroutineScope;

    .line 43
    .restart local v7    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    nop

    .line 44
    :try_start_1
    iget-object v6, v1, Lexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1;->this$0:Lexpo/modules/kotlin/functions/SuspendFunctionComponent;

    iget-object v5, v1, Lexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1;->$moduleName:Ljava/lang/String;

    iget-object v3, v1, Lexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1;->this$0:Lexpo/modules/kotlin/functions/SuspendFunctionComponent;

    iget-object v4, v1, Lexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1;->$args:[Ljava/lang/Object;

    iget-object v8, v1, Lexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1;->$appContext:Lexpo/modules/kotlin/AppContext;

    iget-object v9, v1, Lexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1;->$promiseImpl:Lexpo/modules/kotlin/jni/PromiseImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const/4 v10, 0x0

    .line 63
    .local v10, "$i$f$exceptionDecorator":I
    nop

    .line 64
    const/4 v11, 0x0

    .line 47
    .local v11, "$i$a$-exceptionDecorator-SuspendFunctionComponent$attachToJSObject$2$1$2":I
    :try_start_2
    invoke-static {v3}, Lexpo/modules/kotlin/functions/SuspendFunctionComponent;->access$getBody$p(Lexpo/modules/kotlin/functions/SuspendFunctionComponent;)Lkotlin/jvm/functions/Function3;

    move-result-object v12

    invoke-virtual {v3, v4, v8}, Lexpo/modules/kotlin/functions/SuspendFunctionComponent;->convertArgs([Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)[Ljava/lang/Object;

    move-result-object v3

    iput-object v7, v1, Lexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1;->L$0:Ljava/lang/Object;

    iput-object v6, v1, Lexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1;->L$1:Ljava/lang/Object;

    iput-object v5, v1, Lexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1;->L$2:Ljava/lang/Object;

    iput-object v9, v1, Lexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1;->L$3:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, v1, Lexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1;->label:I

    invoke-interface {v12, v7, v3, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v3, v0, :cond_0

    .line 42
    return-object v0

    .line 47
    :cond_0
    move-object v0, p1

    move-object p1, v3

    move-object v4, v9

    move v3, v11

    .line 42
    .end local v11    # "$i$a$-exceptionDecorator-SuspendFunctionComponent$attachToJSObject$2$1$2":I
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .restart local v3    # "$i$a$-exceptionDecorator-SuspendFunctionComponent$attachToJSObject$2$1$2":I
    :goto_0
    nop

    .line 48
    .local p1, "result":Ljava/lang/Object;
    :try_start_3
    invoke-static {v7}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 49
    .end local v7    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    invoke-virtual {v4, p1}, Lexpo/modules/kotlin/jni/PromiseImpl;->resolve(Ljava/lang/Object;)V

    .line 51
    .end local p1    # "result":Ljava/lang/Object;
    :cond_1
    nop

    .end local v3    # "$i$a$-exceptionDecorator-SuspendFunctionComponent$attachToJSObject$2$1$2":I
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 64
    nop

    .line 63
    nop

    .end local v10    # "$i$f$exceptionDecorator":I
    goto/16 :goto_5

    .line 65
    .restart local v10    # "$i$f$exceptionDecorator":I
    :catchall_1
    move-exception v3

    move-object p1, v0

    move-object v0, v1

    move v1, v10

    goto :goto_1

    .end local v0    # "$result":Ljava/lang/Object;
    .local p1, "$result":Ljava/lang/Object;
    :catchall_2
    move-exception v3

    move-object v0, v1

    move v1, v10

    .line 66
    .end local v10    # "$i$f$exceptionDecorator":I
    .local v0, "this":Lexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1;
    .local v1, "$i$f$exceptionDecorator":I
    .local v3, "e$iv":Ljava/lang/Throwable;
    :goto_1
    nop

    .local v3, "$this$toCodedException$iv$iv":Ljava/lang/Throwable;
    const/4 v4, 0x0

    .line 67
    .local v4, "$i$f$toCodedException":I
    nop

    .line 68
    nop

    .line 69
    :try_start_4
    instance-of v7, v3, Lexpo/modules/kotlin/exception/CodedException;

    if-nez v7, :cond_3

    .line 70
    instance-of v7, v3, Lexpo/modules/core/errors/CodedException;

    if-eqz v7, :cond_2

    new-instance v7, Lexpo/modules/kotlin/exception/CodedException;

    move-object v8, v3

    check-cast v8, Lexpo/modules/core/errors/CodedException;

    invoke-virtual {v8}, Lexpo/modules/core/errors/CodedException;->getCode()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lexpo/modules/kotlin/exception/CodedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 71
    :cond_2
    new-instance v7, Lexpo/modules/kotlin/exception/UnexpectedException;

    invoke-direct {v7, v3}, Lexpo/modules/kotlin/exception/UnexpectedException;-><init>(Ljava/lang/Throwable;)V

    check-cast v7, Lexpo/modules/kotlin/exception/CodedException;

    goto :goto_2

    .line 69
    :cond_3
    move-object v7, v3

    check-cast v7, Lexpo/modules/kotlin/exception/CodedException;

    .line 72
    .end local v3    # "$this$toCodedException$iv$iv":Ljava/lang/Throwable;
    :goto_2
    nop

    .line 66
    .end local v4    # "$i$f$toCodedException":I
    move-object v3, v7

    .local v3, "it":Lexpo/modules/kotlin/exception/CodedException;
    const/4 v4, 0x0

    .line 45
    .local v4, "$i$a$-exceptionDecorator-SuspendFunctionComponent$attachToJSObject$2$1$1":I
    new-instance v7, Lexpo/modules/kotlin/exception/FunctionCallException;

    invoke-virtual {v6}, Lexpo/modules/kotlin/functions/SuspendFunctionComponent;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6, v5, v3}, Lexpo/modules/kotlin/exception/FunctionCallException;-><init>(Ljava/lang/String;Ljava/lang/String;Lexpo/modules/kotlin/exception/CodedException;)V

    check-cast v7, Ljava/lang/Throwable;

    .line 66
    .end local v3    # "it":Lexpo/modules/kotlin/exception/CodedException;
    .end local v4    # "$i$a$-exceptionDecorator-SuspendFunctionComponent$attachToJSObject$2$1$1":I
    nop

    .end local v0    # "this":Lexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1;
    .end local p1    # "$result":Ljava/lang/Object;
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 52
    .end local v1    # "$i$f$exceptionDecorator":I
    .restart local v0    # "this":Lexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_3
    move-exception v1

    goto :goto_3

    .end local v0    # "this":Lexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1;
    .local v1, "this":Lexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1;
    :catchall_4
    move-exception v0

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    .line 53
    .restart local v0    # "this":Lexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1;
    .local v1, "e":Ljava/lang/Throwable;
    :goto_3
    iget-object v3, v0, Lexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1;->$promiseImpl:Lexpo/modules/kotlin/jni/PromiseImpl;

    invoke-virtual {v3}, Lexpo/modules/kotlin/jni/PromiseImpl;->getWasSettled$expo_modules_core_debug()Z

    move-result v3

    if-nez v3, :cond_6

    .line 56
    iget-object v3, v0, Lexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1;->$promiseImpl:Lexpo/modules/kotlin/jni/PromiseImpl;

    .local v1, "$this$toCodedException$iv":Ljava/lang/Throwable;
    const/4 v4, 0x0

    .line 73
    .local v4, "$i$f$toCodedException":I
    nop

    .line 74
    nop

    .line 75
    instance-of v5, v1, Lexpo/modules/kotlin/exception/CodedException;

    if-eqz v5, :cond_4

    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/exception/CodedException;

    goto :goto_4

    .line 76
    :cond_4
    instance-of v5, v1, Lexpo/modules/core/errors/CodedException;

    if-eqz v5, :cond_5

    new-instance v5, Lexpo/modules/kotlin/exception/CodedException;

    move-object v6, v1

    check-cast v6, Lexpo/modules/core/errors/CodedException;

    invoke-virtual {v6}, Lexpo/modules/core/errors/CodedException;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-direct {v5, v6, v2, v7}, Lexpo/modules/kotlin/exception/CodedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v5

    goto :goto_4

    .line 77
    :cond_5
    new-instance v2, Lexpo/modules/kotlin/exception/UnexpectedException;

    invoke-direct {v2, v1}, Lexpo/modules/kotlin/exception/UnexpectedException;-><init>(Ljava/lang/Throwable;)V

    check-cast v2, Lexpo/modules/kotlin/exception/CodedException;

    .line 78
    .end local v1    # "$this$toCodedException$iv":Ljava/lang/Throwable;
    :goto_4
    nop

    .line 56
    .end local v4    # "$i$f$toCodedException":I
    invoke-virtual {v3, v2}, Lexpo/modules/kotlin/jni/PromiseImpl;->reject(Lexpo/modules/kotlin/exception/CodedException;)V

    move-object v1, v0

    move-object v0, p1

    .line 58
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .local v1, "this":Lexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1;
    :goto_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 54
    .local v0, "this":Lexpo/modules/kotlin/functions/SuspendFunctionComponent$attachToJSObject$2$1;
    .local v1, "e":Ljava/lang/Throwable;
    .restart local p1    # "$result":Ljava/lang/Object;
    :cond_6
    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
