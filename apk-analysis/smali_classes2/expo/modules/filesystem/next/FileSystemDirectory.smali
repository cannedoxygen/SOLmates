.class public final Lexpo/modules/filesystem/next/FileSystemDirectory;
.super Lexpo/modules/filesystem/next/FileSystemPath;
.source "FileSystemDirectory.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFileSystemDirectory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileSystemDirectory.kt\nexpo/modules/filesystem/next/FileSystemDirectory\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,58:1\n11065#2:59\n11400#2,3:60\n*S KotlinDebug\n*F\n+ 1 FileSystemDirectory.kt\nexpo/modules/filesystem/next/FileSystemDirectory\n*L\n44#1:59\n44#1:60,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\t\u001a\u00020\nJ\u0010\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000eJ\u0018\u0010\u000f\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00120\u00110\u0010J\u0006\u0010\u0013\u001a\u00020\u000cJ\u0008\u0010\u0014\u001a\u00020\u000cH\u0016R\u0011\u0010\u0005\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0015"
    }
    d2 = {
        "Lexpo/modules/filesystem/next/FileSystemDirectory;",
        "Lexpo/modules/filesystem/next/FileSystemPath;",
        "file",
        "Ljava/io/File;",
        "(Ljava/io/File;)V",
        "exists",
        "",
        "getExists",
        "()Z",
        "asString",
        "",
        "create",
        "",
        "options",
        "Lexpo/modules/filesystem/next/CreateOptions;",
        "listAsRecords",
        "",
        "",
        "",
        "validatePath",
        "validateType",
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

    .line 7
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/next/FileSystemPath;-><init>(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic create$default(Lexpo/modules/filesystem/next/FileSystemDirectory;Lexpo/modules/filesystem/next/CreateOptions;ILjava/lang/Object;)V
    .locals 1

    .line 23
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    new-instance p1, Lexpo/modules/filesystem/next/CreateOptions;

    const/4 p2, 0x3

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, p2, p3}, Lexpo/modules/filesystem/next/CreateOptions;-><init>(ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    invoke-virtual {p0, p1}, Lexpo/modules/filesystem/next/FileSystemDirectory;->create(Lexpo/modules/filesystem/next/CreateOptions;)V

    return-void
.end method


# virtual methods
.method public final asString()Ljava/lang/String;
    .locals 5

    .line 54
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemDirectory;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .local v0, "uriString":Ljava/lang/String;
    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "/"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public final create(Lexpo/modules/filesystem/next/CreateOptions;)V
    .locals 3
    .param p1, "options"    # Lexpo/modules/filesystem/next/CreateOptions;

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemDirectory;->validateType()V

    .line 25
    sget-object v0, Lexpo/modules/interfaces/filesystem/Permission;->WRITE:Lexpo/modules/interfaces/filesystem/Permission;

    invoke-virtual {p0, v0}, Lexpo/modules/filesystem/next/FileSystemDirectory;->validatePermission(Lexpo/modules/interfaces/filesystem/Permission;)Z

    .line 26
    invoke-virtual {p0, p1}, Lexpo/modules/filesystem/next/FileSystemDirectory;->validateCanCreate(Lexpo/modules/filesystem/next/CreateOptions;)V

    .line 27
    invoke-virtual {p1}, Lexpo/modules/filesystem/next/CreateOptions;->getOverwrite()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemDirectory;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemDirectory;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 30
    :cond_0
    invoke-virtual {p1}, Lexpo/modules/filesystem/next/CreateOptions;->getIntermediates()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemDirectory;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemDirectory;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    .line 30
    :goto_0
    nop

    .line 35
    .local v0, "created":Z
    if-eqz v0, :cond_2

    .line 38
    return-void

    .line 36
    :cond_2
    new-instance v1, Lexpo/modules/filesystem/next/UnableToCreateException;

    const-string v2, "directory already exists or could not be created"

    invoke-direct {v1, v2}, Lexpo/modules/filesystem/next/UnableToCreateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getExists()Z
    .locals 1

    .line 19
    sget-object v0, Lexpo/modules/interfaces/filesystem/Permission;->READ:Lexpo/modules/interfaces/filesystem/Permission;

    invoke-virtual {p0, v0}, Lexpo/modules/filesystem/next/FileSystemDirectory;->validatePermission(Lexpo/modules/interfaces/filesystem/Permission;)Z

    .line 20
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemDirectory;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public final listAsRecords()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 42
    invoke-virtual/range {p0 .. p0}, Lexpo/modules/filesystem/next/FileSystemDirectory;->validateType()V

    .line 43
    sget-object v0, Lexpo/modules/interfaces/filesystem/Permission;->READ:Lexpo/modules/interfaces/filesystem/Permission;

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lexpo/modules/filesystem/next/FileSystemDirectory;->validatePermission(Lexpo/modules/interfaces/filesystem/Permission;)Z

    .line 44
    invoke-virtual/range {p0 .. p0}, Lexpo/modules/filesystem/next/FileSystemDirectory;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .local v0, "$this$map$iv":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 59
    .local v2, "$i$f$map":I
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v0

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v0

    .local v4, "$this$mapTo$iv$iv":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 60
    .local v5, "$i$f$mapTo":I
    array-length v6, v4

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_1

    aget-object v9, v4, v8

    .line 61
    .local v9, "item$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    .local v10, "it":Ljava/io/File;
    const/4 v11, 0x0

    .line 45
    .local v11, "$i$a$-map-FileSystemDirectory$listAsRecords$1":I
    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "toString(...)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .local v12, "uriString":Ljava/lang/String;
    const/4 v13, 0x2

    new-array v14, v13, [Lkotlin/Pair;

    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    const-string v13, "isDirectory"

    invoke-static {v13, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v13

    aput-object v13, v14, v7

    .line 48
    const/4 v13, 0x0

    const-string v15, "/"

    move-object/from16 v16, v0

    const/4 v0, 0x2

    .end local v0    # "$this$map$iv":[Ljava/lang/Object;
    .local v16, "$this$map$iv":[Ljava/lang/Object;
    invoke-static {v12, v15, v7, v0, v13}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v12

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v13, "uri"

    invoke-static {v13, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v13, 0x1

    aput-object v0, v14, v13

    .line 47
    nop

    .line 46
    invoke-static {v14}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 61
    .end local v10    # "it":Ljava/io/File;
    .end local v11    # "$i$a$-map-FileSystemDirectory$listAsRecords$1":I
    .end local v12    # "uriString":Ljava/lang/String;
    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 60
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v16

    goto :goto_0

    .line 62
    .end local v16    # "$this$map$iv":[Ljava/lang/Object;
    .restart local v0    # "$this$map$iv":[Ljava/lang/Object;
    :cond_1
    move-object/from16 v16, v0

    .end local v0    # "$this$map$iv":[Ljava/lang/Object;
    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    .end local v5    # "$i$f$mapTo":I
    .restart local v16    # "$this$map$iv":[Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, Ljava/util/List;

    .line 59
    nop

    .line 44
    .end local v2    # "$i$f$map":I
    .end local v16    # "$this$map$iv":[Ljava/lang/Object;
    goto :goto_2

    .line 50
    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 44
    :goto_2
    return-object v0
.end method

.method public final validatePath()V
    .locals 0

    .line 10
    return-void
.end method

.method public validateType()V
    .locals 1

    .line 13
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemDirectory;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemDirectory;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Lexpo/modules/filesystem/next/InvalidTypeFolderException;

    invoke-direct {v0}, Lexpo/modules/filesystem/next/InvalidTypeFolderException;-><init>()V

    throw v0

    .line 16
    :cond_1
    :goto_0
    return-void
.end method
