.class public final Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$Coroutine$4;
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
    value = "SMAP\nAsyncFunctionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncFunctionBuilder.kt\nexpo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$7\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 SecureStoreModule.kt\nexpo/modules/securestore/SecureStoreModule\n*L\n1#1,269:1\n22#2,4:270\n38#3,2:274\n*S KotlinDebug\n*F\n+ 1 AsyncFunctionBuilder.kt\nexpo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$7\n*L\n46#1:270,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001\"\u0006\u0008\u0001\u0010\u0003\u0018\u0001\"\u0006\u0008\u0002\u0010\u0004\u0018\u0001\"\u0006\u0008\u0003\u0010\u0005\u0018\u0001*\u00020\u00062\u0010\u0010\u0007\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010\u0008H\u008a@\u00a8\u0006\t"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "P0",
        "P1",
        "P2",
        "Lkotlinx/coroutines/CoroutineScope;",
        "<name for destructuring parameter 0>",
        "",
        "expo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$7"
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
    c = "expo.modules.securestore.SecureStoreModule$definition$lambda$7$$inlined$Coroutine$4"
    f = "SecureStoreModule.kt"
    i = {}
    l = {
        0x113
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

    iput-object p2, p0, Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$Coroutine$4;->this$0:Lexpo/modules/securestore/SecureStoreModule;

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

    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$Coroutine$4;->invoke(Lkotlinx/coroutines/CoroutineScope;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    new-instance v0, Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$Coroutine$4;

    iget-object v1, p0, Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$Coroutine$4;->this$0:Lexpo/modules/securestore/SecureStoreModule;

    invoke-direct {v0, p3, v1}, Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$Coroutine$4;-><init>(Lkotlin/coroutines/Continuation;Lexpo/modules/securestore/SecureStoreModule;)V

    iput-object p2, v0, Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$Coroutine$4;->L$0:Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$Coroutine$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 0
    iget v1, p0, Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$Coroutine$4;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$Coroutine$4;
    .local p1, "$result":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "$i$a$-Coroutine-SecureStoreModule$definition$1$1":I
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "this":Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$Coroutine$4;
    .end local v1    # "$i$a$-Coroutine-SecureStoreModule$definition$1$1":I
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .local v1, "this":Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$Coroutine$4;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$Coroutine$4;->L$0:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    .line 45
    const/4 v3, 0x0

    aget-object v3, v2, v3

    .local v3, "p0":Ljava/lang/Object;
    const/4 v5, 0x1

    aget-object v4, v2, v5

    .local v4, "p1":Ljava/lang/Object;
    const/4 v6, 0x2

    aget-object v2, v2, v6

    .line 46
    .local v2, "p2":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 270
    .local v6, "$i$f$enforceType":I
    nop

    .line 273
    nop

    .line 47
    .end local v6    # "$i$f$enforceType":I
    move-object v6, v1

    check-cast v6, Lkotlin/coroutines/Continuation;

    move-object v8, v2

    check-cast v8, Lexpo/modules/securestore/SecureStoreOptions;

    .local v8, "options":Lexpo/modules/securestore/SecureStoreOptions;
    move-object v9, v4

    check-cast v9, Ljava/lang/String;

    .local v9, "key":Ljava/lang/String;
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    .end local v2    # "p2":Ljava/lang/Object;
    .end local v3    # "p0":Ljava/lang/Object;
    .local v4, "value":Ljava/lang/String;
    const/4 v10, 0x0

    .line 274
    .local v10, "$i$a$-Coroutine-SecureStoreModule$definition$1$1":I
    if-eqz v9, :cond_1

    .line 275
    iget-object v2, v1, Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$Coroutine$4;->this$0:Lexpo/modules/securestore/SecureStoreModule;

    iput v5, v1, Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$Coroutine$4;->label:I

    const/4 v6, 0x0

    move-object v3, v9

    move-object v5, v8

    move-object v7, v1

    invoke-static/range {v2 .. v7}, Lexpo/modules/securestore/SecureStoreModule;->access$setItemImpl(Lexpo/modules/securestore/SecureStoreModule;Ljava/lang/String;Ljava/lang/String;Lexpo/modules/securestore/SecureStoreOptions;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local v4    # "value":Ljava/lang/String;
    .end local v8    # "options":Lexpo/modules/securestore/SecureStoreOptions;
    .end local v9    # "key":Ljava/lang/String;
    if-ne v2, v0, :cond_0

    .line 0
    return-object v0

    .line 275
    :cond_0
    move-object v0, v1

    move v1, v10

    .end local v10    # "$i$a$-Coroutine-SecureStoreModule$definition$1$1":I
    .restart local v0    # "this":Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$Coroutine$4;
    .local v1, "$i$a$-Coroutine-SecureStoreModule$definition$1$1":I
    :goto_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 47
    .end local v1    # "$i$a$-Coroutine-SecureStoreModule$definition$1$1":I
    return-object v1

    .line 274
    .end local v0    # "this":Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$Coroutine$4;
    .local v1, "this":Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$Coroutine$4;
    .restart local v10    # "$i$a$-Coroutine-SecureStoreModule$definition$1$1":I
    :cond_1
    new-instance v0, Lexpo/modules/securestore/NullKeyException;

    invoke-direct {v0}, Lexpo/modules/securestore/NullKeyException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
