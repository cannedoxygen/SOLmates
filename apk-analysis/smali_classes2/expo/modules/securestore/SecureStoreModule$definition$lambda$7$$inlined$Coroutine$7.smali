.class public final Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$Coroutine$7;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AsyncFunctionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/securestore/SecureStoreModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
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
    value = "SMAP\nAsyncFunctionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncFunctionBuilder.kt\nexpo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$5\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 SecureStoreModule.kt\nexpo/modules/securestore/SecureStoreModule\n*L\n1#1,269:1\n15#2,4:270\n43#3:274\n*S KotlinDebug\n*F\n+ 1 AsyncFunctionBuilder.kt\nexpo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$5\n*L\n37#1:270,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001\"\u0006\u0008\u0001\u0010\u0003\u0018\u0001\"\u0006\u0008\u0002\u0010\u0004\u0018\u0001*\u00020\u00052\u0010\u0010\u0006\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010\u0007H\u008a@\u00a8\u0006\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "P0",
        "P1",
        "Lkotlinx/coroutines/CoroutineScope;",
        "<name for destructuring parameter 0>",
        "",
        "expo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$5"
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
    c = "expo.modules.securestore.SecureStoreModule$definition$lambda$7$$inlined$Coroutine$7"
    f = "SecureStoreModule.kt"
    i = {}
    l = {
        0x112
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lexpo/modules/securestore/SecureStoreModule;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lexpo/modules/securestore/SecureStoreModule;)V
    .locals 0

    iput-object p2, p0, Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$Coroutine$7;->this$0:Lexpo/modules/securestore/SecureStoreModule;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, [Ljava/lang/Object;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$Coroutine$7;->invoke(Lkotlinx/coroutines/CoroutineScope;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    new-instance v0, Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$Coroutine$7;

    iget-object v1, p0, Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$Coroutine$7;->this$0:Lexpo/modules/securestore/SecureStoreModule;

    invoke-direct {v0, p3, v1}, Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$Coroutine$7;-><init>(Lkotlin/coroutines/Continuation;Lexpo/modules/securestore/SecureStoreModule;)V

    iput-object p2, v0, Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$Coroutine$7;->L$0:Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$Coroutine$7;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 0
    iget v1, p0, Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$Coroutine$7;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$Coroutine$7;
    .local p1, "$result":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "$i$a$-Coroutine-SecureStoreModule$definition$1$2":I
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p1

    goto :goto_0

    .end local v0    # "this":Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$Coroutine$7;
    .end local v1    # "$i$a$-Coroutine-SecureStoreModule$definition$1$2":I
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .local v1, "this":Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$Coroutine$7;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$Coroutine$7;->L$0:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    .line 36
    const/4 v3, 0x0

    aget-object v3, v2, v3

    .local v3, "p0":Ljava/lang/Object;
    const/4 v4, 0x1

    aget-object v2, v2, v4

    .line 37
    .local v2, "p1":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 270
    .local v5, "$i$f$enforceType":I
    nop

    .line 273
    nop

    .line 38
    .end local v5    # "$i$f$enforceType":I
    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    move-object v5, v2

    check-cast v5, Lexpo/modules/securestore/SecureStoreOptions;

    .local v5, "options":Lexpo/modules/securestore/SecureStoreOptions;
    move-object v2, v3

    check-cast v2, Ljava/lang/String;

    .end local v3    # "p0":Ljava/lang/Object;
    .local v2, "key":Ljava/lang/String;
    const/4 v3, 0x0

    .line 274
    .local v3, "$i$a$-Coroutine-SecureStoreModule$definition$1$2":I
    iget-object v6, v1, Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$Coroutine$7;->this$0:Lexpo/modules/securestore/SecureStoreModule;

    iput v4, v1, Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$Coroutine$7;->label:I

    invoke-static {v6, v2, v5, v1}, Lexpo/modules/securestore/SecureStoreModule;->access$getItemImpl(Lexpo/modules/securestore/SecureStoreModule;Ljava/lang/String;Lexpo/modules/securestore/SecureStoreOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "key":Ljava/lang/String;
    .end local v5    # "options":Lexpo/modules/securestore/SecureStoreOptions;
    if-ne v2, v0, :cond_0

    .line 0
    return-object v0

    .line 274
    :cond_0
    move-object v0, v1

    move v1, v3

    .end local v3    # "$i$a$-Coroutine-SecureStoreModule$definition$1$2":I
    .restart local v0    # "this":Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$Coroutine$7;
    .local v1, "$i$a$-Coroutine-SecureStoreModule$definition$1$2":I
    :goto_0
    nop

    .line 38
    .end local v1    # "$i$a$-Coroutine-SecureStoreModule$definition$1$2":I
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
