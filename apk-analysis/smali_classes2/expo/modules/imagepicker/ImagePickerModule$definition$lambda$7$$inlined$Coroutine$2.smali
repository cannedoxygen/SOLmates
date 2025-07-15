.class public final Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$Coroutine$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AsyncFunctionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/imagepicker/ImagePickerModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
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
    value = "SMAP\nAsyncFunctionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncFunctionBuilder.kt\nexpo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$3\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 ImagePickerModule.kt\nexpo/modules/imagepicker/ImagePickerModule\n*L\n1#1,269:1\n8#2,4:270\n70#3,13:274\n*S KotlinDebug\n*F\n+ 1 AsyncFunctionBuilder.kt\nexpo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$3\n*L\n28#1:270,4\n*E\n"
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
    c = "expo.modules.imagepicker.ImagePickerModule$definition$lambda$7$$inlined$Coroutine$2"
    f = "ImagePickerModule.kt"
    i = {
        0x0,
        0x1
    }
    l = {
        0x113,
        0x11b
    }
    m = "invokeSuspend"
    n = {
        "options",
        "tempFile"
    }
    s = {
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lexpo/modules/imagepicker/ImagePickerModule;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lexpo/modules/imagepicker/ImagePickerModule;)V
    .locals 0

    iput-object p2, p0, Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$Coroutine$2;->this$0:Lexpo/modules/imagepicker/ImagePickerModule;

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

    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$Coroutine$2;->invoke(Lkotlinx/coroutines/CoroutineScope;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    new-instance v0, Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$Coroutine$2;

    iget-object v1, p0, Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$Coroutine$2;->this$0:Lexpo/modules/imagepicker/ImagePickerModule;

    invoke-direct {v0, p3, v1}, Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$Coroutine$2;-><init>(Lkotlin/coroutines/Continuation;Lexpo/modules/imagepicker/ImagePickerModule;)V

    iput-object p2, v0, Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$Coroutine$2;->L$0:Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$Coroutine$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 0
    iget v1, p0, Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$Coroutine$2;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$Coroutine$2;
    .local p1, "$result":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "$i$a$-Coroutine-ImagePickerModule$definition$1$5":I
    iget-object v2, v0, Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$Coroutine$2;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    .local v2, "tempFile":Ljava/io/File;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v2

    move v2, v1

    move-object v1, v0

    move-object v0, p1

    goto/16 :goto_1

    .line 285
    :catchall_0
    move-exception v3

    goto/16 :goto_2

    .line 0
    .end local v0    # "this":Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$Coroutine$2;
    .end local v1    # "$i$a$-Coroutine-ImagePickerModule$definition$1$5":I
    .end local v2    # "tempFile":Ljava/io/File;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object v1, p0

    .local v1, "this":Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$Coroutine$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "$i$a$-Coroutine-ImagePickerModule$definition$1$5":I
    iget-object v3, v1, Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$Coroutine$2;->L$0:Ljava/lang/Object;

    check-cast v3, Lexpo/modules/imagepicker/ImagePickerOptions;

    .local v3, "options":Lexpo/modules/imagepicker/ImagePickerOptions;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v1    # "this":Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$Coroutine$2;
    .end local v2    # "$i$a$-Coroutine-ImagePickerModule$definition$1$5":I
    .end local v3    # "options":Lexpo/modules/imagepicker/ImagePickerOptions;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .restart local v1    # "this":Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$Coroutine$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$Coroutine$2;->L$0:Ljava/lang/Object;

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

    move-object v3, v2

    check-cast v3, Lexpo/modules/imagepicker/ImagePickerOptions;

    .end local v2    # "p0":Ljava/lang/Object;
    .local v3, "options":Lexpo/modules/imagepicker/ImagePickerOptions;
    const/4 v2, 0x0

    .line 274
    .local v2, "$i$a$-Coroutine-ImagePickerModule$definition$1$5":I
    iget-object v4, v1, Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$Coroutine$2;->this$0:Lexpo/modules/imagepicker/ImagePickerModule;

    invoke-static {v4, v3}, Lexpo/modules/imagepicker/ImagePickerModule;->access$ensureTargetActivityIsAvailable(Lexpo/modules/imagepicker/ImagePickerModule;Lexpo/modules/imagepicker/ImagePickerOptions;)V

    .line 275
    iget-object v4, v1, Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$Coroutine$2;->this$0:Lexpo/modules/imagepicker/ImagePickerModule;

    iput-object v3, v1, Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$Coroutine$2;->L$0:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, v1, Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$Coroutine$2;->label:I

    invoke-static {v4, v1}, Lexpo/modules/imagepicker/ImagePickerModule;->access$ensureCameraPermissionsAreGranted(Lexpo/modules/imagepicker/ImagePickerModule;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_0

    .line 0
    return-object v0

    .line 277
    :cond_0
    :goto_0
    iget-object v4, v1, Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$Coroutine$2;->this$0:Lexpo/modules/imagepicker/ImagePickerModule;

    invoke-static {v4}, Lexpo/modules/imagepicker/ImagePickerModule;->access$getCacheDirectory(Lexpo/modules/imagepicker/ImagePickerModule;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3}, Lexpo/modules/imagepicker/ImagePickerOptions;->getNativeMediaTypes()Lexpo/modules/imagepicker/MediaTypes;

    move-result-object v5

    invoke-virtual {v5}, Lexpo/modules/imagepicker/MediaTypes;->toFileExtension()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->createOutputFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 279
    .local v4, "tempFile":Ljava/io/File;
    nop

    .line 280
    :try_start_1
    iget-object v5, v1, Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$Coroutine$2;->this$0:Lexpo/modules/imagepicker/ImagePickerModule;

    invoke-virtual {v5}, Lexpo/modules/imagepicker/ImagePickerModule;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->toContentUri(Ljava/io/File;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v5

    .line 281
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .end local v5    # "uri":Landroid/net/Uri;
    const-string v5, "toString(...)"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lexpo/modules/imagepicker/ImagePickerOptions;->toCameraContractOptions(Ljava/lang/String;)Lexpo/modules/imagepicker/contracts/CameraContractOptions;

    move-result-object v5

    .line 283
    .local v5, "contractOptions":Lexpo/modules/imagepicker/contracts/CameraContractOptions;
    iget-object v6, v1, Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$Coroutine$2;->this$0:Lexpo/modules/imagepicker/ImagePickerModule;

    new-instance v7, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$5$1;

    iget-object v8, v1, Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$Coroutine$2;->this$0:Lexpo/modules/imagepicker/ImagePickerModule;

    const/4 v9, 0x0

    invoke-direct {v7, v8, v5, v9}, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$5$1;-><init>(Lexpo/modules/imagepicker/ImagePickerModule;Lexpo/modules/imagepicker/contracts/CameraContractOptions;Lkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function1;

    iput-object v4, v1, Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$Coroutine$2;->L$0:Ljava/lang/Object;

    const/4 v8, 0x2

    iput v8, v1, Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$Coroutine$2;->label:I

    invoke-static {v6, v7, v3, v1}, Lexpo/modules/imagepicker/ImagePickerModule;->access$launchContract(Lexpo/modules/imagepicker/ImagePickerModule;Lkotlin/jvm/functions/Function1;Lexpo/modules/imagepicker/ImagePickerOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v3    # "options":Lexpo/modules/imagepicker/ImagePickerOptions;
    .end local v5    # "contractOptions":Lexpo/modules/imagepicker/contracts/CameraContractOptions;
    if-ne v6, v0, :cond_1

    .line 0
    return-object v0

    .line 283
    :cond_1
    move-object v0, p1

    move-object p1, v6

    .line 285
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    :goto_1
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 286
    .end local v4    # "tempFile":Ljava/io/File;
    move-object v3, v4

    .line 279
    .local v3, "tempFile":Ljava/io/File;
    nop

    .line 29
    .end local v2    # "$i$a$-Coroutine-ImagePickerModule$definition$1$5":I
    .end local v3    # "tempFile":Ljava/io/File;
    return-object p1

    .line 285
    .end local v0    # "$result":Ljava/lang/Object;
    .restart local v2    # "$i$a$-Coroutine-ImagePickerModule$definition$1$5":I
    .restart local v4    # "tempFile":Ljava/io/File;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_1
    move-exception v3

    move-object v0, v1

    move v1, v2

    move-object v2, v4

    .end local v4    # "tempFile":Ljava/io/File;
    .local v0, "this":Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$Coroutine$2;
    .local v1, "$i$a$-Coroutine-ImagePickerModule$definition$1$5":I
    .local v2, "tempFile":Ljava/io/File;
    :goto_2
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
