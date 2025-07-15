.class public final Lexpo/modules/asset/AssetModule;
.super Lexpo/modules/kotlin/modules/Module;
.source "AssetModule.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAssetModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AssetModule.kt\nexpo/modules/asset/AssetModule\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 AsyncFunctionBuilder.kt\nexpo/modules/kotlin/functions/AsyncFunctionBuilderKt\n+ 6 AsyncFunctionBuilder.kt\nexpo/modules/kotlin/functions/AsyncFunctionBuilder\n+ 7 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 8 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeProvider\n*L\n1#1,100:1\n61#2:101\n14#3:102\n25#3:103\n27#4,3:104\n31#4:151\n263#5:107\n45#6:108\n48#6,3:148\n194#7,8:109\n168#7:117\n158#7,8:120\n202#7:128\n168#7:129\n158#7,8:130\n203#7:138\n168#7:139\n158#7,8:140\n143#8,2:118\n*S KotlinDebug\n*F\n+ 1 AssetModule.kt\nexpo/modules/asset/AssetModule\n*L\n75#1:101\n75#1:102\n75#1:103\n75#1:104,3\n75#1:151\n78#1:107\n78#1:108\n78#1:148,3\n78#1:109,8\n78#1:117\n78#1:120,8\n78#1:128\n78#1:129\n78#1:130,8\n78#1:138\n78#1:139\n78#1:140,8\n78#1:118,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J&\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0082@\u00a2\u0006\u0002\u0010\u0011J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u0010H\u0002J\u0010\u0010\u0015\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\u000eH\u0002R\u0014\u0010\u0003\u001a\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0016"
    }
    d2 = {
        "Lexpo/modules/asset/AssetModule;",
        "Lexpo/modules/kotlin/modules/Module;",
        "()V",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "downloadAsset",
        "Landroid/net/Uri;",
        "appContext",
        "Lexpo/modules/kotlin/AppContext;",
        "uri",
        "Ljava/net/URI;",
        "localUrl",
        "Ljava/io/File;",
        "(Lexpo/modules/kotlin/AppContext;Ljava/net/URI;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getMD5HashOfFileContent",
        "",
        "file",
        "getMD5HashOfFilePath",
        "expo-asset_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    return-void
.end method

.method public static final synthetic access$downloadAsset(Lexpo/modules/asset/AssetModule;Lexpo/modules/kotlin/AppContext;Ljava/net/URI;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/asset/AssetModule;
    .param p1, "appContext"    # Lexpo/modules/kotlin/AppContext;
    .param p2, "uri"    # Ljava/net/URI;
    .param p3, "localUrl"    # Ljava/io/File;
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lexpo/modules/asset/AssetModule;->downloadAsset(Lexpo/modules/kotlin/AppContext;Ljava/net/URI;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getContext(Lexpo/modules/asset/AssetModule;)Landroid/content/Context;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/asset/AssetModule;

    .line 22
    invoke-direct {p0}, Lexpo/modules/asset/AssetModule;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getMD5HashOfFileContent(Lexpo/modules/asset/AssetModule;Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/asset/AssetModule;
    .param p1, "file"    # Ljava/io/File;

    .line 22
    invoke-direct {p0, p1}, Lexpo/modules/asset/AssetModule;->getMD5HashOfFileContent(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getMD5HashOfFilePath(Lexpo/modules/asset/AssetModule;Ljava/net/URI;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/asset/AssetModule;
    .param p1, "uri"    # Ljava/net/URI;

    .line 22
    invoke-direct {p0, p1}, Lexpo/modules/asset/AssetModule;->getMD5HashOfFilePath(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final downloadAsset(Lexpo/modules/kotlin/AppContext;Ljava/net/URI;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/AppContext;",
            "Ljava/net/URI;",
            "Ljava/io/File;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lexpo/modules/asset/AssetModule$downloadAsset$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lexpo/modules/asset/AssetModule$downloadAsset$1;

    iget v1, v0, Lexpo/modules/asset/AssetModule$downloadAsset$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lexpo/modules/asset/AssetModule$downloadAsset$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lexpo/modules/asset/AssetModule$downloadAsset$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lexpo/modules/asset/AssetModule$downloadAsset$1;

    invoke-direct {v0, p0, p4}, Lexpo/modules/asset/AssetModule$downloadAsset$1;-><init>(Lexpo/modules/asset/AssetModule;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p4, v0

    .local p4, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p4, Lexpo/modules/asset/AssetModule$downloadAsset$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 47
    iget v2, p4, Lexpo/modules/asset/AssetModule$downloadAsset$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p4    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p4    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v0

    goto :goto_2

    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 48
    .local v2, "this":Lexpo/modules/asset/AssetModule;
    .local p1, "appContext":Lexpo/modules/kotlin/AppContext;
    .local p2, "uri":Ljava/net/URI;
    .local p3, "localUrl":Ljava/io/File;
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-ne v3, v5, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    if-nez v3, :cond_2

    .line 49
    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    .line 52
    :cond_2
    invoke-virtual {p1}, Lexpo/modules/kotlin/AppContext;->getFilePermission()Lexpo/modules/interfaces/filesystem/FilePermissionModuleInterface;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Lexpo/modules/interfaces/filesystem/FilePermissionModuleInterface;->getPathPermissions(Landroid/content/Context;Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object v3

    if-eqz v3, :cond_3

    sget-object v6, Lexpo/modules/interfaces/filesystem/Permission;->WRITE:Lexpo/modules/interfaces/filesystem/Permission;

    invoke-virtual {v3, v6}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_3

    move v4, v5

    :cond_3
    if-eqz v4, :cond_5

    .line 56
    invoke-virtual {p1}, Lexpo/modules/kotlin/AppContext;->getBackgroundCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    invoke-interface {v3}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    new-instance v4, Lexpo/modules/asset/AssetModule$downloadAsset$2;

    const/4 v6, 0x0

    invoke-direct {v4, p2, v2, p3, v6}, Lexpo/modules/asset/AssetModule$downloadAsset$2;-><init>(Ljava/net/URI;Lexpo/modules/asset/AssetModule;Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    iput v5, p4, Lexpo/modules/asset/AssetModule$downloadAsset$1;->label:I

    invoke-static {v3, v4, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local v2    # "this":Lexpo/modules/asset/AssetModule;
    .end local p1    # "appContext":Lexpo/modules/kotlin/AppContext;
    .end local p2    # "uri":Ljava/net/URI;
    .end local p3    # "localUrl":Ljava/io/File;
    if-ne p1, v1, :cond_4

    .line 47
    return-object v1

    .line 56
    :cond_4
    :goto_2
    const-string p2, "withContext(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 53
    .restart local p2    # "uri":Ljava/net/URI;
    :cond_5
    new-instance p1, Lexpo/modules/asset/UnableToDownloadAssetException;

    invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p3

    .end local p2    # "uri":Ljava/net/URI;
    const-string p2, "toString(...)"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p3}, Lexpo/modules/asset/UnableToDownloadAssetException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final getContext()Landroid/content/Context;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lexpo/modules/asset/AssetModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lexpo/modules/kotlin/exception/Exceptions$AppContextLost;

    invoke-direct {v0}, Lexpo/modules/kotlin/exception/Exceptions$AppContextLost;-><init>()V

    throw v0
.end method

.method private final getMD5HashOfFileContent(Ljava/io/File;)Ljava/lang/String;
    .locals 18
    .param p1, "file"    # Ljava/io/File;

    .line 32
    nop

    .line 33
    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v2, p1

    :try_start_1
    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v0

    check-cast v3, Ljava/io/Closeable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    move-object v0, v3

    check-cast v0, Ljava/io/FileInputStream;

    move-object v4, v0

    .local v4, "inputStream":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 34
    .local v5, "$i$a$-use-AssetModule$getMD5HashOfFileContent$1":I
    new-instance v0, Ljava/security/DigestInputStream;

    .line 35
    move-object v6, v4

    check-cast v6, Ljava/io/InputStream;

    .line 36
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 34
    invoke-direct {v0, v6, v7}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    move-object v6, v0

    check-cast v6, Ljava/io/Closeable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 37
    :try_start_3
    move-object v0, v6

    check-cast v0, Ljava/security/DigestInputStream;

    .local v0, "digestInputStream":Ljava/security/DigestInputStream;
    const/4 v7, 0x0

    .line 38
    .local v7, "$i$a$-use-AssetModule$getMD5HashOfFileContent$1$1":I
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v8

    invoke-virtual {v8}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    const-string v8, "digest(...)"

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, ""

    move-object v10, v8

    check-cast v10, Ljava/lang/CharSequence;

    sget-object v8, Lexpo/modules/asset/AssetModule$getMD5HashOfFileContent$1$1$1;->INSTANCE:Lexpo/modules/asset/AssetModule$getMD5HashOfFileContent$1$1$1;

    move-object v15, v8

    check-cast v15, Lkotlin/jvm/functions/Function1;

    const/16 v16, 0x1e

    const/16 v17, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v9 .. v17}, Lkotlin/collections/ArraysKt;->joinToString$default([BLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 37
    .end local v0    # "digestInputStream":Ljava/security/DigestInputStream;
    .end local v7    # "$i$a$-use-AssetModule$getMD5HashOfFileContent$1$1":I
    :try_start_4
    invoke-static {v6, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 33
    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .end local v5    # "$i$a$-use-AssetModule$getMD5HashOfFileContent$1":I
    :try_start_5
    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-object v1, v8

    goto :goto_1

    .line 37
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "$i$a$-use-AssetModule$getMD5HashOfFileContent$1":I
    :catchall_0
    move-exception v0

    move-object v7, v0

    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .end local v5    # "$i$a$-use-AssetModule$getMD5HashOfFileContent$1":I
    .end local p1    # "file":Ljava/io/File;
    :try_start_6
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "$i$a$-use-AssetModule$getMD5HashOfFileContent$1":I
    .restart local p1    # "file":Ljava/io/File;
    :catchall_1
    move-exception v0

    move-object v8, v0

    :try_start_7
    invoke-static {v6, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local p1    # "file":Ljava/io/File;
    throw v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 33
    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .end local v5    # "$i$a$-use-AssetModule$getMD5HashOfFileContent$1":I
    .restart local p1    # "file":Ljava/io/File;
    :catchall_2
    move-exception v0

    move-object v4, v0

    .end local p1    # "file":Ljava/io/File;
    :try_start_8
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .restart local p1    # "file":Ljava/io/File;
    :catchall_3
    move-exception v0

    move-object v5, v0

    :try_start_9
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local p1    # "file":Ljava/io/File;
    throw v5
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 41
    .restart local p1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v2, p1

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    nop

    .line 32
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v1
.end method

.method private final getMD5HashOfFilePath(Ljava/net/URI;)Ljava/lang/String;
    .locals 12
    .param p1, "uri"    # Ljava/net/URI;

    .line 27
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 28
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "toString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v2, "getBytes(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    const-string v1, "digest(...)"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, ""

    move-object v4, v1

    check-cast v4, Ljava/lang/CharSequence;

    sget-object v1, Lexpo/modules/asset/AssetModule$getMD5HashOfFilePath$1;->INSTANCE:Lexpo/modules/asset/AssetModule$getMD5HashOfFilePath$1;

    move-object v9, v1

    check-cast v9, Lkotlin/jvm/functions/Function1;

    const/16 v10, 0x1e

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/ArraysKt;->joinToString$default([BLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 33

    .line 75
    move-object/from16 v1, p0

    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/modules/Module;

    .local v2, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    const/4 v3, 0x0

    .line 101
    .local v3, "$i$f$ModuleDefinition":I
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ".ModuleDefinition"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "blockName$iv$iv":Ljava/lang/String;
    const/4 v5, 0x0

    .line 102
    .local v5, "$i$f$trace":I
    const-string v6, "ExpoModulesCore"

    .local v6, "tag$iv$iv$iv":Ljava/lang/String;
    const/4 v7, 0x0

    .line 103
    .local v7, "$i$f$trace":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "] "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .local v8, "label$iv$iv$iv$iv":Ljava/lang/String;
    const/4 v9, 0x0

    .line 104
    .local v9, "$i$f$trace":I
    invoke-static {v8}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 105
    nop

    .line 106
    const/4 v0, 0x0

    .line 101
    .local v0, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    :try_start_0
    new-instance v10, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v10, v2}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    move-object v11, v10

    .local v11, "$this$definition_u24lambda_u243":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    const/4 v12, 0x0

    .line 76
    .local v12, "$i$a$-ModuleDefinition-AssetModule$definition$1":I
    const-string v13, "ExpoAsset"

    invoke-virtual {v11, v13}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    .line 78
    const-string v13, "downloadAsync"

    invoke-virtual {v11, v13}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->AsyncFunction(Ljava/lang/String;)Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;

    move-result-object v13

    .local v13, "$this$Coroutine$iv":Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;
    const/4 v14, 0x0

    .line 107
    .local v14, "$i$f$Coroutine":I
    move-object v15, v13

    .local v15, "this_$iv$iv":Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;
    const/16 v16, 0x0

    .line 108
    .local v16, "$i$f$SuspendBody":I
    move/from16 v17, v0

    .end local v0    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .local v17, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    new-instance v0, Lexpo/modules/kotlin/functions/SuspendFunctionComponent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    move-object/from16 v18, v2

    .end local v2    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .local v18, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    :try_start_1
    invoke-virtual {v15}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v19

    move-object/from16 v20, v19

    .line 109
    .local v20, "converterProvider$iv$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 110
    const-class v19, Ljava/net/URI;

    .line 109
    .local v19, "p0$iv$iv$iv":Ljava/lang/Class;
    nop

    .line 111
    const-class v21, Ljava/lang/String;

    .line 109
    .local v21, "p1$iv$iv$iv":Ljava/lang/Class;
    nop

    .line 112
    const-class v22, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 109
    .local v22, "p2$iv$iv$iv":Ljava/lang/Class;
    const/16 v23, 0x0

    .line 116
    .local v23, "$i$f$toArgsArray":I
    move/from16 v24, v3

    .end local v3    # "$i$f$ModuleDefinition":I
    .local v24, "$i$f$ModuleDefinition":I
    const/4 v3, 0x3

    :try_start_2
    new-array v3, v3, [Lexpo/modules/kotlin/types/AnyType;

    const/16 v25, 0x0

    .line 117
    .local v25, "$i$f$toAnyType":I
    sget-object v26, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .local v26, "this_$iv$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/16 v27, 0x0

    .line 118
    .local v27, "$i$f$cachedAnyType":I
    move-object/from16 v28, v4

    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .local v28, "blockName$iv$iv":Ljava/lang/String;
    :try_start_3
    new-instance v4, Lkotlin/Pair;

    const-class v29, Ljava/net/URI;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    move/from16 v30, v5

    .end local v5    # "$i$f$trace":I
    .local v30, "$i$f$trace":I
    :try_start_4
    invoke-static/range {v29 .. v29}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    move-object/from16 v29, v6

    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .local v29, "tag$iv$iv$iv":Ljava/lang/String;
    const/4 v6, 0x0

    move/from16 v31, v7

    .end local v7    # "$i$f$trace":I
    .local v31, "$i$f$trace":I
    :try_start_5
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v4, v5, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 119
    .local v4, "key$iv$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual/range {v26 .. v26}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lexpo/modules/kotlin/types/AnyType;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 117
    .end local v4    # "key$iv$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v26    # "this_$iv$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v27    # "$i$f$cachedAnyType":I
    if-nez v5, :cond_0

    :try_start_6
    sget-object v4, Lexpo/modules/asset/AssetModule$definition$lambda$3$$inlined$Coroutine$1;->INSTANCE:Lexpo/modules/asset/AssetModule$definition$lambda$3$$inlined$Coroutine$1;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .local v4, "$this$toAnyType$iv$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v5, 0x0

    .line 120
    .local v5, "$i$f$toAnyType":I
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 121
    new-instance v6, Lexpo/modules/kotlin/types/LazyKType;

    const-class v27, Ljava/net/URI;

    move/from16 v32, v5

    .end local v5    # "$i$f$toAnyType":I
    .local v32, "$i$f$toAnyType":I
    invoke-static/range {v27 .. v27}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 123
    nop

    .line 124
    nop

    .line 121
    move-object/from16 v27, v8

    const/4 v8, 0x0

    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v27, "label$iv$iv$iv$iv":Ljava/lang/String;
    :try_start_7
    invoke-direct {v6, v5, v8, v4}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v6, Lkotlin/reflect/KType;

    .line 126
    nop

    .line 120
    move-object/from16 v8, v20

    .end local v20    # "converterProvider$iv$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .local v8, "converterProvider$iv$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    invoke-direct {v7, v6, v8}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 127
    move-object v5, v7

    goto :goto_0

    .line 151
    .end local v4    # "$this$toAnyType$iv$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v8    # "converterProvider$iv$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v11    # "$this$definition_u24lambda_u243":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-AssetModule$definition$1":I
    .end local v13    # "$this$Coroutine$iv":Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;
    .end local v14    # "$i$f$Coroutine":I
    .end local v15    # "this_$iv$iv":Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;
    .end local v16    # "$i$f$SuspendBody":I
    .end local v17    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .end local v19    # "p0$iv$iv$iv":Ljava/lang/Class;
    .end local v21    # "p1$iv$iv$iv":Ljava/lang/Class;
    .end local v22    # "p2$iv$iv$iv":Ljava/lang/Class;
    .end local v23    # "$i$f$toArgsArray":I
    .end local v25    # "$i$f$toAnyType":I
    .end local v32    # "$i$f$toAnyType":I
    :catchall_0
    move-exception v0

    move/from16 v32, v9

    goto/16 :goto_1

    .end local v27    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v8, "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v27, v8

    move/from16 v32, v9

    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v27    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto/16 :goto_1

    .line 117
    .end local v27    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v11    # "$this$definition_u24lambda_u243":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .restart local v12    # "$i$a$-ModuleDefinition-AssetModule$definition$1":I
    .restart local v13    # "$this$Coroutine$iv":Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;
    .restart local v14    # "$i$f$Coroutine":I
    .restart local v15    # "this_$iv$iv":Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;
    .restart local v16    # "$i$f$SuspendBody":I
    .restart local v17    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .restart local v19    # "p0$iv$iv$iv":Ljava/lang/Class;
    .restart local v20    # "converterProvider$iv$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .restart local v21    # "p1$iv$iv$iv":Ljava/lang/Class;
    .restart local v22    # "p2$iv$iv$iv":Ljava/lang/Class;
    .restart local v23    # "$i$f$toArgsArray":I
    .restart local v25    # "$i$f$toAnyType":I
    :cond_0
    move-object/from16 v27, v8

    move-object/from16 v8, v20

    .end local v20    # "converterProvider$iv$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .local v8, "converterProvider$iv$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .restart local v27    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x0

    .end local v25    # "$i$f$toAnyType":I
    :try_start_8
    aput-object v5, v3, v4

    .line 116
    nop

    .line 128
    const/4 v4, 0x0

    .line 129
    .local v4, "$i$f$toAnyType":I
    sget-object v5, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v5, "this_$iv$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v6, 0x0

    .line 118
    .local v6, "$i$f$cachedAnyType":I
    new-instance v7, Lkotlin/Pair;

    const-class v20, Ljava/lang/String;

    move/from16 v25, v4

    .end local v4    # "$i$f$toAnyType":I
    .restart local v25    # "$i$f$toAnyType":I
    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move/from16 v20, v6

    .end local v6    # "$i$f$cachedAnyType":I
    .local v20, "$i$f$cachedAnyType":I
    const/4 v6, 0x1

    move/from16 v32, v9

    .end local v9    # "$i$f$trace":I
    .local v32, "$i$f$trace":I
    :try_start_9
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-direct {v7, v4, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v7

    .line 119
    .local v4, "key$iv$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v5}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lexpo/modules/kotlin/types/AnyType;

    .line 129
    .end local v4    # "key$iv$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v5    # "this_$iv$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v20    # "$i$f$cachedAnyType":I
    if-nez v7, :cond_1

    sget-object v4, Lexpo/modules/asset/AssetModule$definition$lambda$3$$inlined$Coroutine$2;->INSTANCE:Lexpo/modules/asset/AssetModule$definition$lambda$3$$inlined$Coroutine$2;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .local v4, "$this$toAnyType$iv$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v5, 0x0

    .line 130
    .local v5, "$i$f$toAnyType":I
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 131
    new-instance v9, Lexpo/modules/kotlin/types/LazyKType;

    const-class v20, Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    .line 133
    nop

    .line 134
    nop

    .line 131
    move/from16 v20, v5

    const/4 v5, 0x1

    .end local v5    # "$i$f$toAnyType":I
    .local v20, "$i$f$toAnyType":I
    invoke-direct {v9, v6, v5, v4}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v9, Lkotlin/reflect/KType;

    .line 136
    nop

    .line 130
    invoke-direct {v7, v9, v8}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 137
    nop

    .line 129
    .end local v4    # "$this$toAnyType$iv$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v20    # "$i$f$toAnyType":I
    :cond_1
    const/4 v4, 0x1

    .end local v25    # "$i$f$toAnyType":I
    aput-object v7, v3, v4

    .line 116
    nop

    .line 138
    const/4 v4, 0x0

    .line 139
    .local v4, "$i$f$toAnyType":I
    sget-object v5, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v5, "this_$iv$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v6, 0x0

    .line 118
    .restart local v6    # "$i$f$cachedAnyType":I
    new-instance v7, Lkotlin/Pair;

    const-class v9, Ljava/lang/String;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    move/from16 v25, v4

    const/16 v20, 0x0

    .end local v4    # "$i$f$toAnyType":I
    .restart local v25    # "$i$f$toAnyType":I
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v7, v9, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v7

    .line 119
    .local v4, "key$iv$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v5}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lexpo/modules/kotlin/types/AnyType;

    .line 139
    .end local v4    # "key$iv$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v5    # "this_$iv$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v6    # "$i$f$cachedAnyType":I
    if-nez v7, :cond_2

    sget-object v4, Lexpo/modules/asset/AssetModule$definition$lambda$3$$inlined$Coroutine$3;->INSTANCE:Lexpo/modules/asset/AssetModule$definition$lambda$3$$inlined$Coroutine$3;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .local v4, "$this$toAnyType$iv$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v5, 0x0

    .line 140
    .local v5, "$i$f$toAnyType":I
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 141
    new-instance v6, Lexpo/modules/kotlin/types/LazyKType;

    const-class v9, Ljava/lang/String;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    .line 143
    nop

    .line 144
    nop

    .line 141
    move/from16 v20, v5

    const/4 v5, 0x0

    .end local v5    # "$i$f$toAnyType":I
    .restart local v20    # "$i$f$toAnyType":I
    invoke-direct {v6, v9, v5, v4}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v6, Lkotlin/reflect/KType;

    .line 146
    nop

    .line 140
    invoke-direct {v7, v6, v8}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 147
    nop

    .line 139
    .end local v4    # "$this$toAnyType$iv$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v20    # "$i$f$toAnyType":I
    :cond_2
    nop

    .end local v25    # "$i$f$toAnyType":I
    const/4 v4, 0x2

    aput-object v7, v3, v4

    .line 116
    nop

    .line 115
    nop

    .line 148
    .end local v8    # "converterProvider$iv$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v19    # "p0$iv$iv$iv":Ljava/lang/Class;
    .end local v21    # "p1$iv$iv$iv":Ljava/lang/Class;
    .end local v22    # "p2$iv$iv$iv":Ljava/lang/Class;
    .end local v23    # "$i$f$toArgsArray":I
    new-instance v4, Lexpo/modules/asset/AssetModule$definition$lambda$3$$inlined$Coroutine$4;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v1}, Lexpo/modules/asset/AssetModule$definition$lambda$3$$inlined$Coroutine$4;-><init>(Lkotlin/coroutines/Continuation;Lexpo/modules/asset/AssetModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function3;

    .line 108
    invoke-direct {v0, v2, v3, v4}, Lexpo/modules/kotlin/functions/SuspendFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function3;)V

    .line 148
    nop

    .local v0, "it$iv$iv":Lexpo/modules/kotlin/functions/SuspendFunctionComponent;
    const/4 v2, 0x0

    .line 149
    .local v2, "$i$a$-also-AsyncFunctionBuilder$SuspendBody$8$iv$iv":I
    move-object v3, v0

    check-cast v3, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;

    invoke-virtual {v15, v3}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;->setAsyncFunctionComponent(Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;)V

    .line 150
    nop

    .line 148
    .end local v0    # "it$iv$iv":Lexpo/modules/kotlin/functions/SuspendFunctionComponent;
    .end local v2    # "$i$a$-also-AsyncFunctionBuilder$SuspendBody$8$iv$iv":I
    nop

    .line 108
    nop

    .line 107
    .end local v15    # "this_$iv$iv":Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;
    .end local v16    # "$i$f$SuspendBody":I
    nop

    .line 98
    .end local v13    # "$this$Coroutine$iv":Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;
    .end local v14    # "$i$f$Coroutine":I
    nop

    .line 101
    .end local v11    # "$this$definition_u24lambda_u243":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-AssetModule$definition$1":I
    invoke-virtual {v10}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 106
    .end local v17    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    nop

    .line 151
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 106
    nop

    .line 103
    .end local v27    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v32    # "$i$f$trace":I
    nop

    .line 102
    .end local v29    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v31    # "$i$f$trace":I
    nop

    .line 101
    .end local v28    # "blockName$iv$iv":Ljava/lang/String;
    .end local v30    # "$i$f$trace":I
    nop

    .line 98
    .end local v18    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v24    # "$i$f$ModuleDefinition":I
    return-object v0

    .line 151
    .restart local v18    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v24    # "$i$f$ModuleDefinition":I
    .restart local v27    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v28    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v29    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v30    # "$i$f$trace":I
    .restart local v31    # "$i$f$trace":I
    .restart local v32    # "$i$f$trace":I
    :catchall_2
    move-exception v0

    goto :goto_1

    .end local v32    # "$i$f$trace":I
    .restart local v9    # "$i$f$trace":I
    :catchall_3
    move-exception v0

    move/from16 v32, v9

    .end local v9    # "$i$f$trace":I
    .restart local v32    # "$i$f$trace":I
    goto :goto_1

    .end local v27    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v32    # "$i$f$trace":I
    .local v8, "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_4
    move-exception v0

    move-object/from16 v27, v8

    move/from16 v32, v9

    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v27    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v32    # "$i$f$trace":I
    goto :goto_1

    .end local v27    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v29    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v31    # "$i$f$trace":I
    .end local v32    # "$i$f$trace":I
    .local v6, "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_5
    move-exception v0

    move-object/from16 v29, v6

    move/from16 v31, v7

    move-object/from16 v27, v8

    move/from16 v32, v9

    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v27    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v29    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v31    # "$i$f$trace":I
    .restart local v32    # "$i$f$trace":I
    goto :goto_1

    .end local v27    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v29    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v30    # "$i$f$trace":I
    .end local v31    # "$i$f$trace":I
    .end local v32    # "$i$f$trace":I
    .local v5, "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_6
    move-exception v0

    move/from16 v30, v5

    move-object/from16 v29, v6

    move/from16 v31, v7

    move-object/from16 v27, v8

    move/from16 v32, v9

    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v27    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v29    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v30    # "$i$f$trace":I
    .restart local v31    # "$i$f$trace":I
    .restart local v32    # "$i$f$trace":I
    goto :goto_1

    .end local v27    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v28    # "blockName$iv$iv":Ljava/lang/String;
    .end local v29    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v30    # "$i$f$trace":I
    .end local v31    # "$i$f$trace":I
    .end local v32    # "$i$f$trace":I
    .local v4, "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_7
    move-exception v0

    move-object/from16 v28, v4

    move/from16 v30, v5

    move-object/from16 v29, v6

    move/from16 v31, v7

    move-object/from16 v27, v8

    move/from16 v32, v9

    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v27    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v28    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v29    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v30    # "$i$f$trace":I
    .restart local v31    # "$i$f$trace":I
    .restart local v32    # "$i$f$trace":I
    goto :goto_1

    .end local v24    # "$i$f$ModuleDefinition":I
    .end local v27    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v28    # "blockName$iv$iv":Ljava/lang/String;
    .end local v29    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v30    # "$i$f$trace":I
    .end local v31    # "$i$f$trace":I
    .end local v32    # "$i$f$trace":I
    .restart local v3    # "$i$f$ModuleDefinition":I
    .restart local v4    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_8
    move-exception v0

    move/from16 v24, v3

    move-object/from16 v28, v4

    move/from16 v30, v5

    move-object/from16 v29, v6

    move/from16 v31, v7

    move-object/from16 v27, v8

    move/from16 v32, v9

    .end local v3    # "$i$f$ModuleDefinition":I
    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v24    # "$i$f$ModuleDefinition":I
    .restart local v27    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v28    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v29    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v30    # "$i$f$trace":I
    .restart local v31    # "$i$f$trace":I
    .restart local v32    # "$i$f$trace":I
    goto :goto_1

    .end local v18    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v24    # "$i$f$ModuleDefinition":I
    .end local v27    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v28    # "blockName$iv$iv":Ljava/lang/String;
    .end local v29    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v30    # "$i$f$trace":I
    .end local v31    # "$i$f$trace":I
    .end local v32    # "$i$f$trace":I
    .local v2, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v3    # "$i$f$ModuleDefinition":I
    .restart local v4    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_9
    move-exception v0

    move-object/from16 v18, v2

    move/from16 v24, v3

    move-object/from16 v28, v4

    move/from16 v30, v5

    move-object/from16 v29, v6

    move/from16 v31, v7

    move-object/from16 v27, v8

    move/from16 v32, v9

    .end local v2    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v3    # "$i$f$ModuleDefinition":I
    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v18    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v24    # "$i$f$ModuleDefinition":I
    .restart local v27    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v28    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v29    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v30    # "$i$f$trace":I
    .restart local v31    # "$i$f$trace":I
    .restart local v32    # "$i$f$trace":I
    :goto_1
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method
