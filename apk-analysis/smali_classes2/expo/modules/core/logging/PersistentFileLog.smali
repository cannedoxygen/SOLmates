.class public final Lexpo/modules/core/logging/PersistentFileLog;
.super Ljava/lang/Object;
.source "PersistentFileLog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/core/logging/PersistentFileLog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPersistentFileLog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PersistentFileLog.kt\nexpo/modules/core/logging/PersistentFileLog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,145:1\n1#2:146\n766#3:147\n857#3,2:148\n*S KotlinDebug\n*F\n+ 1 PersistentFileLog.kt\nexpo/modules/core/logging/PersistentFileLog\n*L\n126#1:147\n126#1:148,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0005\u0018\u0000 #2\u00020\u0001:\u0001#B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J;\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00032+\u0008\u0002\u0010\u000b\u001a%\u0012\u001b\u0012\u0019\u0018\u00010\rj\u0004\u0018\u0001`\u000e\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\t0\u000cJ\u0010\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u0003H\u0002J1\u0010\u0014\u001a\u00020\t2)\u0010\u000b\u001a%\u0012\u001b\u0012\u0019\u0018\u00010\rj\u0004\u0018\u0001`\u000e\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\t0\u000cJ\u0008\u0010\u0015\u001a\u00020\tH\u0002J\u0008\u0010\u0016\u001a\u00020\tH\u0002J\u0008\u0010\u0017\u001a\u00020\u0018H\u0002JT\u0010\u0019\u001a\u00020\t2!\u0010\u001a\u001a\u001d\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u001b0\u000c2)\u0010\u000b\u001a%\u0012\u001b\u0012\u0019\u0018\u00010\u001cj\u0004\u0018\u0001`\u001d\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\t0\u000cJ\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u001fJ\u000e\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00030\u001fH\u0002J\u0016\u0010!\u001a\u00020\t2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u001fH\u0002R\u000e\u0010\u0007\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lexpo/modules/core/logging/PersistentFileLog;",
        "",
        "category",
        "",
        "filesDirectory",
        "Ljava/io/File;",
        "(Ljava/lang/String;Ljava/io/File;)V",
        "filePath",
        "appendEntry",
        "",
        "entry",
        "completionHandler",
        "Lkotlin/Function1;",
        "Ljava/lang/Error;",
        "Lkotlin/Error;",
        "Lkotlin/ParameterName;",
        "name",
        "_",
        "appendTextToFile",
        "text",
        "clearEntries",
        "deleteFileSync",
        "ensureFileExists",
        "getFileSize",
        "",
        "purgeEntriesNotMatchingFilter",
        "filter",
        "",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "readEntries",
        "",
        "readFileLinesSync",
        "writeFileLinesSync",
        "entries",
        "Companion",
        "expo-modules-core_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lexpo/modules/core/logging/PersistentFileLog$Companion;

.field private static final FILE_NAME_PREFIX:Ljava/lang/String; = "dev.expo.modules.core.logging"

.field private static final queue:Lexpo/modules/core/logging/PersistentFileLogSerialDispatchQueue;


