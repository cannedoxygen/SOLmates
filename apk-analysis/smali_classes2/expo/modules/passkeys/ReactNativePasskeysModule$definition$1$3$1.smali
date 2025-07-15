.class final Lexpo/modules/passkeys/ReactNativePasskeysModule$definition$1$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ReactNativePasskeysModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/passkeys/ReactNativePasskeysModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
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
    c = "expo.modules.passkeys.ReactNativePasskeysModule$definition$1$3$1"
    f = "ReactNativePasskeysModule.kt"
    i = {}
    l = {
        0x3d
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $createPublicKeyCredentialRequest:Landroidx/credentials/CreatePublicKeyCredentialRequest;

.field final synthetic $credentialManager:Landroidx/credentials/CredentialManager;

.field final synthetic $promise:Lexpo/modules/kotlin/Promise;

.field label:I

.field final synthetic this$0:Lexpo/modules/passkeys/ReactNativePasskeysModule;


# direct methods
.method constructor <init>(Lexpo/modules/passkeys/ReactNativePasskeysModule;Lexpo/modules/kotlin/Promise;Landroidx/credentials/CredentialManager;Landroidx/credentials/CreatePublicKeyCredentialRequest;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/passkeys/ReactNativePasskeysModule;",
            "Lexpo/modules/kotlin/Promise;",
            "Landroidx/credentials/CredentialManager;",
            "Landroidx/credentials/CreatePublicKeyCredentialRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/passkeys/ReactNativePasskeysModule$definition$1$3$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/passkeys/ReactNativePasskeysModule$definition$1$3$1;->this$0:Lexpo/modules/passkeys/ReactNativePasskeysModule;

    iput-object p2, p0, Lexpo/modules/passkeys/ReactNativePasskeysModule$definition$1$3$1;->$promise:Lexpo/modules/kotlin/Promise;

    iput-object p3, p0, Lexpo/modules/passkeys/ReactNativePasskeysModule$definition$1$3$1;->$credentialManager:Landroidx/credentials/CredentialManager;

    iput-object p4, p0, Lexpo/modules/passkeys/ReactNativePasskeysModule$definition$1$3$1;->$createPublicKeyCredentialRequest:Landroidx/credentials/CreatePublicKeyCredentialRequest;

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

    new-instance v6, Lexpo/modules/passkeys/ReactNativePasskeysModule$definition$1$3$1;

    iget-object v1, p0, Lexpo/modules/passkeys/ReactNativePasskeysModule$definition$1$3$1;->this$0:Lexpo/modules/passkeys/ReactNativePasskeysModule;

    iget-object v2, p0, Lexpo/modules/passkeys/ReactNativePasskeysModule$definition$1$3$1;->$promise:Lexpo/modules/kotlin/Promise;

    iget-object v3, p0, Lexpo/modules/passkeys/ReactNativePasskeysModule$definition$1$3$1;->$credentialManager:Landroidx/credentials/CredentialManager;

    iget-object v4, p0, Lexpo/modules/passkeys/ReactNativePasskeysModule$definition$1$3$1;->$createPublicKeyCredentialRequest:Landroidx/credentials/CreatePublicKeyCredentialRequest;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lexpo/modules/passkeys/ReactNativePasskeysModule$definition$1$3$1;-><init>(Lexpo/modules/passkeys/ReactNativePasskeysModule;Lexpo/modules/kotlin/Promise;Landroidx/credentials/CredentialManager;Landroidx/credentials/CreatePublicKeyCredentialRequest;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/coroutines/Continuation;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/passkeys/ReactNativePasskeysModule$definition$1$3$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lexpo/modules/passkeys/ReactNativePasskeysModule$definition$1$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lexpo/modules/passkeys/ReactNativePasskeysModule$definition$1$3$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lexpo/modules/passkeys/ReactNativePasskeysModule$definition$1$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 58
    iget v1, p0, Lexpo/modules/passkeys/ReactNativePasskeysModule$definition$1$3$1;->label:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lexpo/modules/passkeys/ReactNativePasskeysModule$definition$1$3$1;
    .local p1, "$result":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "$i$a$-let-ReactNativePasskeysModule$definition$1$3$1$result$1":I
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroidx/credentials/exceptions/CreateCredentialException; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v1

    move-object v1, v0

    move-object v0, p1

    goto :goto_0

    .line 68
    .end local v1    # "$i$a$-let-ReactNativePasskeysModule$definition$1$3$1$result$1":I
    :catch_0
    move-exception v1

    goto/16 :goto_2

    .line 58
    .end local v0    # "this":Lexpo/modules/passkeys/ReactNativePasskeysModule$definition$1$3$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 59
    .local v1, "this":Lexpo/modules/passkeys/ReactNativePasskeysModule$definition$1$3$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    nop

    .line 60
    :try_start_1
    iget-object v3, v1, Lexpo/modules/passkeys/ReactNativePasskeysModule$definition$1$3$1;->this$0:Lexpo/modules/passkeys/ReactNativePasskeysModule;

    invoke-virtual {v3}, Lexpo/modules/passkeys/ReactNativePasskeysModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v3

    invoke-virtual {v3}, Lexpo/modules/kotlin/AppContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, v1, Lexpo/modules/passkeys/ReactNativePasskeysModule$definition$1$3$1;->$credentialManager:Landroidx/credentials/CredentialManager;

    iget-object v5, v1, Lexpo/modules/passkeys/ReactNativePasskeysModule$definition$1$3$1;->$createPublicKeyCredentialRequest:Landroidx/credentials/CreatePublicKeyCredentialRequest;

    .local v3, "it":Landroid/app/Activity;
    const/4 v6, 0x0

    .line 61
    .local v6, "$i$a$-let-ReactNativePasskeysModule$definition$1$3$1$result$1":I
    move-object v7, v3

    check-cast v7, Landroid/content/Context;

    check-cast v5, Landroidx/credentials/CreateCredentialRequest;

    const/4 v8, 0x1

    iput v8, v1, Lexpo/modules/passkeys/ReactNativePasskeysModule$definition$1$3$1;->label:I

    invoke-interface {v4, v7, v5, v1}, Landroidx/credentials/CredentialManager;->createCredential(Landroid/content/Context;Landroidx/credentials/CreateCredentialRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catch Landroidx/credentials/exceptions/CreateCredentialException; {:try_start_1 .. :try_end_1} :catch_2

    .end local v3    # "it":Landroid/app/Activity;
    if-ne v4, v0, :cond_0

    .line 58
    return-object v0

    .line 61
    :cond_0
    move-object v0, p1

    move-object p1, v4

    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    :goto_0
    :try_start_2
    check-cast p1, Landroidx/credentials/CreateCredentialResponse;

    .line 60
    .end local v6    # "$i$a$-let-ReactNativePasskeysModule$definition$1$3$1$result$1":I
    goto :goto_1

    .line 68
    :catch_1
    move-exception p1

    move-object v9, v1

    move-object v1, p1

    move-object p1, v0

    move-object v0, v9

    goto :goto_2

    .line 60
    .end local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$result":Ljava/lang/Object;
    :cond_1
    move-object v0, p1

    move-object p1, v2

    .line 64
    .restart local v0    # "$result":Ljava/lang/Object;
    .local p1, "result":Landroidx/credentials/CreateCredentialResponse;
    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/credentials/CreateCredentialResponse;->getData()Landroid/os/Bundle;

    move-result-object v3

    .end local p1    # "result":Landroidx/credentials/CreateCredentialResponse;
    if-eqz v3, :cond_2

    const-string p1, "androidx.credentials.BUNDLE_KEY_REGISTRATION_RESPONSE_JSON"

    invoke-virtual {v3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 63
    :cond_2
    move-object p1, v2

    .line 66
    .local p1, "response":Ljava/lang/String;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, LRegistrationResponseJSON;

    invoke-virtual {v2, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LRegistrationResponseJSON;

    .line 65
    nop

    .line 67
    .local v2, "createCredentialResponse":LRegistrationResponseJSON;
    iget-object v3, v1, Lexpo/modules/passkeys/ReactNativePasskeysModule$definition$1$3$1;->$promise:Lexpo/modules/kotlin/Promise;

    invoke-interface {v3, v2}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_2
    .catch Landroidx/credentials/exceptions/CreateCredentialException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v2    # "createCredentialResponse":LRegistrationResponseJSON;
    .end local p1    # "response":Ljava/lang/String;
    goto :goto_3

    .line 68
    .end local v0    # "$result":Ljava/lang/Object;
    .local p1, "$result":Ljava/lang/Object;
    :catch_2
    move-exception v0

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    .line 69
    .local v0, "this":Lexpo/modules/passkeys/ReactNativePasskeysModule$definition$1$3$1;
    .local v1, "e":Landroidx/credentials/exceptions/CreateCredentialException;
    :goto_2
    iget-object v2, v0, Lexpo/modules/passkeys/ReactNativePasskeysModule$definition$1$3$1;->$promise:Lexpo/modules/kotlin/Promise;

    iget-object v3, v0, Lexpo/modules/passkeys/ReactNativePasskeysModule$definition$1$3$1;->this$0:Lexpo/modules/passkeys/ReactNativePasskeysModule;

    invoke-static {v3, v1}, Lexpo/modules/passkeys/ReactNativePasskeysModule;->access$getRegistrationException(Lexpo/modules/passkeys/ReactNativePasskeysModule;Landroidx/credentials/exceptions/CreateCredentialException;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    const-string v5, "Passkey Create"

    invoke-interface {v2, v5, v3, v4}, Lexpo/modules/kotlin/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    move-object v0, p1

    .line 71
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .local v1, "this":Lexpo/modules/passkeys/ReactNativePasskeysModule$definition$1$3$1;
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
