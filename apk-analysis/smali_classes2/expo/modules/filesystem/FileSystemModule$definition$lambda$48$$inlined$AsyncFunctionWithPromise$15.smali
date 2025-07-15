.class public final Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$15;
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
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$18\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 FileSystemModule.kt\nexpo/modules/filesystem/FileSystemModule\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,611:1\n22#2,4:612\n560#3,19:616\n579#3,8:636\n587#3,2:645\n590#3:648\n614#3,6:649\n1#4:635\n215#5:644\n216#5:647\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$18\n+ 2 FileSystemModule.kt\nexpo/modules/filesystem/FileSystemModule\n*L\n323#1:612,4\n586#2:644\n586#2:647\n*E\n"
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
.field final synthetic this$0:Lexpo/modules/filesystem/FileSystemModule;


# direct methods
.method public constructor <init>(Lexpo/modules/filesystem/FileSystemModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$15;->this$0:Lexpo/modules/filesystem/FileSystemModule;

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

    invoke-virtual {p0, v0, v1}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$15;->invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V
    .locals 21
    .param p2, "promise"    # Lexpo/modules/kotlin/Promise;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "<name for destructuring parameter 0>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "promise"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    const/4 v2, 0x0

    aget-object v4, v1, v2

    .local v4, "p0":Ljava/lang/Object;
    const/4 v5, 0x1

    aget-object v6, v1, v5

    .local v6, "p1":Ljava/lang/Object;
    const/4 v7, 0x2

    aget-object v1, v1, v7

    .line 323
    .local v1, "p2":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 612
    .local v8, "$i$f$enforceType":I
    nop

    .line 615
    nop

    .line 324
    .end local v8    # "$i$f$enforceType":I
    move-object v8, v1

    check-cast v8, Lexpo/modules/filesystem/DownloadOptions;

    .local v8, "options":Lexpo/modules/filesystem/DownloadOptions;
    move-object v9, v6

    check-cast v9, Ljava/lang/String;

    .local v9, "uriStr":Ljava/lang/String;
    move-object v10, v4

    check-cast v10, Ljava/lang/String;

    .local v10, "url":Ljava/lang/String;
    move-object/from16 v11, p2

    .local v11, "promise":Lexpo/modules/kotlin/Promise;
    const/4 v12, 0x0

    .line 616
    .local v12, "$i$a$-AsyncFunctionWithPromise-FileSystemModule$definition$1$19":I
    invoke-static {v9}, Lexpo/modules/filesystem/FileSystemModuleKt;->access$slashifyFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 617
    .local v13, "uri":Landroid/net/Uri;
    iget-object v14, v0, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$15;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v15, Lexpo/modules/interfaces/filesystem/Permission;->WRITE:Lexpo/modules/interfaces/filesystem/Permission;

    invoke-static {v14, v13, v15}, Lexpo/modules/filesystem/FileSystemModule;->access$ensurePermission(Lexpo/modules/filesystem/FileSystemModule;Landroid/net/Uri;Lexpo/modules/interfaces/filesystem/Permission;)V

    .line 618
    iget-object v14, v0, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$15;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    invoke-static {v14, v13}, Lexpo/modules/filesystem/FileSystemModule;->access$checkIfFileDirExists(Lexpo/modules/filesystem/FileSystemModule;Landroid/net/Uri;)V

    .line 620
    nop

    .line 621
    move-object v14, v10

    check-cast v14, Ljava/lang/CharSequence;

    const-string v15, ":"

    check-cast v15, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-static {v14, v15, v2, v7, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 622
    iget-object v7, v0, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$15;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    invoke-static {v7}, Lexpo/modules/filesystem/FileSystemModule;->access$getContext(Lexpo/modules/filesystem/FileSystemModule;)Landroid/content/Context;

    move-result-object v7

    .line 623
    .local v7, "context":Landroid/content/Context;
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 624
    .local v14, "resources":Landroid/content/res/Resources;
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 625
    .local v15, "packageName":Ljava/lang/String;
    const-string v2, "raw"

    invoke-virtual {v14, v10, v2, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 626
    .local v2, "resourceId":I
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    move-object/from16 v18, v1

    .end local v1    # "p2":Ljava/lang/Object;
    .local v18, "p2":Ljava/lang/Object;
    const-string v1, "openRawResource(...)"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v1

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v1

    .line 627
    .local v1, "bufferedSource":Lokio/BufferedSource;
    iget-object v5, v0, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$15;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    invoke-static {v5, v13}, Lexpo/modules/filesystem/FileSystemModule;->access$toFile(Lexpo/modules/filesystem/FileSystemModule;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v5

    .line 628
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 629
    move/from16 v19, v2

    move-object/from16 v16, v4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .end local v2    # "resourceId":I
    .end local v4    # "p0":Ljava/lang/Object;
    .local v16, "p0":Ljava/lang/Object;
    .local v19, "resourceId":I
    invoke-static {v5, v2, v3, v4}, Lokio/Okio;->sink$default(Ljava/io/File;ZILjava/lang/Object;)Lokio/Sink;

    move-result-object v2

    invoke-static {v2}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v2

    .line 630
    .local v2, "sink":Lokio/BufferedSink;
    move-object v3, v1

    check-cast v3, Lokio/Source;

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J

    .line 631
    invoke-interface {v2}, Lokio/BufferedSink;->close()V

    .line 632
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 633
    .local v3, "result":Landroid/os/Bundle;
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v17, v1

    .end local v1    # "bufferedSource":Lokio/BufferedSource;
    .local v17, "bufferedSource":Lokio/BufferedSource;
    const-string v1, "uri"

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    invoke-virtual {v8}, Lexpo/modules/filesystem/DownloadOptions;->getMd5()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 635
    .local v4, "it":Z
    const/16 v20, 0x0

    .line 634
    .local v20, "$i$a$-takeIf-FileSystemModule$definition$1$19$1":I
    nop

    .end local v4    # "it":Z
    .end local v20    # "$i$a$-takeIf-FileSystemModule$definition$1$19$1":I
    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 635
    .local v1, "it":Z
    const/4 v4, 0x0

    .line 634
    .local v4, "$i$a$-let-FileSystemModule$definition$1$19$2":I
    move/from16 p1, v1

    .end local v1    # "it":Z
    .local p1, "it":Z
    iget-object v1, v0, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$15;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    invoke-static {v1, v5}, Lexpo/modules/filesystem/FileSystemModule;->access$md5(Lexpo/modules/filesystem/FileSystemModule;Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v20, v2

    .end local v2    # "sink":Lokio/BufferedSink;
    .local v20, "sink":Lokio/BufferedSink;
    const-string v2, "md5"

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .end local v4    # "$i$a$-let-FileSystemModule$definition$1$19$2":I
    .end local p1    # "it":Z
    goto :goto_1

    .end local v20    # "sink":Lokio/BufferedSink;
    .restart local v2    # "sink":Lokio/BufferedSink;
    :cond_1
    move-object/from16 v20, v2

    .line 636
    .end local v2    # "sink":Lokio/BufferedSink;
    .restart local v20    # "sink":Lokio/BufferedSink;
    :goto_1
    invoke-interface {v11, v3}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V

    .end local v3    # "result":Landroid/os/Bundle;
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "context":Landroid/content/Context;
    .end local v14    # "resources":Landroid/content/res/Resources;
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v17    # "bufferedSource":Lokio/BufferedSource;
    .end local v19    # "resourceId":I
    .end local v20    # "sink":Lokio/BufferedSink;
    goto/16 :goto_4

    .line 639
    .end local v16    # "p0":Ljava/lang/Object;
    .end local v18    # "p2":Ljava/lang/Object;
    .local v1, "p2":Ljava/lang/Object;
    .local v4, "p0":Ljava/lang/Object;
    :cond_2
    move-object/from16 v18, v1

    move-object/from16 v16, v4

    .end local v1    # "p2":Ljava/lang/Object;
    .end local v4    # "p0":Ljava/lang/Object;
    .restart local v16    # "p0":Ljava/lang/Object;
    .restart local v18    # "p2":Ljava/lang/Object;
    const-string v1, "file"

    invoke-virtual {v13}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 640
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, v10}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 641
    .local v1, "requestBuilder":Lokhttp3/Request$Builder;
    invoke-virtual {v8}, Lexpo/modules/filesystem/DownloadOptions;->getHeaders()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 642
    invoke-virtual {v8}, Lexpo/modules/filesystem/DownloadOptions;->getHeaders()Ljava/util/Map;

    move-result-object v2

    .line 643
    .local v2, "headers":Ljava/util/Map;
    move-object v3, v2

    .local v3, "$this$forEach$iv":Ljava/util/Map;
    const/4 v4, 0x0

    .line 644
    .local v4, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .local v7, "element$iv":Ljava/util/Map$Entry;
    const/4 v14, 0x0

    .line 643
    .local v14, "$i$a$-forEach-FileSystemModule$definition$1$19$3":I
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .local v15, "key":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v19, v2

    .end local v2    # "headers":Ljava/util/Map;
    .local v19, "headers":Ljava/util/Map;
    move-object/from16 v2, v17

    check-cast v2, Ljava/lang/String;

    .line 645
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v1, v15, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 646
    nop

    .line 644
    .end local v2    # "value":Ljava/lang/String;
    .end local v14    # "$i$a$-forEach-FileSystemModule$definition$1$19$3":I
    .end local v15    # "key":Ljava/lang/String;
    move-object/from16 v2, v19

    .end local v7    # "element$iv":Ljava/util/Map$Entry;
    goto :goto_2

    .line 647
    .end local v19    # "headers":Ljava/util/Map;
    .local v2, "headers":Ljava/util/Map;
    :cond_3
    move-object/from16 v19, v2

    .line 648
    .end local v2    # "headers":Ljava/util/Map;
    .end local v3    # "$this$forEach$iv":Ljava/util/Map;
    .end local v4    # "$i$f$forEach":I
    :cond_4
    iget-object v2, v0, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$15;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    invoke-static {v2}, Lexpo/modules/filesystem/FileSystemModule;->access$getOkHttpClient(Lexpo/modules/filesystem/FileSystemModule;)Lokhttp3/OkHttpClient;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    if-eqz v2, :cond_5

    new-instance v3, Lexpo/modules/filesystem/FileSystemModule$definition$1$19$4;

    iget-object v4, v0, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$15;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    invoke-direct {v3, v11, v4, v13, v8}, Lexpo/modules/filesystem/FileSystemModule$definition$1$19$4;-><init>(Lexpo/modules/kotlin/Promise;Lexpo/modules/filesystem/FileSystemModule;Landroid/net/Uri;Lexpo/modules/filesystem/DownloadOptions;)V

    check-cast v3, Lokhttp3/Callback;

    invoke-interface {v2, v3}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    if-nez v5, :cond_6

    .line 649
    new-instance v2, Lexpo/modules/filesystem/FileSystemOkHttpNullException;

    invoke-direct {v2}, Lexpo/modules/filesystem/FileSystemOkHttpNullException;-><init>()V

    check-cast v2, Lexpo/modules/kotlin/exception/CodedException;

    invoke-interface {v11, v2}, Lexpo/modules/kotlin/Promise;->reject(Lexpo/modules/kotlin/exception/CodedException;)V

    nop

    .line 654
    .end local v1    # "requestBuilder":Lokhttp3/Request$Builder;
    :cond_6
    :goto_4
    nop

    .line 324
    .end local v8    # "options":Lexpo/modules/filesystem/DownloadOptions;
    .end local v9    # "uriStr":Ljava/lang/String;
    .end local v10    # "url":Ljava/lang/String;
    .end local v11    # "promise":Lexpo/modules/kotlin/Promise;
    .end local v12    # "$i$a$-AsyncFunctionWithPromise-FileSystemModule$definition$1$19":I
    .end local v13    # "uri":Landroid/net/Uri;
    nop

    .line 325
    return-void

    .line 652
    .restart local v8    # "options":Lexpo/modules/filesystem/DownloadOptions;
    .restart local v9    # "uriStr":Ljava/lang/String;
    .restart local v10    # "url":Ljava/lang/String;
    .restart local v11    # "promise":Lexpo/modules/kotlin/Promise;
    .restart local v12    # "$i$a$-AsyncFunctionWithPromise-FileSystemModule$definition$1$19":I
    .restart local v13    # "uri":Landroid/net/Uri;
    :cond_7
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported scheme for location \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
