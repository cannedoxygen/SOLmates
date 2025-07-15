.class public final Lexpo/modules/passkeys/ReactNativePasskeysModule$definition$lambda$4$$inlined$AsyncFunctionWithPromise$4;
.super Lkotlin/jvm/internal/Lambda;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/passkeys/ReactNativePasskeysModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "[",
        "Ljava/lang/Object;",
        "Lexpo/modules/kotlin/Promise;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$10\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 ReactNativePasskeysModule.kt\nexpo/modules/passkeys/ReactNativePasskeysModule\n*L\n1#1,611:1\n8#2,4:612\n76#3:616\n75#3,7:617\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$10\n*L\n273#1:612,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001\"\u0006\u0008\u0001\u0010\u0003\u0018\u00012\u0010\u0010\u0004\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00060\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\n\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "P0",
        "<name for destructuring parameter 0>",
        "",
        "",
        "promise",
        "Lexpo/modules/kotlin/Promise;",
        "invoke",
        "([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V",
        "expo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$10"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lexpo/modules/passkeys/ReactNativePasskeysModule;


# direct methods
.method public constructor <init>(Lexpo/modules/passkeys/ReactNativePasskeysModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/passkeys/ReactNativePasskeysModule$definition$lambda$4$$inlined$AsyncFunctionWithPromise$4;->this$0:Lexpo/modules/passkeys/ReactNativePasskeysModule;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 275
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v1, p2

    check-cast v1, Lexpo/modules/kotlin/Promise;

    invoke-virtual {p0, v0, v1}, Lexpo/modules/passkeys/ReactNativePasskeysModule$definition$lambda$4$$inlined$AsyncFunctionWithPromise$4;->invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V
    .locals 26
    .param p2, "promise"    # Lexpo/modules/kotlin/Promise;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "<name for destructuring parameter 0>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "promise"

    move-object/from16 v9, p2

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 273
    .local v1, "p0":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 612
    .local v2, "$i$f$enforceType":I
    nop

    .line 615
    nop

    .line 274
    .end local v2    # "$i$f$enforceType":I
    move-object v2, v1

    check-cast v2, LPublicKeyCredentialRequestOptions;

    .local v2, "request":LPublicKeyCredentialRequestOptions;
    move-object/from16 v5, p2

    .local v5, "promise":Lexpo/modules/kotlin/Promise;
    const/4 v10, 0x0

    .line 616
    .local v10, "$i$a$-AsyncFunctionWithPromise-ReactNativePasskeysModule$definition$1$4":I
    sget-object v3, Landroidx/credentials/CredentialManager;->Companion:Landroidx/credentials/CredentialManager$Companion;

    iget-object v4, v0, Lexpo/modules/passkeys/ReactNativePasskeysModule$definition$lambda$4$$inlined$AsyncFunctionWithPromise$4;->this$0:Lexpo/modules/passkeys/ReactNativePasskeysModule;

    invoke-virtual {v4}, Lexpo/modules/passkeys/ReactNativePasskeysModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v4

    invoke-virtual {v4}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroidx/credentials/CredentialManager$Companion;->create(Landroid/content/Context;)Landroidx/credentials/CredentialManager;

    move-result-object v6

    .line 617
    nop

    .line 619
    .local v6, "credentialManager":Landroidx/credentials/CredentialManager;
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 621
    .local v17, "json":Ljava/lang/String;
    new-instance v7, Landroidx/credentials/GetCredentialRequest;

    new-instance v3, Landroidx/credentials/GetPublicKeyCredentialOption;

    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v15, 0x6

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v11, v3

    move-object/from16 v12, v17

    invoke-direct/range {v11 .. v16}, Landroidx/credentials/GetPublicKeyCredentialOption;-><init>(Ljava/lang/String;[BLjava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    const/16 v24, 0x1e

    const/16 v25, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v7

    invoke-direct/range {v18 .. v25}, Landroidx/credentials/GetCredentialRequest;-><init>(Ljava/util/List;Ljava/lang/String;ZLandroid/content/ComponentName;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 620
    nop

    .line 623
    .local v7, "getCredentialRequest":Landroidx/credentials/GetCredentialRequest;
    iget-object v3, v0, Lexpo/modules/passkeys/ReactNativePasskeysModule$definition$lambda$4$$inlined$AsyncFunctionWithPromise$4;->this$0:Lexpo/modules/passkeys/ReactNativePasskeysModule;

    invoke-static {v3}, Lexpo/modules/passkeys/ReactNativePasskeysModule;->access$getMainScope$p(Lexpo/modules/passkeys/ReactNativePasskeysModule;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v11

    new-instance v12, Lexpo/modules/passkeys/ReactNativePasskeysModule$definition$1$4$1;

    iget-object v4, v0, Lexpo/modules/passkeys/ReactNativePasskeysModule$definition$lambda$4$$inlined$AsyncFunctionWithPromise$4;->this$0:Lexpo/modules/passkeys/ReactNativePasskeysModule;

    const/4 v8, 0x0

    move-object v3, v12

    invoke-direct/range {v3 .. v8}, Lexpo/modules/passkeys/ReactNativePasskeysModule$definition$1$4$1;-><init>(Lexpo/modules/passkeys/ReactNativePasskeysModule;Lexpo/modules/kotlin/Promise;Landroidx/credentials/CredentialManager;Landroidx/credentials/GetCredentialRequest;Lkotlin/coroutines/Continuation;)V

    move-object v14, v12

    check-cast v14, Lkotlin/jvm/functions/Function2;

    const/4 v15, 0x3

    const/4 v12, 0x0

    invoke-static/range {v11 .. v16}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 274
    .end local v2    # "request":LPublicKeyCredentialRequestOptions;
    .end local v5    # "promise":Lexpo/modules/kotlin/Promise;
    .end local v6    # "credentialManager":Landroidx/credentials/CredentialManager;
    .end local v7    # "getCredentialRequest":Landroidx/credentials/GetCredentialRequest;
    .end local v10    # "$i$a$-AsyncFunctionWithPromise-ReactNativePasskeysModule$definition$1$4":I
    .end local v17    # "json":Ljava/lang/String;
    nop

    .line 275
    return-void
.end method
