.class public abstract Lexpo/modules/filesystem/next/FileSystemPath;
.super Lexpo/modules/kotlin/sharedobjects/SharedObject;
.source "FileSystemPath.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFileSystemPath.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileSystemPath.kt\nexpo/modules/filesystem/next/FileSystemPath\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,106:1\n13309#2,2:107\n*S KotlinDebug\n*F\n+ 1 FileSystemPath.kt\nexpo/modules/filesystem/next/FileSystemPath\n*L\n20#1:107,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008&\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0000J\u0010\u0010\u000b\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0003J\u000e\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0000J\u000e\u0010\u000f\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0000J\u000e\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016J\u0008\u0010\u0017\u001a\u00020\tH&R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0004\u00a8\u0006\u0018"
    }
    d2 = {
        "Lexpo/modules/filesystem/next/FileSystemPath;",
        "Lexpo/modules/kotlin/sharedobjects/SharedObject;",
        "file",
        "Ljava/io/File;",
        "(Ljava/io/File;)V",
        "getFile",
        "()Ljava/io/File;",
        "setFile",
        "copy",
        "",
        "to",
        "delete",
        "fileOrDirectory",
        "getMoveOrCopyPath",
        "destination",
        "move",
        "validateCanCreate",
        "options",
        "Lexpo/modules/filesystem/next/CreateOptions;",
        "validatePermission",
        "",
        "permission",
        "Lexpo/modules/interfaces/filesystem/Permission;",
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


# instance fields
.field private file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lexpo/modules/kotlin/sharedobjects/SharedObject;-><init>(Lexpo/modules/kotlin/RuntimeContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lexpo/modules/filesystem/next/FileSystemPath;->file:Ljava/io/File;

    return-void
.end method

.method public static synthetic delete$default(Lexpo/modules/filesystem/next/FileSystemPath;Ljava/io/File;ILjava/lang/Object;)V
    .locals 0

    .line 15
    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lexpo/modules/filesystem/next/FileSystemPath;->file:Ljava/io/File;

    :cond_0
    invoke-virtual {p0, p1}, Lexpo/modules/filesystem/next/FileSystemPath;->delete(Ljava/io/File;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: delete"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final copy(Lexpo/modules/filesystem/next/FileSystemPath;)V
    .locals 7
    .param p1, "to"    # Lexpo/modules/filesystem/next/FileSystemPath;

    const-string v0, "to"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemPath;->validateType()V

    .line 82
    invoke-virtual {p1}, Lexpo/modules/filesystem/next/FileSystemPath;->validateType()V

    .line 83
    sget-object v0, Lexpo/modules/interfaces/filesystem/Permission;->READ:Lexpo/modules/interfaces/filesystem/Permission;

    invoke-virtual {p0, v0}, Lexpo/modules/filesystem/next/FileSystemPath;->validatePermission(Lexpo/modules/interfaces/filesystem/Permission;)Z

    .line 84
    sget-object v0, Lexpo/modules/interfaces/filesystem/Permission;->WRITE:Lexpo/modules/interfaces/filesystem/Permission;

    invoke-virtual {p1, v0}, Lexpo/modules/filesystem/next/FileSystemPath;->validatePermission(Lexpo/modules/interfaces/filesystem/Permission;)Z

    .line 86
    iget-object v1, p0, Lexpo/modules/filesystem/next/FileSystemPath;->file:Ljava/io/File;

    invoke-virtual {p0, p1}, Lexpo/modules/filesystem/next/FileSystemPath;->getMoveOrCopyPath(Lexpo/modules/filesystem/next/FileSystemPath;)Ljava/io/File;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/io/FilesKt;->copyRecursively$default(Ljava/io/File;Ljava/io/File;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Z

    .line 87
    return-void
.end method

.method public final delete(Ljava/io/File;)V
    .locals 10
    .param p1, "fileOrDirectory"    # Ljava/io/File;

    const-string v0, "fileOrDirectory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 19
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const-string v1, "\'"

    const-string v2, "failed to delete \'"

    if-eqz v0, :cond_3

    .line 20
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    .local v0, "$this$forEach$iv":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 107
    .local v3, "$i$f$forEach":I
    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v0, v5

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    .local v7, "child":Ljava/io/File;
    const/4 v8, 0x0

    .line 21
    .local v8, "$i$a$-forEach-FileSystemPath$delete$1":I
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 23
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v7}, Lexpo/modules/filesystem/next/FileSystemPath;->delete(Ljava/io/File;)V

    goto :goto_1

    .line 25
    :cond_0
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 29
    :goto_1
    nop

    .line 107
    .end local v7    # "child":Ljava/io/File;
    .end local v8    # "$i$a$-forEach-FileSystemPath$delete$1":I
    nop

    .end local v6    # "element$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 26
    .restart local v6    # "element$iv":Ljava/lang/Object;
    .restart local v7    # "child":Ljava/io/File;
    .restart local v8    # "$i$a$-forEach-FileSystemPath$delete$1":I
    :cond_1
    new-instance v4, Lexpo/modules/filesystem/next/UnableToDeleteException;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lexpo/modules/filesystem/next/UnableToDeleteException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 108
    .end local v6    # "element$iv":Ljava/lang/Object;
    .end local v7    # "child":Ljava/io/File;
    .end local v8    # "$i$a$-forEach-FileSystemPath$delete$1":I
    :cond_2
    nop

    .line 31
    .end local v0    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v3    # "$i$f$forEach":I
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 34
    return-void

    .line 32
    :cond_4
    new-instance v0, Lexpo/modules/filesystem/next/UnableToDeleteException;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lexpo/modules/filesystem/next/UnableToDeleteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_5
    new-instance v0, Lexpo/modules/filesystem/next/UnableToDeleteException;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "path \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lexpo/modules/filesystem/next/UnableToDeleteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getFile()Ljava/io/File;
    .locals 1

    .line 14
    iget-object v0, p0, Lexpo/modules/filesystem/next/FileSystemPath;->file:Ljava/io/File;

    return-object v0
.end method

.method public final getMoveOrCopyPath(Lexpo/modules/filesystem/next/FileSystemPath;)Ljava/io/File;
    .locals 3
    .param p1, "destination"    # Lexpo/modules/filesystem/next/FileSystemPath;

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    instance-of v0, p1, Lexpo/modules/filesystem/next/FileSystemDirectory;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 40
    instance-of v0, p0, Lexpo/modules/filesystem/next/FileSystemFile;

    if-eqz v0, :cond_1

    .line 41
    move-object v0, p1

    check-cast v0, Lexpo/modules/filesystem/next/FileSystemDirectory;

    invoke-virtual {v0}, Lexpo/modules/filesystem/next/FileSystemDirectory;->getExists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lexpo/modules/filesystem/next/FileSystemPath;->file:Ljava/io/File;

    iget-object v2, p0, Lexpo/modules/filesystem/next/FileSystemPath;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 42
    :cond_0
    new-instance v0, Lexpo/modules/filesystem/next/DestinationDoesNotExistException;

    invoke-direct {v0}, Lexpo/modules/filesystem/next/DestinationDoesNotExistException;-><init>()V

    throw v0

    .line 48
    :cond_1
    move-object v0, p1

    check-cast v0, Lexpo/modules/filesystem/next/FileSystemDirectory;

    invoke-virtual {v0}, Lexpo/modules/filesystem/next/FileSystemDirectory;->getExists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lexpo/modules/filesystem/next/FileSystemPath;->file:Ljava/io/File;

    iget-object v2, p0, Lexpo/modules/filesystem/next/FileSystemPath;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 51
    :cond_2
    iget-object v0, p1, Lexpo/modules/filesystem/next/FileSystemPath;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    if-eqz v1, :cond_4

    .line 54
    iget-object v0, p1, Lexpo/modules/filesystem/next/FileSystemPath;->file:Ljava/io/File;

    return-object v0

    .line 52
    :cond_4
    new-instance v0, Lexpo/modules/filesystem/next/DestinationDoesNotExistException;

    invoke-direct {v0}, Lexpo/modules/filesystem/next/DestinationDoesNotExistException;-><init>()V

    throw v0

    .line 57
    :cond_5
    instance-of v0, p0, Lexpo/modules/filesystem/next/FileSystemFile;

    if-eqz v0, :cond_8

    .line 60
    iget-object v0, p1, Lexpo/modules/filesystem/next/FileSystemPath;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-ne v0, v1, :cond_6

    goto :goto_1

    :cond_6
    move v1, v2

    :goto_1
    if-eqz v1, :cond_7

    .line 63
    iget-object v0, p1, Lexpo/modules/filesystem/next/FileSystemPath;->file:Ljava/io/File;

    return-object v0

    .line 61
    :cond_7
    new-instance v0, Lexpo/modules/filesystem/next/DestinationDoesNotExistException;

    invoke-direct {v0}, Lexpo/modules/filesystem/next/DestinationDoesNotExistException;-><init>()V

    throw v0

    .line 58
    :cond_8
    new-instance v0, Lexpo/modules/filesystem/next/CopyOrMoveDirectoryToFileException;

    invoke-direct {v0}, Lexpo/modules/filesystem/next/CopyOrMoveDirectoryToFileException;-><init>()V

    throw v0
.end method

.method public final move(Lexpo/modules/filesystem/next/FileSystemPath;)V
    .locals 9
    .param p1, "to"    # Lexpo/modules/filesystem/next/FileSystemPath;

    const-string v0, "to"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemPath;->validateType()V

    .line 91
    invoke-virtual {p1}, Lexpo/modules/filesystem/next/FileSystemPath;->validateType()V

    .line 92
    sget-object v0, Lexpo/modules/interfaces/filesystem/Permission;->WRITE:Lexpo/modules/interfaces/filesystem/Permission;

    invoke-virtual {p0, v0}, Lexpo/modules/filesystem/next/FileSystemPath;->validatePermission(Lexpo/modules/interfaces/filesystem/Permission;)Z

    .line 93
    sget-object v0, Lexpo/modules/interfaces/filesystem/Permission;->WRITE:Lexpo/modules/interfaces/filesystem/Permission;

    invoke-virtual {p1, v0}, Lexpo/modules/filesystem/next/FileSystemPath;->validatePermission(Lexpo/modules/interfaces/filesystem/Permission;)Z

    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 96
    invoke-virtual {p0, p1}, Lexpo/modules/filesystem/next/FileSystemPath;->getMoveOrCopyPath(Lexpo/modules/filesystem/next/FileSystemPath;)Ljava/io/File;

    move-result-object v0

    .line 97
    .local v0, "destination":Ljava/io/File;
    iget-object v1, p0, Lexpo/modules/filesystem/next/FileSystemPath;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    const-string v2, "toPath(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v4, v2, [Ljava/nio/file/CopyOption;

    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/nio/file/CopyOption;

    invoke-static {v1, v3, v2}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    move-result-object v1

    const-string v2, "move(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iput-object v0, p0, Lexpo/modules/filesystem/next/FileSystemPath;->file:Ljava/io/File;

    .end local v0    # "destination":Ljava/io/File;
    goto :goto_0

    .line 100
    :cond_0
    iget-object v3, p0, Lexpo/modules/filesystem/next/FileSystemPath;->file:Ljava/io/File;

    invoke-virtual {p0, p1}, Lexpo/modules/filesystem/next/FileSystemPath;->getMoveOrCopyPath(Lexpo/modules/filesystem/next/FileSystemPath;)Ljava/io/File;

    move-result-object v4

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/io/FilesKt;->copyTo$default(Ljava/io/File;Ljava/io/File;ZIILjava/lang/Object;)Ljava/io/File;

    .line 101
    iget-object v0, p0, Lexpo/modules/filesystem/next/FileSystemPath;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 102
    invoke-virtual {p0, p1}, Lexpo/modules/filesystem/next/FileSystemPath;->getMoveOrCopyPath(Lexpo/modules/filesystem/next/FileSystemPath;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/filesystem/next/FileSystemPath;->file:Ljava/io/File;

    .line 104
    :goto_0
    return-void
.end method

.method public final setFile(Ljava/io/File;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/io/File;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lexpo/modules/filesystem/next/FileSystemPath;->file:Ljava/io/File;

    return-void
.end method

.method public final validateCanCreate(Lexpo/modules/filesystem/next/CreateOptions;)V
    .locals 2
    .param p1, "options"    # Lexpo/modules/filesystem/next/CreateOptions;

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Lexpo/modules/filesystem/next/CreateOptions;->getOverwrite()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lexpo/modules/filesystem/next/FileSystemPath;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    new-instance v0, Lexpo/modules/filesystem/next/UnableToCreateException;

    const-string v1, "it already exists"

    invoke-direct {v0, v1}, Lexpo/modules/filesystem/next/UnableToCreateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_1
    :goto_0
    return-void
.end method

.method public final validatePermission(Lexpo/modules/interfaces/filesystem/Permission;)Z
    .locals 3
    .param p1, "permission"    # Lexpo/modules/interfaces/filesystem/Permission;

    const-string v0, "permission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemPath;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getFilePermission()Lexpo/modules/interfaces/filesystem/FilePermissionModuleInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemPath;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lexpo/modules/filesystem/next/FileSystemPath;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lexpo/modules/interfaces/filesystem/FilePermissionModuleInterface;->getPathPermissions(Landroid/content/Context;Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    const-class v0, Lexpo/modules/interfaces/filesystem/Permission;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 68
    .local v0, "permissions":Ljava/util/EnumSet;
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 69
    const/4 v1, 0x1

    return v1

    .line 71
    :cond_3
    new-instance v1, Lexpo/modules/filesystem/next/InvalidPermissionException;

    invoke-direct {v1, p1}, Lexpo/modules/filesystem/next/InvalidPermissionException;-><init>(Lexpo/modules/interfaces/filesystem/Permission;)V

    throw v1
.end method

.method public abstract validateType()V
.end method
