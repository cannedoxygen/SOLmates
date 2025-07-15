.class public final Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$21;
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
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$26\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 FileSystemModule.kt\nexpo/modules/filesystem/FileSystemModule\n+ 4 OkHttpClient.kt\nokhttp3/OkHttpClient$Builder\n+ 5 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,611:1\n36#2,4:612\n627#3,6:616\n653#3,2:622\n660#3,12:625\n672#3,2:638\n676#3,14:641\n563#4:624\n215#5:637\n216#5:640\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$26\n+ 2 FileSystemModule.kt\nexpo/modules/filesystem/FileSystemModule\n*L\n373#1:612,4\n654#2:624\n671#2:637\n671#2:640\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001\"\u0006\u0008\u0001\u0010\u0003\u0018\u0001\"\u0006\u0008\u0002\u0010\u0004\u0018\u0001\"\u0006\u0008\u0003\u0010\u0005\u0018\u0001\"\u0006\u0008\u0004\u0010\u0006\u0018\u0001\"\u0006\u0008\u0005\u0010\u0007\u0018\u00012\u0010\u0010\u0008\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\n0\t2\u0006\u0010\u000b\u001a\u00020\u000cH\n\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "P0",
        "P1",
        "P2",
        "P3",
        "P4",
        "<name for destructuring parameter 0>",
        "",
        "",
        "promise",
        "Lexpo/modules/kotlin/Promise;",
        "invoke",
        "([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V",
        "expo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$26"
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

    iput-object p1, p0, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$21;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 375
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v1, p2

    check-cast v1, Lexpo/modules/kotlin/Promise;

    invoke-virtual {p0, v0, v1}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$21;->invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V
    .locals 31
    .param p2, "promise"    # Lexpo/modules/kotlin/Promise;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "<name for destructuring parameter 0>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "promise"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    const/4 v2, 0x0

    aget-object v4, v1, v2

    .local v4, "p0":Ljava/lang/Object;
    const/4 v5, 0x1

    aget-object v6, v1, v5

    .local v6, "p1":Ljava/lang/Object;
    const/4 v7, 0x2

    aget-object v7, v1, v7

    .local v7, "p2":Ljava/lang/Object;
    const/4 v8, 0x3

    aget-object v8, v1, v8

    .local v8, "p3":Ljava/lang/Object;
    const/4 v9, 0x4

    aget-object v1, v1, v9

    .line 373
    .local v1, "p4":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 612
    .local v9, "$i$f$enforceType":I
    nop

    .line 615
    nop

    .line 374
    .end local v9    # "$i$f$enforceType":I
    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    .local v9, "resumeData":Ljava/lang/String;
    move-object/from16 v16, v8

    check-cast v16, Lexpo/modules/filesystem/DownloadOptions;

    .local v16, "options":Lexpo/modules/filesystem/DownloadOptions;
    move-object v15, v7

    check-cast v15, Ljava/lang/String;

    .local v15, "uuid":Ljava/lang/String;
    move-object/from16 v17, v6

    check-cast v17, Ljava/lang/String;

    .local v17, "fileUriStr":Ljava/lang/String;
    move-object v14, v4

    check-cast v14, Ljava/lang/String;

    .local v14, "url":Ljava/lang/String;
    move-object/from16 v13, p2

    .local v13, "promise":Lexpo/modules/kotlin/Promise;
    const/16 v18, 0x0

    .line 616
    .local v18, "$i$a$-AsyncFunctionWithPromise-FileSystemModule$definition$1$21":I
    invoke-static/range {v17 .. v17}, Lexpo/modules/filesystem/FileSystemModuleKt;->access$slashifyFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 617
    .local v12, "fileUri":Landroid/net/Uri;
    iget-object v10, v0, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$21;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v10, v12}, Lexpo/modules/filesystem/FileSystemModule;->access$checkIfFileDirExists(Lexpo/modules/filesystem/FileSystemModule;Landroid/net/Uri;)V

    .line 618
    invoke-virtual {v12}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    const-string v11, "file"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 621
    new-instance v10, Lexpo/modules/filesystem/FileSystemModule$definition$1$21$progressListener$1;

    iget-object v11, v0, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$21;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    invoke-direct {v10, v9, v15, v11}, Lexpo/modules/filesystem/FileSystemModule$definition$1$21$progressListener$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lexpo/modules/filesystem/FileSystemModule;)V

    move-object v11, v10

    check-cast v11, Lexpo/modules/filesystem/FileSystemModule$ProgressListener;

    .line 622
    .local v11, "progressListener":Lexpo/modules/filesystem/FileSystemModule$ProgressListener;
    iget-object v10, v0, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$21;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    invoke-static {v10}, Lexpo/modules/filesystem/FileSystemModule;->access$getOkHttpClient(Lexpo/modules/filesystem/FileSystemModule;)Lokhttp3/OkHttpClient;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v10

    .line 623
    if-eqz v10, :cond_0

    .line 622
    nop

    .line 623
    nop

    .local v10, "this_$iv":Lokhttp3/OkHttpClient$Builder;
    const/16 v20, 0x0

    .line 624
    .local v20, "$i$f$-addInterceptor":I
    new-instance v5, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$lambda$42$$inlined$-addInterceptor$1;

    invoke-direct {v5, v11}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$lambda$42$$inlined$-addInterceptor$1;-><init>(Lexpo/modules/filesystem/FileSystemModule$ProgressListener;)V

    check-cast v5, Lokhttp3/Interceptor;

    invoke-virtual {v10, v5}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v5

    .line 623
    .end local v10    # "this_$iv":Lokhttp3/OkHttpClient$Builder;
    .end local v20    # "$i$f$-addInterceptor":I
    nop

    .line 625
    if-eqz v5, :cond_0

    .line 623
    nop

    .line 625
    invoke-virtual {v5}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v5

    goto :goto_0

    .line 622
    :cond_0
    const/4 v5, 0x0

    :goto_0
    nop

    .line 626
    .local v5, "client":Lokhttp3/OkHttpClient;
    if-nez v5, :cond_1

    .line 627
    new-instance v2, Lexpo/modules/filesystem/FileSystemOkHttpNullException;

    invoke-direct {v2}, Lexpo/modules/filesystem/FileSystemOkHttpNullException;-><init>()V

    check-cast v2, Lexpo/modules/kotlin/exception/CodedException;

    invoke-interface {v13, v2}, Lexpo/modules/kotlin/Promise;->reject(Lexpo/modules/kotlin/exception/CodedException;)V

    .line 628
    move-object/from16 v22, v1

    move-object/from16 v23, v4

    goto/16 :goto_4

    .line 630
    :cond_1
    new-instance v10, Lokhttp3/Request$Builder;

    invoke-direct {v10}, Lokhttp3/Request$Builder;-><init>()V

    .line 631
    .local v10, "requestBuilder":Lokhttp3/Request$Builder;
    if-eqz v9, :cond_2

    move-object/from16 p1, v9

    .local p1, "it":Ljava/lang/String;
    const/16 v20, 0x0

    .line 632
    .local v20, "$i$a$-let-FileSystemModule$definition$1$21$1":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v1

    .end local v1    # "p4":Ljava/lang/Object;
    .local v22, "p4":Ljava/lang/Object;
    const-string v1, "bytes="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, p1

    .end local p1    # "it":Ljava/lang/String;
    .local v2, "it":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .end local v2    # "it":Ljava/lang/String;
    .restart local p1    # "it":Ljava/lang/String;
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Range"

    invoke-virtual {v10, v2, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .end local v20    # "$i$a$-let-FileSystemModule$definition$1$21$1":I
    .end local p1    # "it":Ljava/lang/String;
    goto :goto_1

    .line 631
    .end local v22    # "p4":Ljava/lang/Object;
    .restart local v1    # "p4":Ljava/lang/Object;
    :cond_2
    move-object/from16 v22, v1

    .end local v1    # "p4":Ljava/lang/Object;
    .restart local v22    # "p4":Ljava/lang/Object;
    :goto_1
    nop

    .line 634
    invoke-virtual/range {v16 .. v16}, Lexpo/modules/filesystem/DownloadOptions;->getHeaders()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 635
    invoke-virtual/range {v16 .. v16}, Lexpo/modules/filesystem/DownloadOptions;->getHeaders()Ljava/util/Map;

    move-result-object v1

    .line 636
    .local v1, "headers":Ljava/util/Map;
    move-object v2, v1

    .local v2, "$this$forEach$iv":Ljava/util/Map;
    const/16 v20, 0x0

    .line 637
    .local v20, "$i$f$forEach":I
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_2
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_3

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/Map$Entry;

    .local v24, "element$iv":Ljava/util/Map$Entry;
    const/16 v25, 0x0

    .line 636
    .local v25, "$i$a$-forEach-FileSystemModule$definition$1$21$2":I
    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v26

    move-object/from16 p1, v1

    .end local v1    # "headers":Ljava/util/Map;
    .local p1, "headers":Ljava/util/Map;
    move-object/from16 v1, v26

    check-cast v1, Ljava/lang/String;

    .local v1, "key":Ljava/lang/String;
    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v27, v2

    .end local v2    # "$this$forEach$iv":Ljava/util/Map;
    .local v27, "$this$forEach$iv":Ljava/util/Map;
    move-object/from16 v2, v26

    check-cast v2, Ljava/lang/String;

    .line 638
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v10, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 639
    nop

    .line 637
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    .end local v25    # "$i$a$-forEach-FileSystemModule$definition$1$21$2":I
    move-object/from16 v1, p1

    move-object/from16 v2, v27

    .end local v24    # "element$iv":Ljava/util/Map$Entry;
    goto :goto_2

    .line 640
    .end local v27    # "$this$forEach$iv":Ljava/util/Map;
    .end local p1    # "headers":Ljava/util/Map;
    .local v1, "headers":Ljava/util/Map;
    .local v2, "$this$forEach$iv":Ljava/util/Map;
    :cond_3
    move-object/from16 p1, v1

    move-object/from16 v27, v2

    .line 641
    .end local v1    # "headers":Ljava/util/Map;
    .end local v2    # "$this$forEach$iv":Ljava/util/Map;
    .end local v20    # "$i$f$forEach":I
    :cond_4
    invoke-virtual {v10, v14}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 642
    .local v1, "request":Lokhttp3/Request;
    invoke-virtual {v5, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    .line 643
    .local v2, "call":Lokhttp3/Call;
    move-object/from16 p1, v1

    .end local v1    # "request":Lokhttp3/Request;
    .local p1, "request":Lokhttp3/Request;
    iget-object v1, v0, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$21;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    invoke-static {v1}, Lexpo/modules/filesystem/FileSystemModule;->access$getTaskHandlers$p(Lexpo/modules/filesystem/FileSystemModule;)Ljava/util/Map;

    move-result-object v1

    new-instance v3, Lexpo/modules/filesystem/FileSystemModule$DownloadTaskHandler;

    invoke-direct {v3, v12, v2}, Lexpo/modules/filesystem/FileSystemModule$DownloadTaskHandler;-><init>(Landroid/net/Uri;Lokhttp3/Call;)V

    invoke-interface {v1, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    new-instance v1, Lexpo/modules/filesystem/FileSystemModule$DownloadResumableTaskParams;

    .line 645
    nop

    .line 646
    nop

    .line 647
    iget-object v3, v0, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$21;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    invoke-static {v3, v12}, Lexpo/modules/filesystem/FileSystemModule;->access$toFile(Lexpo/modules/filesystem/FileSystemModule;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v3

    .line 648
    if-eqz v9, :cond_5

    const/16 v19, 0x1

    goto :goto_3

    :cond_5
    const/16 v19, 0x0

    .line 649
    :goto_3
    nop

    .line 644
    move-object/from16 v20, v10

    .end local v10    # "requestBuilder":Lokhttp3/Request$Builder;
    .local v20, "requestBuilder":Lokhttp3/Request$Builder;
    move-object v10, v1

    move-object/from16 v21, v11

    .end local v11    # "progressListener":Lexpo/modules/filesystem/FileSystemModule$ProgressListener;
    .local v21, "progressListener":Lexpo/modules/filesystem/FileSystemModule$ProgressListener;
    move-object/from16 v11, v16

    move-object/from16 v23, v4

    move-object v4, v12

    .end local v12    # "fileUri":Landroid/net/Uri;
    .local v4, "fileUri":Landroid/net/Uri;
    .local v23, "p0":Ljava/lang/Object;
    move-object v12, v2

    move-object/from16 v24, v13

    .end local v13    # "promise":Lexpo/modules/kotlin/Promise;
    .local v24, "promise":Lexpo/modules/kotlin/Promise;
    move-object v13, v3

    move-object v3, v14

    .end local v14    # "url":Ljava/lang/String;
    .local v3, "url":Ljava/lang/String;
    move/from16 v14, v19

    move-object/from16 v19, v15

    .end local v15    # "uuid":Ljava/lang/String;
    .local v19, "uuid":Ljava/lang/String;
    move-object/from16 v15, v24

    invoke-direct/range {v10 .. v15}, Lexpo/modules/filesystem/FileSystemModule$DownloadResumableTaskParams;-><init>(Lexpo/modules/filesystem/DownloadOptions;Lokhttp3/Call;Ljava/io/File;ZLexpo/modules/kotlin/Promise;)V

    .line 651
    .local v1, "params":Lexpo/modules/filesystem/FileSystemModule$DownloadResumableTaskParams;
    iget-object v10, v0, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$21;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    invoke-static {v10}, Lexpo/modules/filesystem/FileSystemModule;->access$getModuleCoroutineScope$p(Lexpo/modules/filesystem/FileSystemModule;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v25

    new-instance v10, Lexpo/modules/filesystem/FileSystemModule$definition$1$21$3;

    iget-object v11, v0, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$21;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    const/4 v12, 0x0

    invoke-direct {v10, v11, v1, v12}, Lexpo/modules/filesystem/FileSystemModule$definition$1$21$3;-><init>(Lexpo/modules/filesystem/FileSystemModule;Lexpo/modules/filesystem/FileSystemModule$DownloadResumableTaskParams;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v28, v10

    check-cast v28, Lkotlin/jvm/functions/Function2;

    const/16 v29, 0x3

    const/16 v30, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-static/range {v25 .. v30}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 654
    nop

    .line 374
    .end local v1    # "params":Lexpo/modules/filesystem/FileSystemModule$DownloadResumableTaskParams;
    .end local v2    # "call":Lokhttp3/Call;
    .end local v3    # "url":Ljava/lang/String;
    .end local v4    # "fileUri":Landroid/net/Uri;
    .end local v5    # "client":Lokhttp3/OkHttpClient;
    .end local v9    # "resumeData":Ljava/lang/String;
    .end local v16    # "options":Lexpo/modules/filesystem/DownloadOptions;
    .end local v17    # "fileUriStr":Ljava/lang/String;
    .end local v18    # "$i$a$-AsyncFunctionWithPromise-FileSystemModule$definition$1$21":I
    .end local v19    # "uuid":Ljava/lang/String;
    .end local v20    # "requestBuilder":Lokhttp3/Request$Builder;
    .end local v21    # "progressListener":Lexpo/modules/filesystem/FileSystemModule$ProgressListener;
    .end local v24    # "promise":Lexpo/modules/kotlin/Promise;
    .end local p1    # "request":Lokhttp3/Request;
    :goto_4
    nop

    .line 375
    return-void

    .line 619
    .end local v22    # "p4":Ljava/lang/Object;
    .end local v23    # "p0":Ljava/lang/Object;
    .local v1, "p4":Ljava/lang/Object;
    .local v4, "p0":Ljava/lang/Object;
    .restart local v9    # "resumeData":Ljava/lang/String;
    .restart local v12    # "fileUri":Landroid/net/Uri;
    .restart local v13    # "promise":Lexpo/modules/kotlin/Promise;
    .restart local v14    # "url":Ljava/lang/String;
    .restart local v15    # "uuid":Ljava/lang/String;
    .restart local v16    # "options":Lexpo/modules/filesystem/DownloadOptions;
    .restart local v17    # "fileUriStr":Ljava/lang/String;
    .restart local v18    # "$i$a$-AsyncFunctionWithPromise-FileSystemModule$definition$1$21":I
    :cond_6
    move-object/from16 v22, v1

    move-object/from16 v23, v4

    move-object v4, v12

    .end local v1    # "p4":Ljava/lang/Object;
    .end local v12    # "fileUri":Landroid/net/Uri;
    .local v4, "fileUri":Landroid/net/Uri;
    .restart local v22    # "p4":Ljava/lang/Object;
    .restart local v23    # "p0":Ljava/lang/Object;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported scheme for location \'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\'."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
