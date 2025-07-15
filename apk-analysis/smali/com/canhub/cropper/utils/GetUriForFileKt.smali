.class public final Lcom/canhub/cropper/utils/GetUriForFileKt;
.super Ljava/lang/Object;
.source "GetUriForFile.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "getUriForFile",
        "Landroid/net/Uri;",
        "context",
        "Landroid/content/Context;",
        "file",
        "Ljava/io/File;",
        "cropper_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getUriForFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;

    const-string v0, "AIC"

    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "file"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".cropper.fileprovider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "authority":Ljava/lang/String;
    nop

    .line 33
    :try_start_0
    const-string v2, "Try get URI for scope storage - content://"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-static {p0, v1, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "getUriForFile(context, authority, file)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 35
    :catch_0
    move-exception v2

    .line 36
    .local v2, "e":Ljava/lang/Exception;
    nop

    .line 37
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    nop

    .line 40
    const-string v3, "ANR Risk -- Copying the file the location cache to avoid \'external-files-path\' bug for N+ devices"

    .line 38
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "CROP_LIB_CACHE"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 44
    .local v3, "cacheFolder":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 45
    .local v4, "cacheLocation":Ljava/io/File;
    const/4 v5, 0x0

    .line 46
    .local v5, "input":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 47
    .local v6, "output":Ljava/io/OutputStream;
    nop

    .line 48
    const/4 v7, 0x0

    :try_start_2
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v8, Ljava/io/InputStream;

    move-object v5, v8

    .line 49
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v8, Ljava/io/OutputStream;

    move-object v6, v8

    .line 50
    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J

    .line 52
    nop

    .line 53
    const-string v8, "Completed Android N+ file copy. Attempting to return the cached file"

    .line 51
    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-static {p0, v1, v4}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    const-string v9, "getUriForFile(context, authority, cacheLocation)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 71
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 55
    return-object v8

    .line 70
    :catchall_0
    move-exception v7

    goto/16 :goto_1

    .line 56
    :catch_1
    move-exception v8

    .line 57
    .local v8, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string v9, "Trying to provide URI manually"

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "content://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/files/my_images/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 61
    .local v9, "path":Ljava/lang/String;
    sget-object v10, Lcom/canhub/cropper/common/CommonVersionCheck;->INSTANCE:Lcom/canhub/cropper/common/CommonVersionCheck;

    invoke-virtual {v10}, Lcom/canhub/cropper/common/CommonVersionCheck;->isAtLeastO26()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 62
    new-array v10, v7, [Ljava/lang/String;

    invoke-static {v9, v10}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v10

    new-array v7, v7, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v10, v7}, Ljava/nio/file/Files;->createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    goto :goto_0

    .line 64
    :cond_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    .local v7, "directory":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 68
    .end local v7    # "directory":Ljava/io/File;
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const-string/jumbo v10, "parse(\"$path${file.name}\")"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 70
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "path":Ljava/lang/String;
    if-eqz v5, :cond_2

    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 71
    :cond_2
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    :cond_3
    move-object v0, v8

    .local v0, "e":Ljava/lang/Exception;
    move-object v8, v9

    .line 68
    .local v8, "path":Ljava/lang/String;
    return-object v7

    .line 70
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "path":Ljava/lang/String;
    :goto_1
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 71
    :cond_4
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .end local v1    # "authority":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "file":Ljava/io/File;
    :cond_5
    throw v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 73
    .end local v3    # "cacheFolder":Ljava/io/File;
    .end local v4    # "cacheLocation":Ljava/io/File;
    .end local v5    # "input":Ljava/io/InputStream;
    .end local v6    # "output":Ljava/io/OutputStream;
    .restart local v1    # "authority":Ljava/lang/String;
    .restart local v2    # "e":Ljava/lang/Exception;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "file":Ljava/io/File;
    :catch_2
    move-exception v3

    .line 74
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    sget-object v4, Lcom/canhub/cropper/common/CommonVersionCheck;->INSTANCE:Lcom/canhub/cropper/common/CommonVersionCheck;

    invoke-virtual {v4}, Lcom/canhub/cropper/common/CommonVersionCheck;->isAtLeastQ29()Z

    move-result v4

    if-nez v4, :cond_6

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    .line 78
    .local v4, "cacheDir":Ljava/io/File;
    if-eqz v4, :cond_6

    move-object v5, v4

    .local v5, "it":Ljava/io/File;
    const/4 v6, 0x0

    .line 79
    .local v6, "$i$a$-let-GetUriForFileKt$getUriForFile$1":I
    nop

    .line 81
    nop

    .line 82
    :try_start_6
    const-string v7, "Use External storage, do not work for OS 29 and above"

    .line 80
    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v7, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    const-string v8, "fromFile(File(cacheDir.path, file.absolutePath))"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    return-object v7

    .line 85
    :catch_3
    move-exception v7

    .line 86
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .end local v7    # "e":Ljava/lang/Exception;
    nop

    .line 78
    .end local v5    # "it":Ljava/io/File;
    .end local v6    # "$i$a$-let-GetUriForFileKt$getUriForFile$1":I
    nop

    .line 91
    .end local v4    # "cacheDir":Ljava/io/File;
    :cond_6
    const-string v4, "Try get URI using file://"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v4, "fromFile(file)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
