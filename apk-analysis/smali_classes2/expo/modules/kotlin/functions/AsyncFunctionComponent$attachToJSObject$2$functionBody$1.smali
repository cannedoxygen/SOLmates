.class final Lexpo/modules/kotlin/functions/AsyncFunctionComponent$attachToJSObject$2$functionBody$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AsyncFunctionComponent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/kotlin/functions/AsyncFunctionComponent;->attachToJSObject(Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAsyncFunctionComponent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncFunctionComponent.kt\nexpo/modules/kotlin/functions/AsyncFunctionComponent$attachToJSObject$2$functionBody$1\n+ 2 ExceptionDecorator.kt\nexpo/modules/kotlin/exception/ExceptionDecoratorKt\n+ 3 CodedException.kt\nexpo/modules/kotlin/exception/CodedExceptionKt\n*L\n1#1,92:1\n5#2,4:93\n11#3,6:97\n11#3,6:103\n*S KotlinDebug\n*F\n+ 1 AsyncFunctionComponent.kt\nexpo/modules/kotlin/functions/AsyncFunctionComponent$attachToJSObject$2$functionBody$1\n*L\n42#1:93,4\n42#1:97,6\n52#1:103,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $appContext:Lexpo/modules/kotlin/AppContext;

.field final synthetic $args:[Ljava/lang/Object;

.field final synthetic $moduleName:Ljava/lang/String;

.field final synthetic $promiseImpl:Lexpo/modules/kotlin/jni/PromiseImpl;

.field final synthetic this$0:Lexpo/modules/kotlin/functions/AsyncFunctionComponent;


# direct methods
.method constructor <init>(Lexpo/modules/kotlin/jni/PromiseImpl;Lexpo/modules/kotlin/functions/AsyncFunctionComponent;Ljava/lang/String;[Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)V
    .locals 1

    iput-object p1, p0, Lexpo/modules/kotlin/functions/AsyncFunctionComponent$attachToJSObject$2$functionBody$1;->$promiseImpl:Lexpo/modules/kotlin/jni/PromiseImpl;

    iput-object p2, p0, Lexpo/modules/kotlin/functions/AsyncFunctionComponent$attachToJSObject$2$functionBody$1;->this$0:Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    iput-object p3, p0, Lexpo/modules/kotlin/functions/AsyncFunctionComponent$attachToJSObject$2$functionBody$1;->$moduleName:Ljava/lang/String;

    iput-object p4, p0, Lexpo/modules/kotlin/functions/AsyncFunctionComponent$attachToJSObject$2$functionBody$1;->$args:[Ljava/lang/Object;

    iput-object p5, p0, Lexpo/modules/kotlin/functions/AsyncFunctionComponent$attachToJSObject$2$functionBody$1;->$appContext:Lexpo/modules/kotlin/AppContext;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent$attachToJSObject$2$functionBody$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 11

    .line 41
    const-string v0, "getCode(...)"

    .line 42
    :try_start_0
    iget-object v1, p0, Lexpo/modules/kotlin/functions/AsyncFunctionComponent$attachToJSObject$2$functionBody$1;->this$0:Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    iget-object v2, p0, Lexpo/modules/kotlin/functions/AsyncFunctionComponent$attachToJSObject$2$functionBody$1;->$moduleName:Ljava/lang/String;

    iget-object v3, p0, Lexpo/modules/kotlin/functions/AsyncFunctionComponent$attachToJSObject$2$functionBody$1;->this$0:Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    iget-object v4, p0, Lexpo/modules/kotlin/functions/AsyncFunctionComponent$attachToJSObject$2$functionBody$1;->$args:[Ljava/lang/Object;

    iget-object v5, p0, Lexpo/modules/kotlin/functions/AsyncFunctionComponent$attachToJSObject$2$functionBody$1;->$promiseImpl:Lexpo/modules/kotlin/jni/PromiseImpl;

    iget-object v6, p0, Lexpo/modules/kotlin/functions/AsyncFunctionComponent$attachToJSObject$2$functionBody$1;->$appContext:Lexpo/modules/kotlin/AppContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v7, 0x0

    .line 93
    .local v7, "$i$f$exceptionDecorator":I
    nop

    .line 94
    const/4 v8, 0x0

    .line 45
    .local v8, "$i$a$-exceptionDecorator-AsyncFunctionComponent$attachToJSObject$2$functionBody$1$2":I
    :try_start_1
    check-cast v5, Lexpo/modules/kotlin/Promise;

    invoke-virtual {v3, v4, v5, v6}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;->callUserImplementation$expo_modules_core_debug([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;Lexpo/modules/kotlin/AppContext;)V

    .line 46
    nop

    .end local v8    # "$i$a$-exceptionDecorator-AsyncFunctionComponent$attachToJSObject$2$functionBody$1$2":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    nop

    .line 93
    nop

    .end local v7    # "$i$f$exceptionDecorator":I
    goto/16 :goto_2

    .line 95
    .restart local v7    # "$i$f$exceptionDecorator":I
    :catchall_0
    move-exception v3

    .line 96
    .local v3, "e$iv":Ljava/lang/Throwable;
    move-object v4, v3

    .local v4, "$this$toCodedException$iv$iv":Ljava/lang/Throwable;
    const/4 v5, 0x0

    .line 97
    .local v5, "$i$f$toCodedException":I
    nop

    .line 98
    nop

    .line 99
    :try_start_2
    instance-of v6, v4, Lexpo/modules/kotlin/exception/CodedException;

    if-nez v6, :cond_1

    .line 100
    instance-of v6, v4, Lexpo/modules/core/errors/CodedException;

    if-eqz v6, :cond_0

    new-instance v6, Lexpo/modules/kotlin/exception/CodedException;

    move-object v8, v4

    check-cast v8, Lexpo/modules/core/errors/CodedException;

    invoke-virtual {v8}, Lexpo/modules/core/errors/CodedException;->getCode()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    invoke-direct {v6, v8, v9, v10}, Lexpo/modules/kotlin/exception/CodedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 101
    :cond_0
    new-instance v6, Lexpo/modules/kotlin/exception/UnexpectedException;

    invoke-direct {v6, v4}, Lexpo/modules/kotlin/exception/UnexpectedException;-><init>(Ljava/lang/Throwable;)V

    check-cast v6, Lexpo/modules/kotlin/exception/CodedException;

    goto :goto_0

    .line 99
    :cond_1
    move-object v6, v4

    check-cast v6, Lexpo/modules/kotlin/exception/CodedException;

    .line 102
    :goto_0
    nop

    .line 96
    .end local v4    # "$this$toCodedException$iv$iv":Ljava/lang/Throwable;
    .end local v5    # "$i$f$toCodedException":I
    move-object v4, v6

    .local v4, "it":Lexpo/modules/kotlin/exception/CodedException;
    const/4 v5, 0x0

    .line 43
    .local v5, "$i$a$-exceptionDecorator-AsyncFunctionComponent$attachToJSObject$2$functionBody$1$1":I
    new-instance v6, Lexpo/modules/kotlin/exception/FunctionCallException;

    invoke-virtual {v1}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1, v2, v4}, Lexpo/modules/kotlin/exception/FunctionCallException;-><init>(Ljava/lang/String;Ljava/lang/String;Lexpo/modules/kotlin/exception/CodedException;)V

    check-cast v6, Ljava/lang/Throwable;

    .line 96
    .end local v4    # "it":Lexpo/modules/kotlin/exception/CodedException;
    .end local v5    # "$i$a$-exceptionDecorator-AsyncFunctionComponent$attachToJSObject$2$functionBody$1$1":I
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 47
    .end local v3    # "e$iv":Ljava/lang/Throwable;
    .end local v7    # "$i$f$exceptionDecorator":I
    :catchall_1
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lexpo/modules/kotlin/functions/AsyncFunctionComponent$attachToJSObject$2$functionBody$1;->$promiseImpl:Lexpo/modules/kotlin/jni/PromiseImpl;

    invoke-virtual {v2}, Lexpo/modules/kotlin/jni/PromiseImpl;->getWasSettled$expo_modules_core_debug()Z

    move-result v2

    if-nez v2, :cond_4

    .line 52
    iget-object v2, p0, Lexpo/modules/kotlin/functions/AsyncFunctionComponent$attachToJSObject$2$functionBody$1;->$promiseImpl:Lexpo/modules/kotlin/jni/PromiseImpl;

    move-object v3, v1

    .local v3, "$this$toCodedException$iv":Ljava/lang/Throwable;
    const/4 v4, 0x0

    .line 103
    .local v4, "$i$f$toCodedException":I
    nop

    .line 104
    nop

    .line 105
    instance-of v5, v3, Lexpo/modules/kotlin/exception/CodedException;

    if-eqz v5, :cond_2

    move-object v0, v3

    check-cast v0, Lexpo/modules/kotlin/exception/CodedException;

    goto :goto_1

    .line 106
    :cond_2
    instance-of v5, v3, Lexpo/modules/core/errors/CodedException;

    if-eqz v5, :cond_3

    new-instance v5, Lexpo/modules/kotlin/exception/CodedException;

    move-object v6, v3

    check-cast v6, Lexpo/modules/core/errors/CodedException;

    invoke-virtual {v6}, Lexpo/modules/core/errors/CodedException;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-direct {v5, v6, v0, v7}, Lexpo/modules/kotlin/exception/CodedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v5

    goto :goto_1

    .line 107
    :cond_3
    new-instance v0, Lexpo/modules/kotlin/exception/UnexpectedException;

    invoke-direct {v0, v3}, Lexpo/modules/kotlin/exception/UnexpectedException;-><init>(Ljava/lang/Throwable;)V

    check-cast v0, Lexpo/modules/kotlin/exception/CodedException;

    .line 108
    :goto_1
    nop

    .line 52
    .end local v3    # "$this$toCodedException$iv":Ljava/lang/Throwable;
    .end local v4    # "$i$f$toCodedException":I
    invoke-virtual {v2, v0}, Lexpo/modules/kotlin/jni/PromiseImpl;->reject(Lexpo/modules/kotlin/exception/CodedException;)V

    .line 54
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_2
    return-void

    .line 50
    .restart local v1    # "e":Ljava/lang/Throwable;
    :cond_4
    throw v1
.end method