# instance fields
.field private final filePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/core/logging/PersistentFileLog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/core/logging/PersistentFileLog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/core/logging/PersistentFileLog;->Companion:Lexpo/modules/core/logging/PersistentFileLog$Companion;

    .line 141
    new-instance v0, Lexpo/modules/core/logging/PersistentFileLogSerialDispatchQueue;

    invoke-direct {v0}, Lexpo/modules/core/logging/PersistentFileLogSerialDispatchQueue;-><init>()V

    sput-object v0, Lexpo/modules/core/logging/PersistentFileLog;->queue:Lexpo/modules/core/logging/PersistentFileLogSerialDispatchQueue;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "filesDirectory"    # Ljava/io/File;

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filesDirectory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/dev.expo.modules.core.logging."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/core/logging/PersistentFileLog;->filePath:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static final synthetic access$appendTextToFile(Lexpo/modules/core/logging/PersistentFileLog;Ljava/lang/String;)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/core/logging/PersistentFileLog;
    .param p1, "text"    # Ljava/lang/String;

    .line 24
    invoke-direct {p0, p1}, Lexpo/modules/core/logging/PersistentFileLog;->appendTextToFile(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$deleteFileSync(Lexpo/modules/core/logging/PersistentFileLog;)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/core/logging/PersistentFileLog;

    .line 24
    invoke-direct {p0}, Lexpo/modules/core/logging/PersistentFileLog;->deleteFileSync()V

    return-void
.end method

.method public static final synthetic access$ensureFileExists(Lexpo/modules/core/logging/PersistentFileLog;)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/core/logging/PersistentFileLog;

    .line 24
    invoke-direct {p0}, Lexpo/modules/core/logging/PersistentFileLog;->ensureFileExists()V

    return-void
.end method

.method public static final synthetic access$getFileSize(Lexpo/modules/core/logging/PersistentFileLog;)J
    .locals 2
    .param p0, "$this"    # Lexpo/modules/core/logging/PersistentFileLog;

    .line 24
    invoke-direct {p0}, Lexpo/modules/core/logging/PersistentFileLog;->getFileSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$readFileLinesSync(Lexpo/modules/core/logging/PersistentFileLog;)Ljava/util/List;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/core/logging/PersistentFileLog;

    .line 24
    invoke-direct {p0}, Lexpo/modules/core/logging/PersistentFileLog;->readFileLinesSync()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$writeFileLinesSync(Lexpo/modules/core/logging/PersistentFileLog;Ljava/util/List;)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/core/logging/PersistentFileLog;
    .param p1, "entries"    # Ljava/util/List;

    .line 24
    invoke-direct {p0, p1}, Lexpo/modules/core/logging/PersistentFileLog;->writeFileLinesSync(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic appendEntry$default(Lexpo/modules/core/logging/PersistentFileLog;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    .line 43
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Lexpo/modules/core/logging/PersistentFileLog$appendEntry$1;->INSTANCE:Lexpo/modules/core/logging/PersistentFileLog$appendEntry$1;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lexpo/modules/core/logging/PersistentFileLog;->appendEntry(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final appendTextToFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .line 122
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lexpo/modules/core/logging/PersistentFileLog;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    const-string v2, "defaultCharset(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1, v1}, Lkotlin/io/FilesKt;->appendText(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 123
    return-void
.end method

.method private final deleteFileSync()V
    .locals 2

    .line 134
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lexpo/modules/core/logging/PersistentFileLog;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, "fd":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 138
    :cond_0
    return-void
.end method

.method private final ensureFileExists()V
    .locals 6

    .line 99
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lexpo/modules/core/logging/PersistentFileLog;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "fd":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 101
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    .line 102
    .local v1, "success":Z
    if-eqz v1, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    new-instance v2, Ljava/io/IOException;

    iget-object v3, p0, Lexpo/modules/core/logging/PersistentFileLog;->filePath:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create file at path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 106
    .end local v1    # "success":Z
    :cond_1
    :goto_0
    return-void
.end method

.method private final getFileSize()J
    .locals 8

    .line 109
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lexpo/modules/core/logging/PersistentFileLog;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    .line 111
    return-wide v2

    .line 113
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 114
    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v1, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v4, v1

    check-cast v4, Ljava/io/FileInputStream;

    .line 146
    .local v4, "it":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 114
    .local v5, "$i$a$-use-PersistentFileLog$getFileSize$1":I
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v4    # "it":Ljava/io/FileInputStream;
    .end local v5    # "$i$a$-use-PersistentFileLog$getFileSize$1":I
    const/4 v4, 0x0

    :try_start_2
    invoke-static {v1, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-wide v2, v6

    goto :goto_0

    :catchall_0
    move-exception v4

    .end local v0    # "file":Ljava/io/File;
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .restart local v0    # "file":Ljava/io/File;
    :catchall_1
    move-exception v5

    :try_start_4
    invoke-static {v1, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v0    # "file":Ljava/io/File;
    throw v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 115
    .restart local v0    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Ljava/io/IOException;
    nop

    .line 113
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-wide v2
.end method

.method private final readFileLinesSync()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lexpo/modules/core/logging/PersistentFileLog;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    const-string v2, "defaultCharset(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/io/FilesKt;->readLines(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 147
    .local v1, "$i$f$filter":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 148
    .local v4, "$i$f$filterTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    .local v7, "line":Ljava/lang/String;
    const/4 v8, 0x0

    .line 126
    .local v8, "$i$a$-filter-PersistentFileLog$readFileLinesSync$1":I
    move-object v9, v7

    check-cast v9, Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lez v9, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 148
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "$i$a$-filter-PersistentFileLog$readFileLinesSync$1":I
    :goto_1
    if-eqz v9, :cond_0

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    .end local v6    # "element$iv$iv":Ljava/lang/Object;
    :cond_2
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$filterTo":I
    check-cast v2, Ljava/util/List;

    .line 147
    nop

    .line 126
    .end local v0    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$filter":I
    return-object v2
.end method

.method private final writeFileLinesSync(Ljava/util/List;)V
    .locals 11
    .param p1, "entries"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lexpo/modules/core/logging/PersistentFileLog;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    const-string v1, "\n"

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    const/16 v9, 0x3e

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    const-string v3, "defaultCharset(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lkotlin/io/FilesKt;->writeText(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 131
    return-void
.end method


# virtual methods
.method public final appendEntry(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1, "entry"    # Ljava/lang/String;
    .param p2, "completionHandler"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Error;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completionHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    sget-object v0, Lexpo/modules/core/logging/PersistentFileLog;->queue:Lexpo/modules/core/logging/PersistentFileLogSerialDispatchQueue;

    new-instance v1, Lexpo/modules/core/logging/PersistentFileLog$appendEntry$2;

    invoke-direct {v1, p0, p1, p2}, Lexpo/modules/core/logging/PersistentFileLog$appendEntry$2;-><init>(Lexpo/modules/core/logging/PersistentFileLog;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Lexpo/modules/core/logging/PersistentFileLogSerialDispatchQueue;->add(Lkotlin/jvm/functions/Function0;)V

    .line 61
    return-void
.end method

.method public final clearEntries(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1, "completionHandler"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Error;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "completionHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    sget-object v0, Lexpo/modules/core/logging/PersistentFileLog;->queue:Lexpo/modules/core/logging/PersistentFileLogSerialDispatchQueue;

    new-instance v1, Lexpo/modules/core/logging/PersistentFileLog$clearEntries$1;

    invoke-direct {v1, p0, p1}, Lexpo/modules/core/logging/PersistentFileLog$clearEntries$1;-><init>(Lexpo/modules/core/logging/PersistentFileLog;Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Lexpo/modules/core/logging/PersistentFileLogSerialDispatchQueue;->add(Lkotlin/jvm/functions/Function0;)V

    .line 92
    return-void
.end method

.method public final purgeEntriesNotMatchingFilter(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1, "filter"    # Lkotlin/jvm/functions/Function1;
    .param p2, "completionHandler"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Exception;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "filter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completionHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    sget-object v0, Lexpo/modules/core/logging/PersistentFileLog;->queue:Lexpo/modules/core/logging/PersistentFileLogSerialDispatchQueue;

    new-instance v1, Lexpo/modules/core/logging/PersistentFileLog$purgeEntriesNotMatchingFilter$1;

    invoke-direct {v1, p0, p1, p2}, Lexpo/modules/core/logging/PersistentFileLog$purgeEntriesNotMatchingFilter$1;-><init>(Lexpo/modules/core/logging/PersistentFileLog;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Lexpo/modules/core/logging/PersistentFileLogSerialDispatchQueue;->add(Lkotlin/jvm/functions/Function0;)V

    .line 78
    return-void
.end method

.method public final readEntries()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 33
    const-wide/16 v0, 0x0

    invoke-direct {p0}, Lexpo/modules/core/logging/PersistentFileLog;->getFileSize()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 34
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 36
    :cond_0
    invoke-direct {p0}, Lexpo/modules/core/logging/PersistentFileLog;->readFileLinesSync()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
