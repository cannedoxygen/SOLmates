.class public final Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$11;
.super Lkotlin/jvm/internal/Lambda;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/filesystem/FileSystemModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
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
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$22\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 FileSystemModule.kt\nexpo/modules/filesystem/FileSystemModule\n*L\n1#1,611:1\n29#2,4:612\n508#3:616\n527#3,9:617\n557#3:626\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$22\n*L\n348#1:612,4\n*E\n"
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
.field final synthetic this$0:Lexpo/modules/filesystem/FileSystemModule;


# direct methods
.method public constructor <init>(Lexpo/modules/filesystem/FileSystemModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$11;->this$0:Lexpo/modules/filesystem/FileSystemModule;

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

    invoke-virtual {p0, v0, v1}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$11;->invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V
    .locals 16
    .param p2, "promise"    # Lexpo/modules/kotlin/Promise;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "<name for destructuring parameter 0>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "promise"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    const/4 v2, 0x0

    aget-object v2, v1, v2

    .local v2, "p0":Ljava/lang/Object;
    const/4 v4, 0x1

    aget-object v4, v1, v4

    .local v4, "p1":Ljava/lang/Object;
    const/4 v5, 0x2

    aget-object v5, v1, v5

    .local v5, "p2":Ljava/lang/Object;
    const/4 v6, 0x3

    aget-object v1, v1, v6

    .line 348
    .local v1, "p3":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 612
    .local v6, "$i$f$enforceType":I
    nop

    .line 615
    nop

    .line 349
    .end local v6    # "$i$f$enforceType":I
    move-object v6, v1

    check-cast v6, Lexpo/modules/filesystem/FileSystemUploadOptions;

    .local v6, "options":Lexpo/modules/filesystem/FileSystemUploadOptions;
    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    .local v7, "uuid":Ljava/lang/String;
    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    .local v8, "fileUriString":Ljava/lang/String;
    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    .local v9, "url":Ljava/lang/String;
    move-object/from16 v10, p2

    .local v10, "promise":Lexpo/modules/kotlin/Promise;
    const/4 v11, 0x0

    .line 616
    .local v11, "$i$a$-AsyncFunctionWithPromise-FileSystemModule$definition$1$18":I
    new-instance v12, Lexpo/modules/filesystem/FileSystemModule$definition$1$18$progressListener$1;

    iget-object v13, v0, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$11;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    invoke-direct {v12, v7, v13}, Lexpo/modules/filesystem/FileSystemModule$definition$1$18$progressListener$1;-><init>(Ljava/lang/String;Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v12, Lexpo/modules/filesystem/CountingRequestListener;

    .line 617
    .local v12, "progressListener":Lexpo/modules/filesystem/CountingRequestListener;
    iget-object v13, v0, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$11;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    .line 618
    nop

    .line 619
    nop

    .line 620
    nop

    .line 617
    new-instance v14, Lexpo/modules/filesystem/FileSystemModule$definition$1$18$request$1;

    invoke-direct {v14, v12}, Lexpo/modules/filesystem/FileSystemModule$definition$1$18$request$1;-><init>(Lexpo/modules/filesystem/CountingRequestListener;)V

    check-cast v14, Lexpo/modules/filesystem/RequestBodyDecorator;

    invoke-static {v13, v9, v8, v6, v14}, Lexpo/modules/filesystem/FileSystemModule;->access$createUploadRequest(Lexpo/modules/filesystem/FileSystemModule;Ljava/lang/String;Ljava/lang/String;Lexpo/modules/filesystem/FileSystemUploadOptions;Lexpo/modules/filesystem/RequestBodyDecorator;)Lokhttp3/Request;

    move-result-object v13

    .line 623
    .local v13, "request":Lokhttp3/Request;
    iget-object v14, v0, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$11;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    invoke-static {v14}, Lexpo/modules/filesystem/FileSystemModule;->access$getOkHttpClient(Lexpo/modules/filesystem/FileSystemModule;)Lokhttp3/OkHttpClient;

    move-result-object v14

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v14, v13}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v14

    .line 624
    .local v14, "call":Lokhttp3/Call;
    iget-object v15, v0, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$11;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    invoke-static {v15}, Lexpo/modules/filesystem/FileSystemModule;->access$getTaskHandlers$p(Lexpo/modules/filesystem/FileSystemModule;)Ljava/util/Map;

    move-result-object v15

    move-object/from16 p1, v1

    .end local v1    # "p3":Ljava/lang/Object;
    .local p1, "p3":Ljava/lang/Object;
    new-instance v1, Lexpo/modules/filesystem/FileSystemModule$TaskHandler;

    invoke-direct {v1, v14}, Lexpo/modules/filesystem/FileSystemModule$TaskHandler;-><init>(Lokhttp3/Call;)V

    invoke-interface {v15, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    new-instance v1, Lexpo/modules/filesystem/FileSystemModule$definition$1$18$1;

    iget-object v15, v0, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$11;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    invoke-direct {v1, v10, v15}, Lexpo/modules/filesystem/FileSystemModule$definition$1$18$1;-><init>(Lexpo/modules/kotlin/Promise;Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v1, Lokhttp3/Callback;

    invoke-interface {v14, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 626
    nop

    .line 349
    .end local v6    # "options":Lexpo/modules/filesystem/FileSystemUploadOptions;
    .end local v7    # "uuid":Ljava/lang/String;
    .end local v8    # "fileUriString":Ljava/lang/String;
    .end local v9    # "url":Ljava/lang/String;
    .end local v10    # "promise":Lexpo/modules/kotlin/Promise;
    .end local v11    # "$i$a$-AsyncFunctionWithPromise-FileSystemModule$definition$1$18":I
    .end local v12    # "progressListener":Lexpo/modules/filesystem/CountingRequestListener;
    .end local v13    # "request":Lokhttp3/Request;
    .end local v14    # "call":Lokhttp3/Call;
    nop

    .line 350
    return-void
.end method
