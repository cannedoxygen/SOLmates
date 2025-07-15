.class public Lcom/facebook/cache/disk/DefaultDiskStorage;
.super Ljava/lang/Object;
.source "DefaultDiskStorage.java"

# interfaces
.implements Lcom/facebook/cache/disk/DiskStorage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;,
        Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;,
        Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;,
        Lcom/facebook/cache/disk/DefaultDiskStorage$EntryImpl;,
        Lcom/facebook/cache/disk/DefaultDiskStorage$PurgingVisitor;,
        Lcom/facebook/cache/disk/DefaultDiskStorage$EntriesCollector;,
        Lcom/facebook/cache/disk/DefaultDiskStorage$IncompleteFileException;
    }
.end annotation


# static fields
.field private static final CONTENT_FILE_EXTENSION:Ljava/lang/String; = ".cnt"

.field private static final DEFAULT_DISK_STORAGE_VERSION_PREFIX:Ljava/lang/String; = "v2"

.field private static final SHARDING_BUCKET_COUNT:I = 0x64

.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final TEMP_FILE_EXTENSION:Ljava/lang/String; = ".tmp"

.field static final TEMP_FILE_LIFETIME_MS:J


# instance fields
.field private final mCacheErrorLogger:Lcom/facebook/cache/common/CacheErrorLogger;

.field private final mClock:Lcom/facebook/common/time/Clock;

.field private final mIsExternal:Z

.field private final mRootDirectory:Ljava/io/File;

