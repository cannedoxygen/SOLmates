.class public final Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$6;
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
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$18\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 FileSystemModule.kt\nexpo/modules/filesystem/FileSystemModule\n*L\n1#1,611:1\n22#2,4:612\n479#3,8:616\n502#3,4:624\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$18\n*L\n323#1:612,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001\"\u0006\u0008\u0001\u0010\u0003\u0018\u0001\"\u0006\u0008\u0002\u0010\u0004\u0018\u0001\"\u0006\u0008\u0003\u0010\u0005\u0018\u00012\u0010\u0010\u0006\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00080\u00072\u0006\u0010\t\u001a\u00020\nH\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "P0",
        "P1",
        "P2",
        "<name for destructuring parameter 0>",
        "",
        "",
        "promise",
        "Lexpo/modules/kotlin/Promise;",
        "invoke",
        "([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V",
        "expo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$18"
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
.field final synthetic $this_ModuleDefinition$inlined:Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

.field final synthetic this$0:Lexpo/modules/filesystem/FileSystemModule;


# direct methods
.method public constructor <init>(Lexpo/modules/filesystem/FileSystemModule;Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$6;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    iput-object p2, p0, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$6;->$this_ModuleDefinition$inlined:Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 325
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v1, p2

    check-cast v1, Lexpo/modules/kotlin/Promise;

    invoke-virtual {p0, v0, v1}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$6;->invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V
    .locals 13
    .param p2, "promise"    # Lexpo/modules/kotlin/Promise;

    const-string v0, "<name for destructuring parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .local v0, "p0":Ljava/lang/Object;
    const/4 v1, 0x1

    aget-object v1, p1, v1

    .local v1, "p1":Ljava/lang/Object;
    const/4 v2, 0x2

    aget-object p1, p1, v2

    .line 323
    .local p1, "p2":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 612
    .local v2, "$i$f$enforceType":I
    nop

    .line 615
    nop

    .line 324
    .end local v2    # "$i$f$enforceType":I
    move-object v2, p1

    check-cast v2, Lexpo/modules/filesystem/FileSystemUploadOptions;

    .local v2, "options":Lexpo/modules/filesystem/FileSystemUploadOptions;
    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .local v3, "fileUriString":Ljava/lang/String;
    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .local v4, "url":Ljava/lang/String;
    move-object v5, p2

    .local v5, "promise":Lexpo/modules/kotlin/Promise;
    const/4 v6, 0x0

    .line 616
    .local v6, "$i$a$-AsyncFunctionWithPromise-FileSystemModule$definition$1$17":I
    iget-object v7, p0, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$6;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    .line 617
    nop

    .line 618
    nop

    .line 619
    nop

    .line 616
    sget-object v8, Lexpo/modules/filesystem/FileSystemModule$definition$1$17$request$1;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$1$17$request$1;

    check-cast v8, Lexpo/modules/filesystem/RequestBodyDecorator;

    invoke-static {v7, v4, v3, v2, v8}, Lexpo/modules/filesystem/FileSystemModule;->access$createUploadRequest(Lexpo/modules/filesystem/FileSystemModule;Ljava/lang/String;Ljava/lang/String;Lexpo/modules/filesystem/FileSystemUploadOptions;Lexpo/modules/filesystem/RequestBodyDecorator;)Lokhttp3/Request;

    move-result-object v7

    .line 622
    .local v7, "request":Lokhttp3/Request;
    iget-object v8, p0, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$6;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    invoke-static {v8}, Lexpo/modules/filesystem/FileSystemModule;->access$getOkHttpClient(Lexpo/modules/filesystem/FileSystemModule;)Lokhttp3/OkHttpClient;

    move-result-object v8

    if-eqz v8, :cond_0

    .local v8, "it":Lokhttp3/OkHttpClient;
    const/4 v9, 0x0

    .line 623
    .local v9, "$i$a$-let-FileSystemModule$definition$1$17$1":I
    invoke-virtual {v8, v7}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v10

    new-instance v11, Lexpo/modules/filesystem/FileSystemModule$definition$1$17$1$1;

    iget-object v12, p0, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$6;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    invoke-direct {v11, v5, v12}, Lexpo/modules/filesystem/FileSystemModule$definition$1$17$1$1;-><init>(Lexpo/modules/kotlin/Promise;Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v11, Lokhttp3/Callback;

    invoke-interface {v10, v11}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 624
    nop

    .line 622
    .end local v8    # "it":Lokhttp3/OkHttpClient;
    .end local v9    # "$i$a$-let-FileSystemModule$definition$1$17$1":I
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    if-nez v8, :cond_1

    .line 624
    iget-object v8, p0, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$6;->$this_ModuleDefinition$inlined:Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    .local v8, "$this$definition_u24lambda_u2448_u24lambda_u2432_u24lambda_u2431":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    const/4 v9, 0x0

    .line 625
    .local v9, "$i$a$-run-FileSystemModule$definition$1$17$2":I
    new-instance v10, Lexpo/modules/filesystem/FileSystemOkHttpNullException;

    invoke-direct {v10}, Lexpo/modules/filesystem/FileSystemOkHttpNullException;-><init>()V

    check-cast v10, Lexpo/modules/kotlin/exception/CodedException;

    invoke-interface {v5, v10}, Lexpo/modules/kotlin/Promise;->reject(Lexpo/modules/kotlin/exception/CodedException;)V

    .line 626
    nop

    .line 624
    .end local v8    # "$this$definition_u24lambda_u2448_u24lambda_u2432_u24lambda_u2431":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v9    # "$i$a$-run-FileSystemModule$definition$1$17$2":I
    nop

    .line 627
    :cond_1
    nop

    .line 324
    .end local v2    # "options":Lexpo/modules/filesystem/FileSystemUploadOptions;
    .end local v3    # "fileUriString":Ljava/lang/String;
    .end local v4    # "url":Ljava/lang/String;
    .end local v5    # "promise":Lexpo/modules/kotlin/Promise;
    .end local v6    # "$i$a$-AsyncFunctionWithPromise-FileSystemModule$definition$1$17":I
    .end local v7    # "request":Lokhttp3/Request;
    nop

    .line 325
    return-void
.end method
