.class public final Lcom/canhub/cropper/utils/GetFilePathFromUriKt;
.super Ljava/lang/Object;
.source "GetFilePathFromUri.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGetFilePathFromUri.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GetFilePathFromUri.kt\ncom/canhub/cropper/utils/GetFilePathFromUriKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,76:1\n1#2:77\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0002\u001a\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002\u001a \u0010\u000c\u001a\u00020\r2\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002\u001a \u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u0010H\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "copy",
        "",
        "source",
        "Ljava/io/InputStream;",
        "target",
        "Ljava/io/OutputStream;",
        "getFileExtension",
        "",
        "context",
        "Landroid/content/Context;",
        "uri",
        "Landroid/net/Uri;",
        "getFileFromContentUri",
        "Ljava/io/File;",
        "contentUri",
        "uniqueName",
        "",
        "getFilePathFromUri",
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
.method private static final copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .param p0, "source"    # Ljava/io/InputStream;
    .param p1, "target"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 71
    .local v0, "buf":[B
    const/4 v1, 0x0

    .line 72
    .local v1, "length":I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .line 77
    .local v3, "it":I
    const/4 v4, 0x0

    .line 72
    .local v4, "$i$a$-also-GetFilePathFromUriKt$copy$1":I
    move v1, v3

    .end local v3    # "it":I
    .end local v4    # "$i$a$-also-GetFilePathFromUriKt$copy$1":I
    if-lez v2, :cond_0

    .line 73
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method

.method private static final getFileExtension(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 64
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 77
    .local v0, "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 66
    .local v1, "$i$a$-let-GetFilePathFromUriKt$getFileExtension$1":I
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-GetFilePathFromUriKt$getFileExtension$1":I
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static final getFileFromContentUri(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/io/File;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "uniqueName"    # Z

    .line 36
    invoke-static {p0, p1}, Lcom/canhub/cropper/utils/GetFilePathFromUriKt;->getFileExtension(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    .line 37
    .local v0, "fileExtension":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyyMMdd_HHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "timeStamp":Ljava/lang/String;
    if-eqz p2, :cond_1

    move-object v1, v2

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "temp_file_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "fileName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 41
    .local v3, "tempFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 43
    const/4 v4, 0x0

    .line 44
    .local v4, "oStream":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 46
    .local v5, "inputStream":Ljava/lang/Object;
    nop

    .line 47
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v4, v6

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    move-object v5, v6

    .line 50
    if-eqz v5, :cond_2

    move-object v6, v5

    .line 77
    .local v6, "it":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 50
    .local v7, "$i$a$-let-GetFilePathFromUriKt$getFileFromContentUri$1":I
    move-object v8, v4

    check-cast v8, Ljava/io/OutputStream;

    invoke-static {v5, v8}, Lcom/canhub/cropper/utils/GetFilePathFromUriKt;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 51
    .end local v6    # "it":Ljava/io/InputStream;
    .end local v7    # "$i$a$-let-GetFilePathFromUriKt$getFileFromContentUri$1":I
    :cond_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 57
    :cond_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v6

    goto :goto_1

    .line 52
    :catch_0
    move-exception v6

    .line 53
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    .end local v6    # "e":Ljava/lang/Exception;
    move-object v6, v5

    check-cast v6, Ljava/io/InputStream;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 57
    :cond_4
    move-object v6, v4

    check-cast v6, Ljava/io/FileOutputStream;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 58
    :cond_5
    :goto_0
    nop

    .line 60
    return-object v3

    .line 56
    :goto_1
    move-object v7, v5

    check-cast v7, Ljava/io/InputStream;

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 57
    :cond_6
    move-object v7, v4

    check-cast v7, Ljava/io/FileOutputStream;

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    :cond_7
    throw v6
.end method

.method public static final getFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "uniqueName"    # Z

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v2, "file://"

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v2, v1, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    .line 32
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/canhub/cropper/utils/GetFilePathFromUriKt;->getFileFromContentUri(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getFileFromContentUri(co\u2026xt, uri, uniqueName).path"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
