.class public final Lexpo/modules/fetch/ExpoFetchModule$definition$lambda$18$lambda$17$$inlined$AsyncFunctionWithPromise$5;
.super Lkotlin/jvm/internal/Lambda;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/fetch/ExpoFetchModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
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
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$22\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 ExpoFetchModule.kt\nexpo/modules/fetch/ExpoFetchModule\n*L\n1#1,611:1\n29#2,4:612\n125#3,14:616\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$22\n*L\n348#1:612,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001\"\u0006\u0008\u0001\u0010\u0003\u0018\u0001\"\u0006\u0008\u0002\u0010\u0004\u0018\u0001\"\u0006\u0008\u0003\u0010\u0005\u0018\u0001\"\u0006\u0008\u0004\u0010\u0006\u0018\u00012\u0010\u0010\u0007\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\t0\u00082\u0006\u0010\n\u001a\u00020\u000bH\n\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "P0",
        "P1",
        "P2",
        "P3",
        "<name for destructuring parameter 0>",
        "",
        "",
        "promise",
        "Lexpo/modules/kotlin/Promise;",
        "invoke",
        "([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V",
        "expo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$22"
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
.field final synthetic this$0:Lexpo/modules/fetch/ExpoFetchModule;


# direct methods
.method public constructor <init>(Lexpo/modules/fetch/ExpoFetchModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/fetch/ExpoFetchModule$definition$lambda$18$lambda$17$$inlined$AsyncFunctionWithPromise$5;->this$0:Lexpo/modules/fetch/ExpoFetchModule;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 350
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v1, p2

    check-cast v1, Lexpo/modules/kotlin/Promise;

    invoke-virtual {p0, v0, v1}, Lexpo/modules/fetch/ExpoFetchModule$definition$lambda$18$lambda$17$$inlined$AsyncFunctionWithPromise$5;->invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V
    .locals 17
    .param p2, "promise"    # Lexpo/modules/kotlin/Promise;

    move-object/from16 v0, p1

    const-string v1, "<name for destructuring parameter 0>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "promise"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    const/4 v1, 0x0

    aget-object v3, v0, v1

    .local v3, "p0":Ljava/lang/Object;
    const/4 v4, 0x1

    aget-object v5, v0, v4

    .local v5, "p1":Ljava/lang/Object;
    const/4 v6, 0x2

    aget-object v7, v0, v6

    .local v7, "p2":Ljava/lang/Object;
    const/4 v8, 0x3

    aget-object v0, v0, v8

    .line 348
    .local v0, "p3":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 612
    .local v8, "$i$f$enforceType":I
    nop

    .line 615
    nop

    .line 349
    .end local v8    # "$i$f$enforceType":I
    move-object v8, v0

    check-cast v8, [B

    .local v8, "requestBody":[B
    move-object v9, v7

    check-cast v9, Lexpo/modules/fetch/NativeRequestInit;

    .local v9, "requestInit":Lexpo/modules/fetch/NativeRequestInit;
    move-object v10, v5

    check-cast v10, Ljava/net/URL;

    .local v10, "url":Ljava/net/URL;
    move-object v11, v3

    check-cast v11, Lexpo/modules/fetch/NativeRequest;

    .local v11, "request":Lexpo/modules/fetch/NativeRequest;
    move-object/from16 v12, p2

    .local v12, "promise":Lexpo/modules/kotlin/Promise;
    const/4 v13, 0x0

    .line 616
    .local v13, "$i$a$-AsyncFunctionWithPromise-ExpoFetchModule$definition$1$4$2":I
    move-object/from16 v14, p0

    iget-object v15, v14, Lexpo/modules/fetch/ExpoFetchModule$definition$lambda$18$lambda$17$$inlined$AsyncFunctionWithPromise$5;->this$0:Lexpo/modules/fetch/ExpoFetchModule;

    invoke-static {v15}, Lexpo/modules/fetch/ExpoFetchModule;->access$getClient(Lexpo/modules/fetch/ExpoFetchModule;)Lokhttp3/OkHttpClient;

    move-result-object v15

    invoke-virtual {v11, v15, v10, v9, v8}, Lexpo/modules/fetch/NativeRequest;->start(Lokhttp3/OkHttpClient;Ljava/net/URL;Lexpo/modules/fetch/NativeRequestInit;[B)V

    .line 617
    invoke-virtual {v11}, Lexpo/modules/fetch/NativeRequest;->getResponse$expo_debug()Lexpo/modules/fetch/NativeResponse;

    move-result-object v15

    .line 619
    new-array v6, v6, [Lexpo/modules/fetch/ResponseState;

    sget-object v16, Lexpo/modules/fetch/ResponseState;->RESPONSE_RECEIVED:Lexpo/modules/fetch/ResponseState;

    aput-object v16, v6, v1

    .line 620
    sget-object v1, Lexpo/modules/fetch/ResponseState;->ERROR_RECEIVED:Lexpo/modules/fetch/ResponseState;

    aput-object v1, v6, v4

    .line 619
    nop

    .line 618
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 617
    new-instance v4, Lexpo/modules/fetch/ExpoFetchModule$definition$1$4$2$1;

    invoke-direct {v4, v12, v11}, Lexpo/modules/fetch/ExpoFetchModule$definition$1$4$2$1;-><init>(Lexpo/modules/kotlin/Promise;Lexpo/modules/fetch/NativeRequest;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v15, v1, v4}, Lexpo/modules/fetch/NativeResponse;->waitForStates(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    .line 629
    nop

    .line 349
    .end local v8    # "requestBody":[B
    .end local v9    # "requestInit":Lexpo/modules/fetch/NativeRequestInit;
    .end local v10    # "url":Ljava/net/URL;
    .end local v11    # "request":Lexpo/modules/fetch/NativeRequest;
    .end local v12    # "promise":Lexpo/modules/kotlin/Promise;
    .end local v13    # "$i$a$-AsyncFunctionWithPromise-ExpoFetchModule$definition$1$4$2":I
    nop

    .line 350
    return-void
.end method
