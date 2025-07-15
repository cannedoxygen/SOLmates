.class public final Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$Coroutine$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AsyncFunctionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/clipboard/ClipboardModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
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
    value = "SMAP\nAsyncFunctionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncFunctionBuilder.kt\nexpo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$3\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 ClipboardModule.kt\nexpo/modules/clipboard/ClipboardModule\n*L\n1#1,269:1\n8#2,4:270\n93#3,11:274\n*S KotlinDebug\n*F\n+ 1 AsyncFunctionBuilder.kt\nexpo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$3\n*L\n28#1:270,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001\"\u0006\u0008\u0001\u0010\u0003\u0018\u0001*\u00020\u00042\u0010\u0010\u0005\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010\u0006H\u008a@\u00a8\u0006\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "P0",
        "Lkotlinx/coroutines/CoroutineScope;",
        "<name for destructuring parameter 0>",
        "",
        "expo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$3"
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
    c = "expo.modules.clipboard.ClipboardModule$definition$lambda$12$$inlined$Coroutine$4"
    f = "ClipboardModule.kt"
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

.field final synthetic this$0:Lexpo/modules/clipboard/ClipboardModule;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lexpo/modules/clipboard/ClipboardModule;)V
    .locals 0

    iput-object p2, p0, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$Coroutine$4;->this$0:Lexpo/modules/clipboard/ClipboardModule;

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

    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$Coroutine$4;->invoke(Lkotlinx/coroutines/CoroutineScope;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    new-instance v0, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$Coroutine$4;

    iget-object v1, p0, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$Coroutine$4;->this$0:Lexpo/modules/clipboard/ClipboardModule;

    invoke-direct {v0, p3, v1}, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$Coroutine$4;-><init>(Lkotlin/coroutines/Continuation;Lexpo/modules/clipboard/ClipboardModule;)V

    iput-object p2, v0, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$Coroutine$4;->L$0:Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$Coroutine$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 0
    iget v1, p0, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$Coroutine$4;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$Coroutine$4;
    .local p1, "$result":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "$i$a$-Coroutine-ClipboardModule$definition$1$5":I
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v1

    move-object v1, v0

    move-object v0, p1

    goto :goto_0

    .line 277
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 0
    .end local v0    # "this":Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$Coroutine$4;
    .end local v1    # "$i$a$-Coroutine-ClipboardModule$definition$1$5":I
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .local v1, "this":Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$Coroutine$4;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$Coroutine$4;->L$0:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    .line 27
    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 28
    .local v2, "p0":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 270
    .local v3, "$i$f$enforceType":I
    nop

    .line 273
    nop

    .line 29
    .end local v3    # "$i$f$enforceType":I
    move-object v3, v1

    check-cast v3, Lkotlin/coroutines/Continuation;

    check-cast v2, Ljava/lang/String;

    .local v2, "imageData":Ljava/lang/String;
    const/4 v3, 0x0

    .line 274
    .local v3, "$i$a$-Coroutine-ClipboardModule$definition$1$5":I
    nop

    .line 275
    :try_start_1
    iget-object v4, v1, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$Coroutine$4;->this$0:Lexpo/modules/clipboard/ClipboardModule;

    invoke-static {v4}, Lexpo/modules/clipboard/ClipboardModule;->access$getContext(Lexpo/modules/clipboard/ClipboardModule;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, v1, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$Coroutine$4;->this$0:Lexpo/modules/clipboard/ClipboardModule;

    invoke-static {v5}, Lexpo/modules/clipboard/ClipboardModule;->access$getClipboardCacheDir(Lexpo/modules/clipboard/ClipboardModule;)Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x1

    iput v6, v1, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$Coroutine$4;->label:I

    invoke-static {v4, v2, v5, v1}, Lexpo/modules/clipboard/ClipboardImageKt;->clipDataFromBase64Image(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .end local v2    # "imageData":Ljava/lang/String;
    if-ne v4, v0, :cond_0

    .line 0
    return-object v0

    .line 275
    :cond_0
    move-object v0, p1

    move-object p1, v4

    .line 0
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    :goto_0
    :try_start_2
    check-cast p1, Landroid/content/ClipData;

    .line 276
    .local p1, "clip":Landroid/content/ClipData;
    iget-object v2, v1, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$Coroutine$4;->this$0:Lexpo/modules/clipboard/ClipboardModule;

    invoke-static {v2}, Lexpo/modules/clipboard/ClipboardModule;->access$getClipboardManager(Lexpo/modules/clipboard/ClipboardModule;)Landroid/content/ClipboardManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 284
    .end local p1    # "clip":Landroid/content/ClipData;
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 29
    .end local v3    # "$i$a$-Coroutine-ClipboardModule$definition$1$5":I
    return-object p1

    .line 277
    .restart local v3    # "$i$a$-Coroutine-ClipboardModule$definition$1$5":I
    :catchall_1
    move-exception v2

    move-object p1, v0

    move-object v0, v1

    move v1, v3

    goto :goto_1

    .end local v0    # "$result":Ljava/lang/Object;
    .local p1, "$result":Ljava/lang/Object;
    :catchall_2
    move-exception v2

    move-object v0, v1

    move v1, v3

    .line 278
    .end local v3    # "$i$a$-Coroutine-ClipboardModule$definition$1$5":I
    .local v0, "this":Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$Coroutine$4;
    .local v1, "$i$a$-Coroutine-ClipboardModule$definition$1$5":I
    .local v2, "err":Ljava/lang/Throwable;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 279
    nop

    .line 280
    instance-of v3, v2, Lexpo/modules/kotlin/exception/CodedException;

    if-eqz v3, :cond_1

    goto :goto_2

    .line 281
    :cond_1
    new-instance v3, Lexpo/modules/clipboard/CopyFailureException;

    const-string v4, "image"

    invoke-direct {v3, v2, v4}, Lexpo/modules/clipboard/CopyFailureException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    move-object v2, v3

    .end local v2    # "err":Ljava/lang/Throwable;
    :goto_2
    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
