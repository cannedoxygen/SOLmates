.class final Lexpo/modules/securestore/SecureStoreModule$definition$1$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SecureStoreModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/securestore/SecureStoreModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
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
    c = "expo.modules.securestore.SecureStoreModule$definition$1$3$1"
    f = "SecureStoreModule.kt"
    i = {}
    l = {
        0x31
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $key:Ljava/lang/String;

.field final synthetic $options:Lexpo/modules/securestore/SecureStoreOptions;

.field final synthetic $value:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lexpo/modules/securestore/SecureStoreModule;


# direct methods
.method constructor <init>(Lexpo/modules/securestore/SecureStoreModule;Ljava/lang/String;Ljava/lang/String;Lexpo/modules/securestore/SecureStoreOptions;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/securestore/SecureStoreModule;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lexpo/modules/securestore/SecureStoreOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/securestore/SecureStoreModule$definition$1$3$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/securestore/SecureStoreModule$definition$1$3$1;->this$0:Lexpo/modules/securestore/SecureStoreModule;

    iput-object p2, p0, Lexpo/modules/securestore/SecureStoreModule$definition$1$3$1;->$key:Ljava/lang/String;

    iput-object p3, p0, Lexpo/modules/securestore/SecureStoreModule$definition$1$3$1;->$value:Ljava/lang/String;

    iput-object p4, p0, Lexpo/modules/securestore/SecureStoreModule$definition$1$3$1;->$options:Lexpo/modules/securestore/SecureStoreOptions;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v6, Lexpo/modules/securestore/SecureStoreModule$definition$1$3$1;

    iget-object v1, p0, Lexpo/modules/securestore/SecureStoreModule$definition$1$3$1;->this$0:Lexpo/modules/securestore/SecureStoreModule;

    iget-object v2, p0, Lexpo/modules/securestore/SecureStoreModule$definition$1$3$1;->$key:Ljava/lang/String;

    iget-object v3, p0, Lexpo/modules/securestore/SecureStoreModule$definition$1$3$1;->$value:Ljava/lang/String;

    iget-object v4, p0, Lexpo/modules/securestore/SecureStoreModule$definition$1$3$1;->$options:Lexpo/modules/securestore/SecureStoreOptions;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lexpo/modules/securestore/SecureStoreModule$definition$1$3$1;-><init>(Lexpo/modules/securestore/SecureStoreModule;Ljava/lang/String;Ljava/lang/String;Lexpo/modules/securestore/SecureStoreOptions;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/coroutines/Continuation;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/securestore/SecureStoreModule$definition$1$3$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lexpo/modules/securestore/SecureStoreModule$definition$1$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lexpo/modules/securestore/SecureStoreModule$definition$1$3$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lexpo/modules/securestore/SecureStoreModule$definition$1$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 48
    iget v1, p0, Lexpo/modules/securestore/SecureStoreModule$definition$1$3$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lexpo/modules/securestore/SecureStoreModule$definition$1$3$1;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "this":Lexpo/modules/securestore/SecureStoreModule$definition$1$3$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 49
    .local v1, "this":Lexpo/modules/securestore/SecureStoreModule$definition$1$3$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lexpo/modules/securestore/SecureStoreModule$definition$1$3$1;->this$0:Lexpo/modules/securestore/SecureStoreModule;

    iget-object v3, v1, Lexpo/modules/securestore/SecureStoreModule$definition$1$3$1;->$key:Ljava/lang/String;

    iget-object v4, v1, Lexpo/modules/securestore/SecureStoreModule$definition$1$3$1;->$value:Ljava/lang/String;

    iget-object v5, v1, Lexpo/modules/securestore/SecureStoreModule$definition$1$3$1;->$options:Lexpo/modules/securestore/SecureStoreOptions;

    move-object v7, v1

    check-cast v7, Lkotlin/coroutines/Continuation;

    const/4 v6, 0x1

    iput v6, v1, Lexpo/modules/securestore/SecureStoreModule$definition$1$3$1;->label:I

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Lexpo/modules/securestore/SecureStoreModule;->access$setItemImpl(Lexpo/modules/securestore/SecureStoreModule;Ljava/lang/String;Ljava/lang/String;Lexpo/modules/securestore/SecureStoreOptions;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_0

    .line 48
    return-object v0

    .line 49
    :cond_0
    move-object v0, v1

    .end local v1    # "this":Lexpo/modules/securestore/SecureStoreModule$definition$1$3$1;
    .restart local v0    # "this":Lexpo/modules/securestore/SecureStoreModule$definition$1$3$1;
    :goto_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
