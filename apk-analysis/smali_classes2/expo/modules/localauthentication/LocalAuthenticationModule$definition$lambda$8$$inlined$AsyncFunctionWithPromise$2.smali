.class public final Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$AsyncFunctionWithPromise$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/localauthentication/LocalAuthenticationModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
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
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$10\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 LocalAuthenticationModule.kt\nexpo/modules/localauthentication/LocalAuthenticationModule\n*L\n1#1,611:1\n8#2,4:612\n78#3,23:616\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$10\n*L\n273#1:612,4\n*E\n"
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
.field final synthetic this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;


# direct methods
.method public constructor <init>(Lexpo/modules/localauthentication/LocalAuthenticationModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$AsyncFunctionWithPromise$2;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

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

    invoke-virtual {p0, v0, v1}, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$AsyncFunctionWithPromise$2;->invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V
    .locals 19
    .param p2, "promise"    # Lexpo/modules/kotlin/Promise;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "<name for destructuring parameter 0>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "promise"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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

    check-cast v2, Lexpo/modules/localauthentication/AuthOptions;

    .local v2, "options":Lexpo/modules/localauthentication/AuthOptions;
    move-object/from16 v10, p2

    .local v10, "promise":Lexpo/modules/kotlin/Promise;
    const/4 v11, 0x0

    .line 616
    .local v11, "$i$a$-AsyncFunctionWithPromise-LocalAuthenticationModule$definition$1$5":I
    iget-object v4, v0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$AsyncFunctionWithPromise$2;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    invoke-virtual {v4}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v4

    invoke-virtual {v4}, Lexpo/modules/kotlin/AppContext;->getThrowingActivity()Landroid/app/Activity;

    move-result-object v4

    instance-of v5, v4, Landroidx/fragment/app/FragmentActivity;

    if-eqz v5, :cond_0

    check-cast v4, Landroidx/fragment/app/FragmentActivity;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move-object v12, v4

    .line 617
    .local v12, "fragmentActivity":Landroidx/fragment/app/FragmentActivity;
    if-nez v12, :cond_1

    .line 618
    new-instance v4, Lexpo/modules/kotlin/exception/Exceptions$MissingActivity;

    invoke-direct {v4}, Lexpo/modules/kotlin/exception/Exceptions$MissingActivity;-><init>()V

    check-cast v4, Lexpo/modules/kotlin/exception/CodedException;

    invoke-interface {v10, v4}, Lexpo/modules/kotlin/Promise;->reject(Lexpo/modules/kotlin/exception/CodedException;)V

    .line 619
    goto :goto_1

    .line 621
    :cond_1
    iget-object v4, v0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$AsyncFunctionWithPromise$2;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    invoke-static {v4}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$getKeyguardManager(Lexpo/modules/localauthentication/LocalAuthenticationModule;)Landroid/app/KeyguardManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v4

    if-nez v4, :cond_2

    .line 622
    nop

    .line 623
    iget-object v4, v0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$AsyncFunctionWithPromise$2;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    .line 624
    nop

    .line 625
    nop

    .line 623
    const-string v5, "not_enrolled"

    const-string v6, "KeyguardManager#isDeviceSecure() returned false"

    invoke-static {v4, v5, v6}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$createResponse(Lexpo/modules/localauthentication/LocalAuthenticationModule;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 622
    invoke-interface {v10, v4}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V

    .line 628
    goto :goto_1

    .line 631
    :cond_2
    iget-object v4, v0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$AsyncFunctionWithPromise$2;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    invoke-static {v4, v2}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$setAuthOptions$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;Lexpo/modules/localauthentication/AuthOptions;)V

    .line 635
    iget-object v4, v0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$AsyncFunctionWithPromise$2;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    invoke-virtual {v4}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v4

    invoke-virtual {v4}, Lexpo/modules/kotlin/AppContext;->getMainQueue()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v13

    new-instance v14, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$1$5$1;

    iget-object v5, v0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$AsyncFunctionWithPromise$2;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    const/4 v9, 0x0

    move-object v4, v14

    move-object v6, v12

    move-object v7, v2

    move-object v8, v10

    invoke-direct/range {v4 .. v9}, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$1$5$1;-><init>(Lexpo/modules/localauthentication/LocalAuthenticationModule;Landroidx/fragment/app/FragmentActivity;Lexpo/modules/localauthentication/AuthOptions;Lexpo/modules/kotlin/Promise;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v16, v14

    check-cast v16, Lkotlin/jvm/functions/Function2;

    const/16 v17, 0x3

    const/16 v18, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v13 .. v18}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 638
    nop

    .line 274
    .end local v2    # "options":Lexpo/modules/localauthentication/AuthOptions;
    .end local v10    # "promise":Lexpo/modules/kotlin/Promise;
    .end local v11    # "$i$a$-AsyncFunctionWithPromise-LocalAuthenticationModule$definition$1$5":I
    .end local v12    # "fragmentActivity":Landroidx/fragment/app/FragmentActivity;
    :goto_1
    nop

    .line 275
    return-void
.end method
