.class public final Lexpo/modules/filesystem/next/FileSystemFile;
.super Lexpo/modules/filesystem/next/FileSystemPath;
.source "FileSystemFile.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFileSystemFile.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileSystemFile.kt\nexpo/modules/filesystem/next/FileSystemFile\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,115:1\n1#2:116\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0015\u001a\u00020\nJ\u0006\u0010\u0016\u001a\u00020\nJ\u0006\u0010\u0017\u001a\u00020\u0018J\u0010\u0010\u0019\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001cJ\u0006\u0010\u001d\u001a\u00020\nJ\u0006\u0010\u001e\u001a\u00020\u001aJ\u0008\u0010\u001f\u001a\u00020\u001aH\u0016J\u000e\u0010 \u001a\u00020\u001a2\u0006\u0010!\u001a\u00020\"J\u000e\u0010 \u001a\u00020\u001a2\u0006\u0010!\u001a\u00020\nR\u0011\u0010\u0005\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0017\u0010\t\u001a\u00020\n8F\u00a2\u0006\u000c\u0012\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000eR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u00108F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u000e\u00a8\u0006#"
    }
    d2 = {
        "Lexpo/modules/filesystem/next/FileSystemFile;",
        "Lexpo/modules/filesystem/next/FileSystemPath;",
        "file",
        "Ljava/io/File;",
        "(Ljava/io/File;)V",
        "exists",
        "",
        "getExists",
        "()Z",
        "md5",
        "",
        "getMd5$annotations",
        "()V",
        "getMd5",
        "()Ljava/lang/String;",
        "size",
        "",
        "getSize",
        "()Ljava/lang/Long;",
        "type",
        "getType",
        "asString",
        "base64",
        "bytes",
        "",
        "create",
        "",
        "options",
        "Lexpo/modules/filesystem/next/CreateOptions;",
        "text",
        "validatePath",
        "validateType",
        "write",
        "content",
        "Lexpo/modules/kotlin/typedarray/TypedArray;",
        "expo-file-system_debug"
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
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/next/FileSystemPath;-><init>(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic create$default(Lexpo/modules/filesystem/next/FileSystemFile;Lexpo/modules/filesystem/next/CreateOptions;ILjava/lang/Object;)V
    .locals 1

    .line 33
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    new-instance p1, Lexpo/modules/filesystem/next/CreateOptions;

    const/4 p2, 0x3

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, p2, p3}, Lexpo/modules/filesystem/next/CreateOptions;-><init>(ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    invoke-virtual {p0, p1}, Lexpo/modules/filesystem/next/FileSystemFile;->create(Lexpo/modules/filesystem/next/CreateOptions;)V

    return-void
.end method

.method public static synthetic getMd5$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final asString()Ljava/lang/String;
    .locals 5

    .line 72
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFile;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .local v0, "uriString":Ljava/lang/String;
    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "/"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->dropLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public final base64()Ljava/lang/String;
    .locals 2

    .line 83
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFile;->validateType()V

    .line 84
    sget-object v0, Lexpo/modules/interfaces/filesystem/Permission;->READ:Lexpo/modules/interfaces/filesystem/Permission;

    invoke-virtual {p0, v0}, Lexpo/modules/filesystem/next/FileSystemFile;->validatePermission(Lexpo/modules/interfaces/filesystem/Permission;)Z

    .line 85
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFile;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lkotlin/io/FilesKt;->readBytes(Ljava/io/File;)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v1, "encodeToString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final bytes()[B
    .locals 1

    .line 89
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFile;->validateType()V

    .line 90
    sget-object v0, Lexpo/modules/interfaces/filesystem/Permission;->READ:Lexpo/modules/interfaces/filesystem/Permission;

    invoke-virtual {p0, v0}, Lexpo/modules/filesystem/next/FileSystemFile;->validatePermission(Lexpo/modules/interfaces/filesystem/Permission;)Z

    .line 91
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFile;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lkotlin/io/FilesKt;->readBytes(Ljava/io/File;)[B

    move-result-object v0

    return-object v0
.end method

.method public final create(Lexpo/modules/filesystem/next/CreateOptions;)V
    .locals 3
    .param p1, "options"    # Lexpo/modules/filesystem/next/CreateOptions;

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFile;->validateType()V

    .line 35
    sget-object v0, Lexpo/modules/interfaces/filesystem/Permission;->WRITE:Lexpo/modules/interfaces/filesystem/Permission;

    invoke-virtual {p0, v0}, Lexpo/modules/filesystem/next/FileSystemFile;->validatePermission(Lexpo/modules/interfaces/filesystem/Permission;)Z

    .line 36
    invoke-virtual {p0, p1}, Lexpo/modules/filesystem/next/FileSystemFile;->validateCanCreate(Lexpo/modules/filesystem/next/CreateOptions;)V

    .line 37
    invoke-virtual {p1}, Lexpo/modules/filesystem/next/CreateOptions;->getOverwrite()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFile;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFile;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 40
    :cond_0
    invoke-virtual {p1}, Lexpo/modules/filesystem/next/CreateOptions;->getIntermediates()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFile;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 43
    :cond_1
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFile;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    .line 44
    .local v0, "created":Z
    if-eqz v0, :cond_2

    .line 47
    return-void

    .line 45
    :cond_2
    new-instance v1, Lexpo/modules/filesystem/next/UnableToCreateException;

    const-string v2, "file already exists or could not be created"

    invoke-direct {v1, v2}, Lexpo/modules/filesystem/next/UnableToCreateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getExists()Z
    .locals 1

    .line 29
    sget-object v0, Lexpo/modules/interfaces/filesystem/Permission;->READ:Lexpo/modules/interfaces/filesystem/Permission;

    invoke-virtual {p0, v0}, Lexpo/modules/filesystem/next/FileSystemFile;->validatePermission(Lexpo/modules/interfaces/filesystem/Permission;)Z

    .line 30
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFile;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0
.end method

.method public final getMd5()Ljava/lang/String;
    .locals 4

    .line 96
    sget-object v0, Lexpo/modules/interfaces/filesystem/Permission;->READ:Lexpo/modules/interfaces/filesystem/Permission;

    invoke-virtual {p0, v0}, Lexpo/modules/filesystem/next/FileSystemFile;->validatePermission(Lexpo/modules/interfaces/filesystem/Permission;)Z

    .line 97
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 98
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFile;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lkotlin/io/FilesKt;->readBytes(Ljava/io/File;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 99
    .local v1, "digest":[B
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lkotlin/text/HexExtensionsKt;->toHexString$default([BLkotlin/text/HexFormat;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final getSize()Ljava/lang/Long;
    .locals 2

    .line 103
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFile;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFile;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 106
    :cond_0
    const/4 v0, 0x0

    .line 103
    :goto_0
    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 5

    .line 112
    nop

    .line 111
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFile;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_0

    .line 111
    nop

    .line 112
    nop

    .line 116
    .local v0, "$this$_get_type__u24lambda_u242":Ljava/lang/String;
    const/4 v1, 0x0

    .line 112
    .local v1, "$i$a$-run-FileSystemFile$type$1":I
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "toLowerCase(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$this$_get_type__u24lambda_u242":Ljava/lang/String;
    .end local v1    # "$i$a$-run-FileSystemFile$type$1":I
    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 111
    :goto_0
    return-object v0
.end method

.method public final text()Ljava/lang/String;
    .locals 3

    .line 77
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFile;->validateType()V

    .line 78
    sget-object v0, Lexpo/modules/interfaces/filesystem/Permission;->READ:Lexpo/modules/interfaces/filesystem/Permission;

    invoke-virtual {p0, v0}, Lexpo/modules/filesystem/next/FileSystemFile;->validatePermission(Lexpo/modules/interfaces/filesystem/Permission;)Z

    .line 79
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFile;->getFile()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final validatePath()V
    .locals 0

    .line 17
    return-void
.end method

.method public validateType()V
    .locals 1

    .line 22
    sget-object v0, Lexpo/modules/interfaces/filesystem/Permission;->READ:Lexpo/modules/interfaces/filesystem/Permission;

    invoke-virtual {p0, v0}, Lexpo/modules/filesystem/next/FileSystemFile;->validatePermission(Lexpo/modules/interfaces/filesystem/Permission;)Z

    .line 23
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFile;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFile;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    new-instance v0, Lexpo/modules/filesystem/next/InvalidTypeFileException;

    invoke-direct {v0}, Lexpo/modules/filesystem/next/InvalidTypeFileException;-><init>()V

    throw v0

    .line 26
    :cond_1
    :goto_0
    return-void
.end method

.method public final write(Lexpo/modules/kotlin/typedarray/TypedArray;)V
    .locals 6
    .param p1, "content"    # Lexpo/modules/kotlin/typedarray/TypedArray;

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFile;->validateType()V

    .line 62
    sget-object v0, Lexpo/modules/interfaces/filesystem/Permission;->WRITE:Lexpo/modules/interfaces/filesystem/Permission;

    invoke-virtual {p0, v0}, Lexpo/modules/filesystem/next/FileSystemFile;->validatePermission(Lexpo/modules/interfaces/filesystem/Permission;)Z

    .line 63
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFile;->getExists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 64
    const/4 v0, 0x1

    invoke-static {p0, v1, v0, v1}, Lexpo/modules/filesystem/next/FileSystemFile;->create$default(Lexpo/modules/filesystem/next/FileSystemFile;Lexpo/modules/filesystem/next/CreateOptions;ILjava/lang/Object;)V

    .line 66
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFile;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v0, Ljava/io/Closeable;

    :try_start_0
    move-object v2, v0

    check-cast v2, Ljava/io/FileOutputStream;

    .local v2, "it":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 67
    .local v3, "$i$a$-use-FileSystemFile$write$2":I
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-interface {p1}, Lexpo/modules/kotlin/typedarray/TypedArray;->toDirectBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .end local v2    # "it":Ljava/io/FileOutputStream;
    .end local v3    # "$i$a$-use-FileSystemFile$write$2":I
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 69
    return-void

    .line 66
    :catchall_0
    move-exception v1

    .end local p1    # "content":Lexpo/modules/kotlin/typedarray/TypedArray;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local p1    # "content":Lexpo/modules/kotlin/typedarray/TypedArray;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final write(Ljava/lang/String;)V
    .locals 6
    .param p1, "content"    # Ljava/lang/String;

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFile;->validateType()V

    .line 51
    sget-object v0, Lexpo/modules/interfaces/filesystem/Permission;->WRITE:Lexpo/modules/interfaces/filesystem/Permission;

    invoke-virtual {p0, v0}, Lexpo/modules/filesystem/next/FileSystemFile;->validatePermission(Lexpo/modules/interfaces/filesystem/Permission;)Z

    .line 52
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFile;->getExists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 53
    const/4 v0, 0x1

    invoke-static {p0, v1, v0, v1}, Lexpo/modules/filesystem/next/FileSystemFile;->create$default(Lexpo/modules/filesystem/next/FileSystemFile;Lexpo/modules/filesystem/next/CreateOptions;ILjava/lang/Object;)V

    .line 55
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFile;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v0, Ljava/io/Closeable;

    :try_start_0
    move-object v2, v0

    check-cast v2, Ljava/io/FileOutputStream;

    .local v2, "it":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 56
    .local v3, "$i$a$-use-FileSystemFile$write$1":I
    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    const-string v5, "getBytes(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 57
    nop

    .end local v2    # "it":Ljava/io/FileOutputStream;
    .end local v3    # "$i$a$-use-FileSystemFile$write$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 58
    return-void

    .line 55
    :catchall_0
    move-exception v1

    .end local p1    # "content":Ljava/lang/String;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local p1    # "content":Ljava/lang/String;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method
