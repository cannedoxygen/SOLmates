.class final Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$1$5$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LocalAuthenticationModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/localauthentication/LocalAuthenticationModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
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
    c = "expo.modules.localauthentication.LocalAuthenticationModule$definition$1$5$1"
    f = "LocalAuthenticationModule.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $fragmentActivity:Landroidx/fragment/app/FragmentActivity;

.field final synthetic $options:Lexpo/modules/localauthentication/AuthOptions;

.field final synthetic $promise:Lexpo/modules/kotlin/Promise;

.field label:I

.field final synthetic this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;


# direct methods
.method constructor <init>(Lexpo/modules/localauthentication/LocalAuthenticationModule;Landroidx/fragment/app/FragmentActivity;Lexpo/modules/localauthentication/AuthOptions;Lexpo/modules/kotlin/Promise;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/localauthentication/LocalAuthenticationModule;",
            "Landroidx/fragment/app/FragmentActivity;",
            "Lexpo/modules/localauthentication/AuthOptions;",
            "Lexpo/modules/kotlin/Promise;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$1$5$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$1$5$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    iput-object p2, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$1$5$1;->$fragmentActivity:Landroidx/fragment/app/FragmentActivity;

    iput-object p3, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$1$5$1;->$options:Lexpo/modules/localauthentication/AuthOptions;

    iput-object p4, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$1$5$1;->$promise:Lexpo/modules/kotlin/Promise;

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

    new-instance v6, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$1$5$1;

    iget-object v1, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$1$5$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    iget-object v2, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$1$5$1;->$fragmentActivity:Landroidx/fragment/app/FragmentActivity;

    iget-object v3, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$1$5$1;->$options:Lexpo/modules/localauthentication/AuthOptions;

    iget-object v4, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$1$5$1;->$promise:Lexpo/modules/kotlin/Promise;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$1$5$1;-><init>(Lexpo/modules/localauthentication/LocalAuthenticationModule;Landroidx/fragment/app/FragmentActivity;Lexpo/modules/localauthentication/AuthOptions;Lexpo/modules/kotlin/Promise;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/coroutines/Continuation;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$1$5$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$1$5$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$1$5$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$1$5$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 97
    iget v0, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$1$5$1;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p0

    .line 98
    .local v0, "this":Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$1$5$1;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v1, v0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$1$5$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    iget-object v2, v0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$1$5$1;->$fragmentActivity:Landroidx/fragment/app/FragmentActivity;

    iget-object v3, v0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$1$5$1;->$options:Lexpo/modules/localauthentication/AuthOptions;

    iget-object v4, v0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$1$5$1;->$promise:Lexpo/modules/kotlin/Promise;

    invoke-static {v1, v2, v3, v4}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$authenticate(Lexpo/modules/localauthentication/LocalAuthenticationModule;Landroidx/fragment/app/FragmentActivity;Lexpo/modules/localauthentication/AuthOptions;Lexpo/modules/kotlin/Promise;)V

    .line 99
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
