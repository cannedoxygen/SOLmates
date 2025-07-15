.class public final Lexpo/modules/asset/AssetModule$definition$lambda$3$$inlined$Coroutine$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AsyncFunctionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/asset/AssetModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
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
    value = "SMAP\nAsyncFunctionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncFunctionBuilder.kt\nexpo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$7\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 AssetModule.kt\nexpo/modules/asset/AssetModule\n*L\n1#1,269:1\n22#2,4:270\n79#3,18:274\n*S KotlinDebug\n*F\n+ 1 AsyncFunctionBuilder.kt\nexpo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$7\n*L\n46#1:270,4\n*E\n"
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
    c = "expo.modules.asset.AssetModule$definition$lambda$3$$inlined$Coroutine$4"
    f = "AssetModule.kt"
    i = {}
    l = {
        0x11c,
        0x123
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lexpo/modules/asset/AssetModule;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lexpo/modules/asset/AssetModule;)V
    .locals 0

    iput-object p2, p0, Lexpo/modules/asset/AssetModule$definition$lambda$3$$inlined$Coroutine$4;->this$0:Lexpo/modules/asset/AssetModule;

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

    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/asset/AssetModule$definition$lambda$3$$inlined$Coroutine$4;->invoke(Lkotlinx/coroutines/CoroutineScope;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    new-instance v0, Lexpo/modules/asset/AssetModule$definition$lambda$3$$inlined$Coroutine$4;

    iget-object v1, p0, Lexpo/modules/asset/AssetModule$definition$lambda$3$$inlined$Coroutine$4;->this$0:Lexpo/modules/asset/AssetModule;

    invoke-direct {v0, p3, v1}, Lexpo/modules/asset/AssetModule$definition$lambda$3$$inlined$Coroutine$4;-><init>(Lkotlin/coroutines/Continuation;Lexpo/modules/asset/AssetModule;)V

    iput-object p2, v0, Lexpo/modules/asset/AssetModule$definition$lambda$3$$inlined$Coroutine$4;->L$0:Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lexpo/modules/asset/AssetModule$definition$lambda$3$$inlined$Coroutine$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 0
    iget v1, p0, Lexpo/modules/asset/AssetModule$definition$lambda$3$$inlined$Coroutine$4;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lexpo/modules/asset/AssetModule$definition$lambda$3$$inlined$Coroutine$4;
    .local p1, "$result":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "$i$a$-Coroutine-AssetModule$definition$1$1":I
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p1

    goto/16 :goto_2

    .end local v0    # "this":Lexpo/modules/asset/AssetModule$definition$lambda$3$$inlined$Coroutine$4;
    .end local v1    # "$i$a$-Coroutine-AssetModule$definition$1$1":I
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object v0, p0

    .restart local v0    # "this":Lexpo/modules/asset/AssetModule$definition$lambda$3$$inlined$Coroutine$4;
    .restart local p1    # "$result":Ljava/lang/Object;
    const/4 v1, 0x0

    .restart local v1    # "$i$a$-Coroutine-AssetModule$definition$1$1":I
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p1

    goto/16 :goto_1

    .end local v0    # "this":Lexpo/modules/asset/AssetModule$definition$lambda$3$$inlined$Coroutine$4;
    .end local v1    # "$i$a$-Coroutine-AssetModule$definition$1$1":I
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .local v1, "this":Lexpo/modules/asset/AssetModule$definition$lambda$3$$inlined$Coroutine$4;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lexpo/modules/asset/AssetModule$definition$lambda$3$$inlined$Coroutine$4;->L$0:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    .line 45
    const/4 v3, 0x0

    aget-object v4, v2, v3

    .local v4, "p0":Ljava/lang/Object;
    const/4 v5, 0x1

    aget-object v6, v2, v5

    .local v6, "p1":Ljava/lang/Object;
    const/4 v7, 0x2

    aget-object v2, v2, v7

    .line 46
    .local v2, "p2":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 270
    .local v8, "$i$f$enforceType":I
    nop

    .line 273
    nop

    .line 47
    .end local v8    # "$i$f$enforceType":I
    move-object v8, v1

    check-cast v8, Lkotlin/coroutines/Continuation;

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    .local v8, "type":Ljava/lang/String;
    move-object v9, v6

    check-cast v9, Ljava/lang/String;

    .local v9, "md5Hash":Ljava/lang/String;
    move-object v2, v4

    check-cast v2, Ljava/net/URI;

    .end local v4    # "p0":Ljava/lang/Object;
    .end local v6    # "p1":Ljava/lang/Object;
    .local v2, "uri":Ljava/net/URI;
    const/4 v4, 0x0

    .line 274
    .local v4, "$i$a$-Coroutine-AssetModule$definition$1$1":I
    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v6

    const-string v10, "file"

    if-ne v6, v10, :cond_0

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v10, "toString(...)"

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "file:///android_res/"

    const/4 v11, 0x0

    invoke-static {v6, v10, v3, v7, v11}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 275
    .end local v8    # "type":Ljava/lang/String;
    .end local v9    # "md5Hash":Ljava/lang/String;
    goto/16 :goto_4

    .line 278
    .restart local v8    # "type":Ljava/lang/String;
    .restart local v9    # "md5Hash":Ljava/lang/String;
    :cond_0
    if-nez v9, :cond_1

    iget-object v3, v1, Lexpo/modules/asset/AssetModule$definition$lambda$3$$inlined$Coroutine$4;->this$0:Lexpo/modules/asset/AssetModule;

    invoke-static {v3, v2}, Lexpo/modules/asset/AssetModule;->access$getMD5HashOfFilePath(Lexpo/modules/asset/AssetModule;Ljava/net/URI;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v9

    .line 279
    .local v3, "cacheFileId":Ljava/lang/String;
    :goto_0
    iget-object v6, v1, Lexpo/modules/asset/AssetModule$definition$lambda$3$$inlined$Coroutine$4;->this$0:Lexpo/modules/asset/AssetModule;

    invoke-virtual {v6}, Lexpo/modules/asset/AssetModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v6

    invoke-virtual {v6}, Lexpo/modules/kotlin/AppContext;->getCacheDirectory()Ljava/io/File;

    move-result-object v6

    .line 281
    .local v6, "cacheDirectory":Ljava/io/File;
    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/ExponentAsset-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v10

    .line 283
    .end local v6    # "cacheDirectory":Ljava/io/File;
    .end local v8    # "type":Ljava/lang/String;
    .local v3, "localUrl":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    .line 284
    .end local v9    # "md5Hash":Ljava/lang/String;
    iget-object v6, v1, Lexpo/modules/asset/AssetModule$definition$lambda$3$$inlined$Coroutine$4;->this$0:Lexpo/modules/asset/AssetModule;

    iget-object v7, v1, Lexpo/modules/asset/AssetModule$definition$lambda$3$$inlined$Coroutine$4;->this$0:Lexpo/modules/asset/AssetModule;

    invoke-virtual {v7}, Lexpo/modules/asset/AssetModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v7

    iput v5, v1, Lexpo/modules/asset/AssetModule$definition$lambda$3$$inlined$Coroutine$4;->label:I

    invoke-static {v6, v7, v2, v3, v1}, Lexpo/modules/asset/AssetModule;->access$downloadAsset(Lexpo/modules/asset/AssetModule;Lexpo/modules/kotlin/AppContext;Ljava/net/URI;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "uri":Ljava/net/URI;
    .end local v3    # "localUrl":Ljava/io/File;
    if-ne v2, v0, :cond_2

    .line 0
    return-object v0

    .line 284
    :cond_2
    move-object v0, v1

    move v1, v4

    .end local v4    # "$i$a$-Coroutine-AssetModule$definition$1$1":I
    .restart local v0    # "this":Lexpo/modules/asset/AssetModule$definition$lambda$3$$inlined$Coroutine$4;
    .local v1, "$i$a$-Coroutine-AssetModule$definition$1$1":I
    :goto_1
    move-object v1, v0

    goto :goto_4

    .line 287
    .end local v0    # "this":Lexpo/modules/asset/AssetModule$definition$lambda$3$$inlined$Coroutine$4;
    .local v1, "this":Lexpo/modules/asset/AssetModule$definition$lambda$3$$inlined$Coroutine$4;
    .restart local v2    # "uri":Ljava/net/URI;
    .restart local v3    # "localUrl":Ljava/io/File;
    .restart local v4    # "$i$a$-Coroutine-AssetModule$definition$1$1":I
    .restart local v9    # "md5Hash":Ljava/lang/String;
    :cond_3
    if-eqz v9, :cond_6

    iget-object v5, v1, Lexpo/modules/asset/AssetModule$definition$lambda$3$$inlined$Coroutine$4;->this$0:Lexpo/modules/asset/AssetModule;

    invoke-static {v5, v3}, Lexpo/modules/asset/AssetModule;->access$getMD5HashOfFileContent(Lexpo/modules/asset/AssetModule;Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    .line 291
    .end local v9    # "md5Hash":Ljava/lang/String;
    :cond_4
    iget-object v5, v1, Lexpo/modules/asset/AssetModule$definition$lambda$3$$inlined$Coroutine$4;->this$0:Lexpo/modules/asset/AssetModule;

    iget-object v6, v1, Lexpo/modules/asset/AssetModule$definition$lambda$3$$inlined$Coroutine$4;->this$0:Lexpo/modules/asset/AssetModule;

    invoke-virtual {v6}, Lexpo/modules/asset/AssetModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v6

    iput v7, v1, Lexpo/modules/asset/AssetModule$definition$lambda$3$$inlined$Coroutine$4;->label:I

    invoke-static {v5, v6, v2, v3, v1}, Lexpo/modules/asset/AssetModule;->access$downloadAsset(Lexpo/modules/asset/AssetModule;Lexpo/modules/kotlin/AppContext;Ljava/net/URI;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "uri":Ljava/net/URI;
    .end local v3    # "localUrl":Ljava/io/File;
    if-ne v2, v0, :cond_5

    .line 0
    return-object v0

    .line 291
    :cond_5
    move-object v0, v1

    move v1, v4

    .end local v4    # "$i$a$-Coroutine-AssetModule$definition$1$1":I
    .restart local v0    # "this":Lexpo/modules/asset/AssetModule$definition$lambda$3$$inlined$Coroutine$4;
    .local v1, "$i$a$-Coroutine-AssetModule$definition$1$1":I
    :goto_2
    move-object v1, v0

    goto :goto_4

    .line 288
    .end local v0    # "this":Lexpo/modules/asset/AssetModule$definition$lambda$3$$inlined$Coroutine$4;
    .local v1, "this":Lexpo/modules/asset/AssetModule$definition$lambda$3$$inlined$Coroutine$4;
    .restart local v3    # "localUrl":Ljava/io/File;
    .restart local v4    # "$i$a$-Coroutine-AssetModule$definition$1$1":I
    :cond_6
    :goto_3
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 47
    .end local v3    # "localUrl":Ljava/io/File;
    .end local v4    # "$i$a$-Coroutine-AssetModule$definition$1$1":I
    :goto_4
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
