.class final Lexpo/modules/imagepicker/ImagePickerModule$definition$1$6$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ImagePickerModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/imagepicker/ImagePickerModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;"
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
    c = "expo.modules.imagepicker.ImagePickerModule$definition$1$6$1"
    f = "ImagePickerModule.kt"
    i = {}
    l = {
        0x57
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $contractOptions:Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;

.field label:I

.field final synthetic this$0:Lexpo/modules/imagepicker/ImagePickerModule;


# direct methods
.method constructor <init>(Lexpo/modules/imagepicker/ImagePickerModule;Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/imagepicker/ImagePickerModule;",
            "Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/imagepicker/ImagePickerModule$definition$1$6$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$6$1;->this$0:Lexpo/modules/imagepicker/ImagePickerModule;

    iput-object p2, p0, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$6$1;->$contractOptions:Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$6$1;

    iget-object v1, p0, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$6$1;->this$0:Lexpo/modules/imagepicker/ImagePickerModule;

    iget-object v2, p0, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$6$1;->$contractOptions:Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;

    invoke-direct {v0, v1, v2, p1}, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$6$1;-><init>(Lexpo/modules/imagepicker/ImagePickerModule;Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$6$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$6$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$6$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$6$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 87
    iget v1, p0, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$6$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lexpo/modules/imagepicker/ImagePickerModule$definition$1$6$1;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p1

    goto :goto_0

    .end local v0    # "this":Lexpo/modules/imagepicker/ImagePickerModule$definition$1$6$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .local v1, "this":Lexpo/modules/imagepicker/ImagePickerModule$definition$1$6$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$6$1;->this$0:Lexpo/modules/imagepicker/ImagePickerModule;

    invoke-static {v2}, Lexpo/modules/imagepicker/ImagePickerModule;->access$getImageLibraryLauncher$p(Lexpo/modules/imagepicker/ImagePickerModule;)Lexpo/modules/kotlin/activityresult/AppContextActivityResultLauncher;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "imageLibraryLauncher"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    iget-object v3, v1, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$6$1;->$contractOptions:Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;

    check-cast v3, Ljava/io/Serializable;

    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/Continuation;

    const/4 v5, 0x1

    iput v5, v1, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$6$1;->label:I

    invoke-virtual {v2, v3, v4}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultLauncher;->launch(Ljava/io/Serializable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_1

    return-object v0

    :cond_1
    move-object v0, v1

    .end local v1    # "this":Lexpo/modules/imagepicker/ImagePickerModule$definition$1$6$1;
    .restart local v0    # "this":Lexpo/modules/imagepicker/ImagePickerModule$definition$1$6$1;
    :goto_0
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
