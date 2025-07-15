.class final Lexpo/modules/imagepicker/ImagePickerModule$launchContract$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ImagePickerModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/imagepicker/ImagePickerModule;->launchContract(Lkotlin/jvm/functions/Function1;Lexpo/modules/imagepicker/ImagePickerOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "expo.modules.imagepicker.ImagePickerModule$launchContract$2"
    f = "ImagePickerModule.kt"
    i = {}
    l = {
        0xd8
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $options:Lexpo/modules/imagepicker/ImagePickerOptions;

.field final synthetic $result:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Success;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lexpo/modules/imagepicker/ImagePickerModule;


# direct methods
.method constructor <init>(Lexpo/modules/imagepicker/ImagePickerModule;Lkotlin/jvm/internal/Ref$ObjectRef;Lexpo/modules/imagepicker/ImagePickerOptions;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/imagepicker/ImagePickerModule;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Success;",
            ">;",
            "Lexpo/modules/imagepicker/ImagePickerOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/imagepicker/ImagePickerModule$launchContract$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$2;->this$0:Lexpo/modules/imagepicker/ImagePickerModule;

    iput-object p2, p0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$2;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$2;->$options:Lexpo/modules/imagepicker/ImagePickerOptions;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$2;

    iget-object v1, p0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$2;->this$0:Lexpo/modules/imagepicker/ImagePickerModule;

    iget-object v2, p0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$2;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$2;->$options:Lexpo/modules/imagepicker/ImagePickerOptions;

    invoke-direct {v0, v1, v2, v3, p1}, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$2;-><init>(Lexpo/modules/imagepicker/ImagePickerModule;Lkotlin/jvm/internal/Ref$ObjectRef;Lexpo/modules/imagepicker/ImagePickerOptions;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$2;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1}, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 215
    iget v1, p0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$2;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lexpo/modules/imagepicker/ImagePickerModule$launchContract$2;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p1

    goto :goto_0

    .end local v0    # "this":Lexpo/modules/imagepicker/ImagePickerModule$launchContract$2;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 216
    .local v1, "this":Lexpo/modules/imagepicker/ImagePickerModule$launchContract$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$2;->this$0:Lexpo/modules/imagepicker/ImagePickerModule;

    invoke-static {v2}, Lexpo/modules/imagepicker/ImagePickerModule;->access$getCropImageLauncher$p(Lexpo/modules/imagepicker/ImagePickerModule;)Lexpo/modules/kotlin/activityresult/AppContextActivityResultLauncher;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "cropImageLauncher"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    new-instance v3, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;

    iget-object v4, v1, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$2;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Success;

    invoke-virtual {v4}, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Success;->getData()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/Pair;

    invoke-virtual {v4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "toString(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v1, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$2;->$options:Lexpo/modules/imagepicker/ImagePickerOptions;

    invoke-direct {v3, v4, v5}, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;-><init>(Ljava/lang/String;Lexpo/modules/imagepicker/ImagePickerOptions;)V

    check-cast v3, Ljava/io/Serializable;

    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/Continuation;

    const/4 v5, 0x1

    iput v5, v1, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$2;->label:I

    invoke-virtual {v2, v3, v4}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultLauncher;->launch(Ljava/io/Serializable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_1

    .line 215
    return-object v0

    .line 216
    :cond_1
    move-object v0, v1

    .end local v1    # "this":Lexpo/modules/imagepicker/ImagePickerModule$launchContract$2;
    .restart local v0    # "this":Lexpo/modules/imagepicker/ImagePickerModule$launchContract$2;
    :goto_0
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
