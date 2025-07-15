.class public abstract Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;
.super Lexpo/modules/kotlin/functions/AnyFunction;
.source "BaseAsyncFunctionComponent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008&\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0007J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u000fJ\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0011R\u001a\u0010\u0008\u001a\u00020\tX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0012"
    }
    d2 = {
        "Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;",
        "Lexpo/modules/kotlin/functions/AnyFunction;",
        "name",
        "",
        "desiredArgsTypes",
        "",
        "Lexpo/modules/kotlin/types/AnyType;",
        "(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;)V",
        "queue",
        "Lexpo/modules/kotlin/functions/FunctionQueue;",
        "getQueue",
        "()Lexpo/modules/kotlin/functions/FunctionQueue;",
        "setQueue",
        "(Lexpo/modules/kotlin/functions/FunctionQueue;)V",
        "runOnQueue",
        "Lexpo/modules/kotlin/functions/Queues;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "expo-modules-core_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private queue:Lexpo/modules/kotlin/functions/FunctionQueue;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desiredArgsTypes"    # [Lexpo/modules/kotlin/types/AnyType;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "desiredArgsTypes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1, p2}, Lexpo/modules/kotlin/functions/AnyFunction;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;)V

    .line 21
    sget-object v0, Lexpo/modules/kotlin/functions/Queues;->DEFAULT:Lexpo/modules/kotlin/functions/Queues;

    check-cast v0, Lexpo/modules/kotlin/functions/FunctionQueue;

    iput-object v0, p0, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;->queue:Lexpo/modules/kotlin/functions/FunctionQueue;

    .line 17
    return-void
.end method


# virtual methods
.method protected final getQueue()Lexpo/modules/kotlin/functions/FunctionQueue;
    .locals 1

    .line 21
    iget-object v0, p0, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;->queue:Lexpo/modules/kotlin/functions/FunctionQueue;

    return-object v0
.end method

.method public final runOnQueue(Lexpo/modules/kotlin/functions/Queues;)Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;
    .locals 3
    .param p1, "queue"    # Lexpo/modules/kotlin/functions/Queues;

    const-string v0, "queue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;

    .local v0, "$this$runOnQueue_u24lambda_u240":Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;
    const/4 v1, 0x0

    .line 24
    .local v1, "$i$a$-apply-BaseAsyncFunctionComponent$runOnQueue$1":I
    move-object v2, p1

    check-cast v2, Lexpo/modules/kotlin/functions/FunctionQueue;

    iput-object v2, v0, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;->queue:Lexpo/modules/kotlin/functions/FunctionQueue;

    .line 25
    nop

    .line 23
    .end local v0    # "$this$runOnQueue_u24lambda_u240":Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;
    .end local v1    # "$i$a$-apply-BaseAsyncFunctionComponent$runOnQueue$1":I
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;

    .line 25
    return-object v0
.end method

.method public final runOnQueue(Lkotlinx/coroutines/CoroutineScope;)Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;
    .locals 3
    .param p1, "scope"    # Lkotlinx/coroutines/CoroutineScope;

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;

    .local v0, "$this$runOnQueue_u24lambda_u241":Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;
    const/4 v1, 0x0

    .line 28
    .local v1, "$i$a$-apply-BaseAsyncFunctionComponent$runOnQueue$2":I
    new-instance v2, Lexpo/modules/kotlin/functions/CustomQueue;

    invoke-direct {v2, p1}, Lexpo/modules/kotlin/functions/CustomQueue;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    check-cast v2, Lexpo/modules/kotlin/functions/FunctionQueue;

    iput-object v2, v0, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;->queue:Lexpo/modules/kotlin/functions/FunctionQueue;

    .line 29
    nop

    .line 27
    .end local v0    # "$this$runOnQueue_u24lambda_u241":Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;
    .end local v1    # "$i$a$-apply-BaseAsyncFunctionComponent$runOnQueue$2":I
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;

    .line 29
    return-object v0
.end method

.method protected final setQueue(Lexpo/modules/kotlin/functions/FunctionQueue;)V
    .locals 1
    .param p1, "<set-?>"    # Lexpo/modules/kotlin/functions/FunctionQueue;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;->queue:Lexpo/modules/kotlin/functions/FunctionQueue;

    return-void
.end method