.field private final mVersionDirectory:Ljava/io/File;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCacheErrorLogger(Lcom/facebook/cache/disk/DefaultDiskStorage;)Lcom/facebook/cache/common/CacheErrorLogger;
    .locals 0

    iget-object p0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mCacheErrorLogger:Lcom/facebook/cache/common/CacheErrorLogger;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmClock(Lcom/facebook/cache/disk/DefaultDiskStorage;)Lcom/facebook/common/time/Clock;
    .locals 0

    iget-object p0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mClock:Lcom/facebook/common/time/Clock;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRootDirectory(Lcom/facebook/cache/disk/DefaultDiskStorage;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mRootDirectory:Ljava/io/File;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVersionDirectory(Lcom/facebook/cache/disk/DefaultDiskStorage;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mVersionDirectory:Ljava/io/File;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetShardFileInfo(Lcom/facebook/cache/disk/DefaultDiskStorage;Ljava/io/File;)Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->getShardFileInfo(Ljava/io/File;)Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/facebook/cache/disk/DefaultDiskStorage;->TAG:Ljava/lang/Class;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smgetFileTypefromExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/facebook/cache/disk/DefaultDiskStorage;->getFileTypefromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 43
    const-class v0, Lcom/facebook/cache/disk/DefaultDiskStorage;

    sput-object v0, Lcom/facebook/cache/disk/DefaultDiskStorage;->TAG:Ljava/lang/Class;

    .line 61
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/cache/disk/DefaultDiskStorage;->TEMP_FILE_LIFETIME_MS:J

    return-void
.end method

.method public constructor <init>(Ljava/io/File;ILcom/facebook/cache/common/CacheErrorLogger;)V
    .locals 3
    .param p1, "rootDirectory"    # Ljava/io/File;
    .param p2, "version"    # I
    .param p3, "cacheErrorLogger"    # Lcom/facebook/cache/common/CacheErrorLogger;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iput-object p1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mRootDirectory:Ljava/io/File;

    .line 96
    invoke-static {p1, p3}, Lcom/facebook/cache/disk/DefaultDiskStorage;->isExternal(Ljava/io/File;Lcom/facebook/cache/common/CacheErrorLogger;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mIsExternal:Z

    .line 102
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mRootDirectory:Ljava/io/File;

    invoke-static {p2}, Lcom/facebook/cache/disk/DefaultDiskStorage;->getVersionSubdirectoryName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mVersionDirectory:Ljava/io/File;

    .line 103
    iput-object p3, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mCacheErrorLogger:Lcom/facebook/cache/common/CacheErrorLogger;

    .line 104
    invoke-direct {p0}, Lcom/facebook/cache/disk/DefaultDiskStorage;->recreateDirectoryIfVersionChanges()V

    .line 105
    invoke-static {}, Lcom/facebook/common/time/SystemClock;->get()Lcom/facebook/common/time/SystemClock;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mClock:Lcom/facebook/common/time/Clock;

    .line 106
    return-void
.end method

.method private doRemove(Ljava/io/File;)J
    .locals 4
    .param p1, "contentFile"    # Ljava/io/File;

    .line 414
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 415
    const-wide/16 v0, 0x0

    return-wide v0

    .line 418
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 419
    .local v0, "fileSize":J
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 420
    return-wide v0

    .line 423
    :cond_1
    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method private dumpCacheEntry(Lcom/facebook/cache/disk/DiskStorage$Entry;)Lcom/facebook/cache/disk/DiskStorage$DiskDumpInfoEntry;
    .locals 12
    .param p1, "entry"    # Lcom/facebook/cache/disk/DiskStorage$Entry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 450
    move-object v0, p1

    check-cast v0, Lcom/facebook/cache/disk/DefaultDiskStorage$EntryImpl;

    .line 451
    .local v0, "entryImpl":Lcom/facebook/cache/disk/DefaultDiskStorage$EntryImpl;
    const-string v1, ""

    .line 452
    .local v1, "firstBits":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/facebook/cache/disk/DefaultDiskStorage$EntryImpl;->getResource()Lcom/facebook/binaryresource/FileBinaryResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/binaryresource/FileBinaryResource;->read()[B

    move-result-object v2

    .line 453
    .local v2, "bytes":[B
    invoke-direct {p0, v2}, Lcom/facebook/cache/disk/DefaultDiskStorage;->typeOfBytes([B)Ljava/lang/String;

    move-result-object v9

    .line 454
    .local v9, "type":Ljava/lang/String;
    const-string/jumbo v3, "undefined"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    array-length v3, v2

    const/4 v4, 0x4

    if-lt v3, v4, :cond_0

    .line 455
    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, Ljava/util/Locale;

    const/4 v4, 0x0

    aget-byte v4, v2, v4

    .line 457
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    const/4 v5, 0x1

    aget-byte v5, v2, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    const/4 v6, 0x2

    aget-byte v6, v2, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    const/4 v7, 0x3

    aget-byte v7, v2, v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v4

    .line 456
    const-string v5, "0x%02X 0x%02X 0x%02X 0x%02X"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 459
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/cache/disk/DefaultDiskStorage$EntryImpl;->getResource()Lcom/facebook/binaryresource/FileBinaryResource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/binaryresource/FileBinaryResource;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 460
    .local v10, "path":Ljava/lang/String;
    new-instance v11, Lcom/facebook/cache/disk/DiskStorage$DiskDumpInfoEntry;

    invoke-virtual {v0}, Lcom/facebook/cache/disk/DefaultDiskStorage$EntryImpl;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/facebook/cache/disk/DefaultDiskStorage$EntryImpl;->getSize()J

    move-result-wide v5

    long-to-float v7, v5

    move-object v3, v11

    move-object v5, v10

    move-object v6, v9

    move-object v8, v1

    invoke-direct/range {v3 .. v8}, Lcom/facebook/cache/disk/DiskStorage$DiskDumpInfoEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;)V

    return-object v11
.end method

.method private static getFileTypefromExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "extension"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 566
    const-string v0, ".cnt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 567
    return-object v0

    .line 568
    :cond_0
    const-string v0, ".tmp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 569
    return-object v0

    .line 571
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "resourceId"    # Ljava/lang/String;

    .line 376
    new-instance v0, Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;

    const-string v1, ".cnt"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo-IA;)V

    .line 377
    .local v0, "fileInfo":Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;
    iget-object v1, v0, Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;->resourceId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->getSubdirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, "path":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;->toPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getShardFileInfo(Ljava/io/File;)Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 542
    invoke-static {p1}, Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;->fromFile(Ljava/io/File;)Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;

    move-result-object v0

    .line 543
    .local v0, "info":Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 544
    return-object v1

    .line 546
    :cond_0
    iget-object v2, v0, Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;->resourceId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/facebook/cache/disk/DefaultDiskStorage;->getSubdirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 547
    .local v2, "expectedDirectory":Ljava/io/File;
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 548
    .local v3, "isCorrect":Z
    if-eqz v3, :cond_1

    move-object v1, v0

    :cond_1
    return-object v1
.end method

.method private getSubdirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "resourceId"    # Ljava/lang/String;

    .line 231
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->getSubdirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getSubdirectoryPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "resourceId"    # Ljava/lang/String;

    .line 220
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    rem-int/lit8 v0, v0, 0x64

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "subdirectory":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mVersionDirectory:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getVersionSubdirectoryName(I)Ljava/lang/String;
    .locals 4
    .param p0, "version"    # I

    .line 144
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/util/Locale;

    .line 148
    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 149
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "v2"

    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 144
    const-string v2, "%s.ols%d.%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isExternal(Ljava/io/File;Lcom/facebook/cache/common/CacheErrorLogger;)Z
    .locals 9
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "cacheErrorLogger"    # Lcom/facebook/cache/common/CacheErrorLogger;

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "state":Z
    const/4 v1, 0x0

    .line 116
    .local v1, "appCacheDirPath":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 117
    .local v2, "extStoragePath":Ljava/io/File;
    if-eqz v2, :cond_1

    .line 118
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 120
    .local v3, "cacheDirPath":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 121
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v4, :cond_0

    .line 122
    const/4 v0, 0x1

    .line 130
    :cond_0
    goto :goto_0

    .line 124
    :catch_0
    move-exception v4

    .line 125
    .local v4, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v5, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->OTHER:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v6, Lcom/facebook/cache/disk/DefaultDiskStorage;->TAG:Ljava/lang/Class;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed to read folder to check if external: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v5, v6, v7, v4}, Lcom/facebook/cache/common/CacheErrorLogger;->logError(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 138
    .end local v2    # "extStoragePath":Ljava/io/File;
    .end local v3    # "cacheDirPath":Ljava/lang/String;
    .end local v4    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    goto :goto_1

    .line 132
    :catch_1
    move-exception v2

    .line 133
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->OTHER:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v4, Lcom/facebook/cache/disk/DefaultDiskStorage;->TAG:Ljava/lang/Class;

    const-string v5, "failed to get the external storage directory!"

    invoke-interface {p1, v3, v4, v5, v2}, Lcom/facebook/cache/common/CacheErrorLogger;->logError(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return v0
.end method

.method private mkdirs(Ljava/io/File;Ljava/lang/String;)V
    .locals 4
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/file/FileUtils;->mkdirs(Ljava/io/File;)V
    :try_end_0
    .catch Lcom/facebook/common/file/FileUtils$CreateDirectoryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    nop

    .line 344
    return-void

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "cde":Lcom/facebook/common/file/FileUtils$CreateDirectoryException;
    iget-object v1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mCacheErrorLogger:Lcom/facebook/cache/common/CacheErrorLogger;

    sget-object v2, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_CREATE_DIR:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v3, Lcom/facebook/cache/disk/DefaultDiskStorage;->TAG:Ljava/lang/Class;

    invoke-interface {v1, v2, v3, p2, v0}, Lcom/facebook/cache/common/CacheErrorLogger;->logError(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 342
    throw v0
.end method

.method private query(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "resourceId"    # Ljava/lang/String;
    .param p2, "touch"    # Z

    .line 392
    invoke-virtual {p0, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->getContentFileFor(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 393
    .local v0, "contentFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 394
    .local v1, "exists":Z
    if-eqz p2, :cond_0

    if-eqz v1, :cond_0

    .line 395
    iget-object v2, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mClock:Lcom/facebook/common/time/Clock;

    invoke-interface {v2}, Lcom/facebook/common/time/Clock;->now()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 397
    :cond_0
    return v1
.end method

.method private recreateDirectoryIfVersionChanges()V
    .locals 7

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "recreateBase":Z
    iget-object v1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 180
    const/4 v0, 0x1

    goto :goto_0

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mVersionDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 182
    const/4 v0, 0x1

    .line 183
    iget-object v1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mRootDirectory:Ljava/io/File;

    invoke-static {v1}, Lcom/facebook/common/file/FileTree;->deleteRecursively(Ljava/io/File;)Z

    .line 186
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mVersionDirectory:Ljava/io/File;

    invoke-static {v1}, Lcom/facebook/common/file/FileUtils;->mkdirs(Ljava/io/File;)V
    :try_end_0
    .catch Lcom/facebook/common/file/FileUtils$CreateDirectoryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    goto :goto_1

    .line 189
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Lcom/facebook/common/file/FileUtils$CreateDirectoryException;
    iget-object v2, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mCacheErrorLogger:Lcom/facebook/cache/common/CacheErrorLogger;

    sget-object v3, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_CREATE_DIR:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v4, Lcom/facebook/cache/disk/DefaultDiskStorage;->TAG:Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "version directory could not be created: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mVersionDirectory:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/facebook/cache/common/CacheErrorLogger;->logError(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    .end local v1    # "e":Lcom/facebook/common/file/FileUtils$CreateDirectoryException;
    :cond_2
    :goto_1
    return-void
.end method

.method private typeOfBytes([B)Ljava/lang/String;
    .locals 5
    .param p1, "bytes"    # [B

    .line 464
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    .line 465
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    aget-byte v1, p1, v3

    const/16 v2, -0x28

    if-ne v1, v2, :cond_0

    .line 466
    const-string v0, "jpg"

    return-object v0

    .line 467
    :cond_0
    aget-byte v1, p1, v0

    const/16 v2, -0x77

    if-ne v1, v2, :cond_1

    aget-byte v1, p1, v3

    const/16 v2, 0x50

    if-ne v1, v2, :cond_1

    .line 468
    const-string/jumbo v0, "png"

    return-object v0

    .line 469
    :cond_1
    aget-byte v1, p1, v0

    const/16 v2, 0x52

    const/16 v4, 0x49

    if-ne v1, v2, :cond_2

    aget-byte v1, p1, v3

    if-ne v1, v4, :cond_2

    .line 470
    const-string/jumbo v0, "webp"

    return-object v0

    .line 471
    :cond_2
    aget-byte v0, p1, v0

    const/16 v1, 0x47

    if-ne v0, v1, :cond_3

    aget-byte v0, p1, v3

    if-ne v0, v4, :cond_3

    .line 472
    const-string v0, "gif"

    return-object v0

    .line 475
    :cond_3
    const-string/jumbo v0, "undefined"

    return-object v0
.end method


# virtual methods
.method public clearAll()V
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mRootDirectory:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/common/file/FileTree;->deleteContents(Ljava/io/File;)Z

    .line 428
    return-void
.end method

.method public contains(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "resourceId"    # Ljava/lang/String;
    .param p2, "debugInfo"    # Ljava/lang/Object;

    .line 383
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/cache/disk/DefaultDiskStorage;->query(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method getContentFileFor(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "resourceId"    # Ljava/lang/String;

    .line 210
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->getFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getDumpInfo()Lcom/facebook/cache/disk/DiskStorage$DiskDumpInfo;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 432
    invoke-virtual {p0}, Lcom/facebook/cache/disk/DefaultDiskStorage;->getEntries()Ljava/util/List;

    move-result-object v0

    .line 434
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/cache/disk/DiskStorage$Entry;>;"
    new-instance v1, Lcom/facebook/cache/disk/DiskStorage$DiskDumpInfo;

    invoke-direct {v1}, Lcom/facebook/cache/disk/DiskStorage$DiskDumpInfo;-><init>()V

    .line 435
    .local v1, "dumpInfo":Lcom/facebook/cache/disk/DiskStorage$DiskDumpInfo;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/cache/disk/DiskStorage$Entry;

    .line 436
    .local v3, "entry":Lcom/facebook/cache/disk/DiskStorage$Entry;
    invoke-direct {p0, v3}, Lcom/facebook/cache/disk/DefaultDiskStorage;->dumpCacheEntry(Lcom/facebook/cache/disk/DiskStorage$Entry;)Lcom/facebook/cache/disk/DiskStorage$DiskDumpInfoEntry;

    move-result-object v4

    .line 437
    .local v4, "infoEntry":Lcom/facebook/cache/disk/DiskStorage$DiskDumpInfoEntry;
    iget-object v5, v4, Lcom/facebook/cache/disk/DiskStorage$DiskDumpInfoEntry;->type:Ljava/lang/String;

    .line 438
    .local v5, "type":Ljava/lang/String;
    iget-object v6, v1, Lcom/facebook/cache/disk/DiskStorage$DiskDumpInfo;->typeCounts:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 439
    .local v6, "typeCount":Ljava/lang/Integer;
    const/4 v7, 0x1

    if-nez v6, :cond_0

    .line 440
    iget-object v8, v1, Lcom/facebook/cache/disk/DiskStorage$DiskDumpInfo;->typeCounts:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v8, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 442
    :cond_0
    iget-object v8, v1, Lcom/facebook/cache/disk/DiskStorage$DiskDumpInfo;->typeCounts:Ljava/util/Map;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v8, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    :goto_1
    iget-object v7, v1, Lcom/facebook/cache/disk/DiskStorage$DiskDumpInfo;->entries:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    .end local v3    # "entry":Lcom/facebook/cache/disk/DiskStorage$Entry;
    .end local v4    # "infoEntry":Lcom/facebook/cache/disk/DiskStorage$DiskDumpInfoEntry;
    .end local v5    # "type":Ljava/lang/String;
    .end local v6    # "typeCount":Ljava/lang/Integer;
    goto :goto_0

    .line 446
    :cond_1
    return-object v1
.end method

.method public bridge synthetic getEntries()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-virtual {p0}, Lcom/facebook/cache/disk/DefaultDiskStorage;->getEntries()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEntries()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/cache/disk/DiskStorage$Entry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 485
    new-instance v0, Lcom/facebook/cache/disk/DefaultDiskStorage$EntriesCollector;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/cache/disk/DefaultDiskStorage$EntriesCollector;-><init>(Lcom/facebook/cache/disk/DefaultDiskStorage;Lcom/facebook/cache/disk/DefaultDiskStorage$EntriesCollector-IA;)V

    .line 486
    .local v0, "collector":Lcom/facebook/cache/disk/DefaultDiskStorage$EntriesCollector;
    iget-object v1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mVersionDirectory:Ljava/io/File;

    invoke-static {v1, v0}, Lcom/facebook/common/file/FileTree;->walkFileTree(Ljava/io/File;Lcom/facebook/common/file/FileTreeVisitor;)V

    .line 487
    invoke-virtual {v0}, Lcom/facebook/cache/disk/DefaultDiskStorage$EntriesCollector;->getEntries()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getResource(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/binaryresource/BinaryResource;
    .locals 3
    .param p1, "resourceId"    # Ljava/lang/String;
    .param p2, "debugInfo"    # Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 367
    invoke-virtual {p0, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->getContentFileFor(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 368
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mClock:Lcom/facebook/common/time/Clock;

    invoke-interface {v1}, Lcom/facebook/common/time/Clock;->now()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    .line 370
    invoke-static {v0}, Lcom/facebook/binaryresource/FileBinaryResource;->createOrNull(Ljava/io/File;)Lcom/facebook/binaryresource/FileBinaryResource;

    move-result-object v1

    return-object v1

    .line 372
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getStorageName()Ljava/lang/String;
    .locals 5

    .line 164
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "directoryName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 166
    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 168
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    return-object v1
.end method

.method public insert(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/cache/disk/DiskStorage$Inserter;
    .locals 7
    .param p1, "resourceId"    # Ljava/lang/String;
    .param p2, "debugInfo"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 349
    new-instance v0, Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;

    const-string v1, ".tmp"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo-IA;)V

    .line 350
    .local v0, "info":Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;
    iget-object v1, v0, Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;->resourceId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->getSubdirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 351
    .local v1, "parent":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "insert"

    if-nez v2, :cond_0

    .line 352
    invoke-direct {p0, v1, v3}, Lcom/facebook/cache/disk/DefaultDiskStorage;->mkdirs(Ljava/io/File;Ljava/lang/String;)V

    .line 356
    :cond_0
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;->createTempFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 357
    .local v2, "file":Ljava/io/File;
    new-instance v4, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;

    invoke-direct {v4, p0, p1, v2}, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;-><init>(Lcom/facebook/cache/disk/DefaultDiskStorage;Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 358
    .end local v2    # "file":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 359
    .local v2, "ioe":Ljava/io/IOException;
    iget-object v4, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mCacheErrorLogger:Lcom/facebook/cache/common/CacheErrorLogger;

    sget-object v5, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_CREATE_TEMPFILE:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v6, Lcom/facebook/cache/disk/DefaultDiskStorage;->TAG:Ljava/lang/Class;

    invoke-interface {v4, v5, v6, v3, v2}, Lcom/facebook/cache/common/CacheErrorLogger;->logError(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 361
    throw v2
.end method

.method public isEnabled()Z
    .locals 1

    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method public isExternal()Z
    .locals 1

    .line 159
    iget-boolean v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mIsExternal:Z

    return v0
.end method

.method public purgeUnexpectedResources()V
    .locals 3

    .line 325
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mRootDirectory:Ljava/io/File;

    new-instance v1, Lcom/facebook/cache/disk/DefaultDiskStorage$PurgingVisitor;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/cache/disk/DefaultDiskStorage$PurgingVisitor;-><init>(Lcom/facebook/cache/disk/DefaultDiskStorage;Lcom/facebook/cache/disk/DefaultDiskStorage$PurgingVisitor-IA;)V

    invoke-static {v0, v1}, Lcom/facebook/common/file/FileTree;->walkFileTree(Ljava/io/File;Lcom/facebook/common/file/FileTreeVisitor;)V

    .line 326
    return-void
.end method

.method public remove(Lcom/facebook/cache/disk/DiskStorage$Entry;)J
    .locals 4
    .param p1, "entry"    # Lcom/facebook/cache/disk/DiskStorage$Entry;

    .line 403
    move-object v0, p1

    check-cast v0, Lcom/facebook/cache/disk/DefaultDiskStorage$EntryImpl;

    .line 404
    .local v0, "entryImpl":Lcom/facebook/cache/disk/DefaultDiskStorage$EntryImpl;
    invoke-virtual {v0}, Lcom/facebook/cache/disk/DefaultDiskStorage$EntryImpl;->getResource()Lcom/facebook/binaryresource/FileBinaryResource;

    move-result-object v1

    .line 405
    .local v1, "resource":Lcom/facebook/binaryresource/FileBinaryResource;
    invoke-virtual {v1}, Lcom/facebook/binaryresource/FileBinaryResource;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/facebook/cache/disk/DefaultDiskStorage;->doRemove(Ljava/io/File;)J

    move-result-wide v2

    return-wide v2
.end method

.method public remove(Ljava/lang/String;)J
    .locals 2
    .param p1, "resourceId"    # Ljava/lang/String;

    .line 410
    invoke-virtual {p0, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->getContentFileFor(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/cache/disk/DefaultDiskStorage;->doRemove(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public touch(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "resourceId"    # Ljava/lang/String;
    .param p2, "debugInfo"    # Ljava/lang/Object;

    .line 388
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/facebook/cache/disk/DefaultDiskStorage;->query(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
