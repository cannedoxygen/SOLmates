.class public final Lcom/facebook/soloader/NativeDeps;
.super Ljava/lang/Object;
.source "NativeDeps.java"


# static fields
.field private static final HASHMAP_LOAD_FACTOR:F = 1.0f

.field private static final INITIAL_HASH:I = 0x1505

.field private static final LIB_PREFIX_LEN:I

.field private static final LIB_PREFIX_SUFFIX_LEN:I

.field private static final LIB_SUFFIX_LEN:I

.field private static final LOG_TAG:Ljava/lang/String; = "NativeDeps"

.field private static final STANDARD_SYSTEM_LIBS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final WAITING_THREADS_WARNING_THRESHOLD:I = 0x3

.field private static sEncodedDeps:[B
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static volatile sInitialized:Z

.field private static sPrecomputedDeps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sPrecomputedLibs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sUseDepsFileAsync:Z

.field private static final sWaitForDepsFileLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    const-string v0, "lib"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/facebook/soloader/NativeDeps;->LIB_PREFIX_LEN:I

    .line 42
    const-string v0, ".so"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/facebook/soloader/NativeDeps;->LIB_SUFFIX_LEN:I

    .line 43
    sget v0, Lcom/facebook/soloader/NativeDeps;->LIB_PREFIX_LEN:I

    sget v1, Lcom/facebook/soloader/NativeDeps;->LIB_SUFFIX_LEN:I

    add-int/2addr v0, v1

    sput v0, Lcom/facebook/soloader/NativeDeps;->LIB_PREFIX_SUFFIX_LEN:I

    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/soloader/NativeDeps;->sInitialized:Z

    .line 54
    sput-boolean v0, Lcom/facebook/soloader/NativeDeps;->sUseDepsFileAsync:Z

    .line 55
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lcom/facebook/soloader/NativeDeps;->sWaitForDepsFileLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 57
    new-instance v0, Lcom/facebook/soloader/NativeDeps$1;

    invoke-direct {v0}, Lcom/facebook/soloader/NativeDeps$1;-><init>()V

    sput-object v0, Lcom/facebook/soloader/NativeDeps;->STANDARD_SYSTEM_LIBS:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 1

    .line 39
    sget-object v0, Lcom/facebook/soloader/NativeDeps;->sWaitForDepsFileLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 39
    sput-boolean p0, Lcom/facebook/soloader/NativeDeps;->sUseDepsFileAsync:Z

    return p0
.end method

.method static synthetic access$200(Landroid/content/Context;Z)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Z

    .line 39
    invoke-static {p0, p1}, Lcom/facebook/soloader/NativeDeps;->useDepsFileFromApkSync(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method private static awaitGetDepsFromPrecomputedDeps(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "soName"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 125
    sget-boolean v0, Lcom/facebook/soloader/NativeDeps;->sInitialized:Z

    if-eqz v0, :cond_0

    .line 126
    invoke-static {p0}, Lcom/facebook/soloader/NativeDeps;->tryGetDepsFromPrecomputedDeps(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 128
    :cond_0
    sget-boolean v0, Lcom/facebook/soloader/NativeDeps;->sUseDepsFileAsync:Z

    if-nez v0, :cond_1

    .line 129
    const/4 v0, 0x0

    return-object v0

    .line 131
    :cond_1
    sget-object v0, Lcom/facebook/soloader/NativeDeps;->sWaitForDepsFileLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 133
    :try_start_0
    invoke-static {p0}, Lcom/facebook/soloader/NativeDeps;->tryGetDepsFromPrecomputedDeps(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    sget-object v1, Lcom/facebook/soloader/NativeDeps;->sWaitForDepsFileLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 133
    return-object v0

    .line 135
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/facebook/soloader/NativeDeps;->sWaitForDepsFileLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 136
    throw v0
.end method

.method private static findNextLine([BI)I
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I

    .line 314
    nop

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget-byte v0, p0, p1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 315
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 318
    :cond_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    .line 319
    add-int/lit8 p1, p1, 0x1

    .line 322
    :cond_1
    return p1
.end method

.method public static getDependencies(Ljava/lang/String;Lcom/facebook/soloader/ElfByteChannel;)[Ljava/lang/String;
    .locals 4
    .param p0, "soName"    # Ljava/lang/String;
    .param p1, "bc"    # Lcom/facebook/soloader/ElfByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "failure":Ljava/lang/Throwable;
    sget-boolean v1, Lcom/facebook/soloader/SoLoader;->SYSTRACE_LIBRARY_LOADING:Z

    if-eqz v1, :cond_0

    .line 99
    const-string/jumbo v1, "soloader.NativeDeps.getDependencies["

    const-string v2, "]"

    invoke-static {v1, p0, v2}, Lcom/facebook/soloader/Api18TraceUtils;->beginTraceSection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_0
    invoke-static {}, Lcom/facebook/soloader/observer/ObserverHolder;->onGetDependenciesStart()V

    .line 103
    :try_start_0
    invoke-static {p0}, Lcom/facebook/soloader/NativeDeps;->awaitGetDepsFromPrecomputedDeps(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lcom/facebook/soloader/MinElf$ElfError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .local v1, "deps":[Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 105
    nop

    .line 116
    invoke-static {v0}, Lcom/facebook/soloader/observer/ObserverHolder;->onGetDependenciesEnd(Ljava/lang/Throwable;)V

    .line 117
    sget-boolean v2, Lcom/facebook/soloader/SoLoader;->SYSTRACE_LIBRARY_LOADING:Z

    if-eqz v2, :cond_1

    .line 118
    invoke-static {}, Lcom/facebook/soloader/Api18TraceUtils;->endSection()V

    .line 105
    :cond_1
    return-object v1

    .line 107
    :cond_2
    :try_start_1
    invoke-static {p1}, Lcom/facebook/soloader/MinElf;->extract_DT_NEEDED(Lcom/facebook/soloader/ElfByteChannel;)[Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Lcom/facebook/soloader/MinElf$ElfError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    invoke-static {v0}, Lcom/facebook/soloader/observer/ObserverHolder;->onGetDependenciesEnd(Ljava/lang/Throwable;)V

    .line 117
    sget-boolean v3, Lcom/facebook/soloader/SoLoader;->SYSTRACE_LIBRARY_LOADING:Z

    if-eqz v3, :cond_3

    .line 118
    invoke-static {}, Lcom/facebook/soloader/Api18TraceUtils;->endSection()V

    .line 107
    :cond_3
    return-object v2

    .line 116
    .end local v1    # "deps":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 112
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 113
    .local v1, "t":Ljava/lang/Throwable;
    :goto_0
    move-object v0, v1

    .line 114
    nop

    .end local v0    # "failure":Ljava/lang/Throwable;
    .end local p0    # "soName":Ljava/lang/String;
    .end local p1    # "bc":Lcom/facebook/soloader/ElfByteChannel;
    :try_start_2
    throw v1

    .line 108
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local v0    # "failure":Ljava/lang/Throwable;
    .restart local p0    # "soName":Ljava/lang/String;
    .restart local p1    # "bc":Lcom/facebook/soloader/ElfByteChannel;
    :catch_2
    move-exception v1

    .line 109
    .local v1, "err":Lcom/facebook/soloader/MinElf$ElfError;
    invoke-static {p0, v1}, Lcom/facebook/soloader/SoLoaderULErrorFactory;->create(Ljava/lang/String;Ljava/lang/UnsatisfiedLinkError;)Lcom/facebook/soloader/SoLoaderULError;

    move-result-object v2

    .line 110
    .local v2, "ule":Ljava/lang/UnsatisfiedLinkError;
    move-object v0, v2

    .line 111
    nop

    .end local v0    # "failure":Ljava/lang/Throwable;
    .end local p0    # "soName":Ljava/lang/String;
    .end local p1    # "bc":Lcom/facebook/soloader/ElfByteChannel;
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    .end local v1    # "err":Lcom/facebook/soloader/MinElf$ElfError;
    .end local v2    # "ule":Ljava/lang/UnsatisfiedLinkError;
    .restart local v0    # "failure":Ljava/lang/Throwable;
    .restart local p0    # "soName":Ljava/lang/String;
    .restart local p1    # "bc":Lcom/facebook/soloader/ElfByteChannel;
    :goto_1
    invoke-static {v0}, Lcom/facebook/soloader/observer/ObserverHolder;->onGetDependenciesEnd(Ljava/lang/Throwable;)V

    .line 117
    sget-boolean v2, Lcom/facebook/soloader/SoLoader;->SYSTRACE_LIBRARY_LOADING:Z

    if-eqz v2, :cond_4

    .line 118
    invoke-static {}, Lcom/facebook/soloader/Api18TraceUtils;->endSection()V

    .line 120
    :cond_4
    throw v1
.end method

.method private static getDepsForLibAtOffset(II)[Ljava/lang/String;
    .locals 9
    .param p0, "offset"    # I
    .param p1, "libNameLength"    # I
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 438
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 439
    .local v0, "deps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 440
    .local v1, "depIndex":I
    const/4 v2, 0x0

    .line 441
    .local v2, "hasDep":Z
    add-int v3, p0, p1

    sget v4, Lcom/facebook/soloader/NativeDeps;->LIB_PREFIX_SUFFIX_LEN:I

    sub-int/2addr v3, v4

    .line 443
    .local v3, "depsOffset":I
    move v4, v3

    .line 444
    .local v4, "byteOffset":I
    :goto_0
    sget-object v5, Lcom/facebook/soloader/NativeDeps;->sEncodedDeps:[B

    array-length v5, v5

    const/4 v6, 0x0

    if-ge v4, v5, :cond_5

    sget-object v5, Lcom/facebook/soloader/NativeDeps;->sEncodedDeps:[B

    aget-byte v5, v5, v4

    move v7, v5

    .local v7, "nextByte":I
    const/16 v8, 0xa

    if-eq v5, v8, :cond_5

    .line 446
    const/16 v5, 0x20

    if-ne v7, v5, :cond_1

    .line 447
    if-eqz v2, :cond_3

    .line 448
    invoke-static {v1}, Lcom/facebook/soloader/NativeDeps;->getLibString(I)Ljava/lang/String;

    move-result-object v5

    .line 449
    .local v5, "dep":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 450
    return-object v6

    .line 452
    :cond_0
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    const/4 v2, 0x0

    .line 454
    const/4 v1, 0x0

    .line 455
    .end local v5    # "dep":Ljava/lang/String;
    goto :goto_1

    .line 459
    :cond_1
    const/16 v5, 0x30

    if-lt v7, v5, :cond_4

    const/16 v5, 0x39

    if-le v7, v5, :cond_2

    goto :goto_2

    .line 464
    :cond_2
    const/4 v2, 0x1

    .line 465
    mul-int/lit8 v5, v1, 0xa

    add-int/lit8 v6, v7, -0x30

    add-int/2addr v5, v6

    move v1, v5

    .line 445
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 461
    :cond_4
    :goto_2
    return-object v6

    .line 468
    .end local v4    # "byteOffset":I
    .end local v7    # "nextByte":I
    :cond_5
    if-eqz v2, :cond_7

    .line 469
    invoke-static {v1}, Lcom/facebook/soloader/NativeDeps;->getLibString(I)Ljava/lang/String;

    move-result-object v4

    .line 470
    .local v4, "dep":Ljava/lang/String;
    if-nez v4, :cond_6

    .line 471
    return-object v6

    .line 473
    :cond_6
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    .end local v4    # "dep":Ljava/lang/String;
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 480
    return-object v6

    .line 483
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 484
    .local v4, "depsArray":[Ljava/lang/String;
    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5
.end method

.method private static getLibString(I)Ljava/lang/String;
    .locals 8
    .param p0, "depIndex"    # I
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 412
    sget-object v0, Lcom/facebook/soloader/NativeDeps;->sPrecomputedLibs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p0, v0, :cond_0

    .line 413
    const/4 v0, 0x0

    return-object v0

    .line 416
    :cond_0
    sget-object v0, Lcom/facebook/soloader/NativeDeps;->sPrecomputedLibs:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 417
    .local v0, "initialOffset":I
    move v1, v0

    .line 418
    .local v1, "byteOffset":I
    :goto_0
    sget-object v2, Lcom/facebook/soloader/NativeDeps;->sEncodedDeps:[B

    array-length v2, v2

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/facebook/soloader/NativeDeps;->sEncodedDeps:[B

    aget-byte v2, v2, v1

    const/16 v3, 0x20

    if-le v2, v3, :cond_1

    .line 419
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 422
    :cond_1
    sub-int v2, v1, v0

    sget v3, Lcom/facebook/soloader/NativeDeps;->LIB_PREFIX_SUFFIX_LEN:I

    add-int/2addr v2, v3

    .line 423
    .local v2, "libNameLength":I
    new-array v3, v2, [C

    .line 424
    .local v3, "libBytes":[C
    const/4 v4, 0x0

    const/16 v5, 0x6c

    aput-char v5, v3, v4

    .line 425
    const/16 v4, 0x69

    const/4 v5, 0x1

    aput-char v4, v3, v5

    .line 426
    const/16 v4, 0x62

    const/4 v5, 0x2

    aput-char v4, v3, v5

    .line 427
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    sget v5, Lcom/facebook/soloader/NativeDeps;->LIB_PREFIX_SUFFIX_LEN:I

    sub-int v5, v2, v5

    if-ge v4, v5, :cond_2

    .line 428
    sget v5, Lcom/facebook/soloader/NativeDeps;->LIB_PREFIX_LEN:I

    add-int/2addr v5, v4

    sget-object v6, Lcom/facebook/soloader/NativeDeps;->sEncodedDeps:[B

    add-int v7, v0, v4

    aget-byte v6, v6, v7

    int-to-char v6, v6

    aput-char v6, v3, v5

    .line 427
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 430
    .end local v4    # "i":I
    :cond_2
    add-int/lit8 v4, v2, -0x3

    const/16 v5, 0x2e

    aput-char v5, v3, v4

    .line 431
    add-int/lit8 v4, v2, -0x2

    const/16 v5, 0x73

    aput-char v5, v3, v4

    .line 432
    add-int/lit8 v4, v2, -0x1

    const/16 v5, 0x6f

    aput-char v5, v3, v4

    .line 434
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V

    return-object v4
.end method

.method private static getOffsetForLib(Ljava/lang/String;)I
    .locals 6
    .param p0, "soName"    # Ljava/lang/String;

    .line 393
    invoke-static {p0}, Lcom/facebook/soloader/NativeDeps;->hashLib(Ljava/lang/String;)I

    move-result v0

    .line 394
    .local v0, "libHash":I
    sget-object v1, Lcom/facebook/soloader/NativeDeps;->sPrecomputedDeps:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 395
    .local v1, "bucket":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 396
    return v2

    .line 399
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 400
    .local v4, "offset":I
    invoke-static {p0, v4}, Lcom/facebook/soloader/NativeDeps;->libIsAtOffset(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 401
    return v4

    .line 403
    .end local v4    # "offset":I
    :cond_1
    goto :goto_0

    .line 405
    :cond_2
    return v2
.end method

.method private static hashLib(Ljava/lang/String;)I
    .locals 4
    .param p0, "soName"    # Ljava/lang/String;

    .line 382
    const/16 v0, 0x1505

    .line 383
    .local v0, "libHash":I
    sget v1, Lcom/facebook/soloader/NativeDeps;->LIB_PREFIX_LEN:I

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sget v3, Lcom/facebook/soloader/NativeDeps;->LIB_SUFFIX_LEN:I

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    .line 384
    shl-int/lit8 v2, v0, 0x5

    add-int/2addr v2, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    add-int v0, v2, v3

    .line 383
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 386
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method private static indexDepsBytes([BI)V
    .locals 8
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I

    .line 259
    const/4 v0, 0x1

    .line 260
    .local v0, "inLibName":Z
    move v1, p1

    .line 261
    .local v1, "byteOffset":I
    const/4 v2, 0x0

    .line 262
    .local v2, "libHash":I
    const/4 v3, 0x0

    .line 265
    .local v3, "libNameBegin":I
    :goto_0
    const/4 v4, 0x1

    if-eqz v0, :cond_2

    .line 266
    move v3, v1

    .line 268
    const/16 v2, 0x1505

    .line 269
    :goto_1
    :try_start_0
    aget-byte v5, p0, v1

    move v6, v5

    .local v6, "nextByte":I
    const/16 v7, 0x20

    if-le v5, v7, :cond_0

    .line 270
    shl-int/lit8 v5, v2, 0x5

    add-int/2addr v5, v2

    add-int v2, v5, v6

    .line 271
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 273
    :cond_0
    invoke-static {v2, v3}, Lcom/facebook/soloader/NativeDeps;->indexLib(II)V

    .line 274
    if-eq v6, v7, :cond_1

    move v5, v4

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    move v0, v5

    .line 275
    .end local v6    # "nextByte":I
    goto :goto_4

    .line 276
    :cond_2
    :goto_3
    aget-byte v5, p0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v6, 0xa

    if-eq v5, v6, :cond_3

    .line 277
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 279
    :cond_3
    const/4 v0, 0x1

    .line 281
    :goto_4
    add-int/2addr v1, v4

    goto :goto_0

    .line 283
    :catch_0
    move-exception v4

    .line 284
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    if-eqz v0, :cond_4

    array-length v5, p0

    if-eq v3, v5, :cond_4

    .line 285
    invoke-static {v2, v3}, Lcom/facebook/soloader/NativeDeps;->indexLib(II)V

    .line 288
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_4
    return-void
.end method

.method private static indexLib(II)V
    .locals 3
    .param p0, "hash"    # I
    .param p1, "nameBegin"    # I

    .line 237
    sget-object v0, Lcom/facebook/soloader/NativeDeps;->sPrecomputedLibs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    sget-object v0, Lcom/facebook/soloader/NativeDeps;->sPrecomputedDeps:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 239
    .local v0, "bucket":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 240
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 241
    sget-object v1, Lcom/facebook/soloader/NativeDeps;->sPrecomputedDeps:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    return-void
.end method

.method private static initDeps(Landroid/content/Context;Z)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "extractToDisk"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    invoke-static {}, Lcom/facebook/soloader/NativeDeps;->verifyUninitialized()V

    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "depsBytes":[B
    const/4 v1, 0x0

    .line 221
    .local v1, "apkId":[B
    if-eqz p1, :cond_0

    .line 222
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 223
    .local v2, "apkFile":Ljava/io/File;
    invoke-static {v2, p0}, Lcom/facebook/soloader/SysUtil;->makeApkDepBlock(Ljava/io/File;Landroid/content/Context;)[B

    move-result-object v1

    .line 224
    invoke-static {p0}, Lcom/facebook/soloader/NativeDepsUnpacker;->readNativeDepsFromDisk(Landroid/content/Context;)[B

    move-result-object v0

    .line 225
    .end local v2    # "apkFile":Ljava/io/File;
    goto :goto_0

    .line 226
    :cond_0
    invoke-static {p0}, Lcom/facebook/soloader/NativeDepsUnpacker;->readNativeDepsFromApk(Landroid/content/Context;)[B

    move-result-object v0

    .line 230
    :goto_0
    invoke-static {v1, v0}, Lcom/facebook/soloader/NativeDeps;->processDepsBytes([B[B)Z

    move-result v2

    return v2
.end method

.method private static libIsAtOffset(Ljava/lang/String;I)Z
    .locals 4
    .param p0, "soName"    # Ljava/lang/String;
    .param p1, "offset"    # I

    .line 370
    sget v0, Lcom/facebook/soloader/NativeDeps;->LIB_PREFIX_LEN:I

    .local v0, "i":I
    move v1, p1

    .line 371
    .local v1, "j":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sget v3, Lcom/facebook/soloader/NativeDeps;->LIB_SUFFIX_LEN:I

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_1

    sget-object v2, Lcom/facebook/soloader/NativeDeps;->sEncodedDeps:[B

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 373
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    sget-object v3, Lcom/facebook/soloader/NativeDeps;->sEncodedDeps:[B

    aget-byte v3, v3, v1

    if-eq v2, v3, :cond_0

    .line 374
    goto :goto_1

    .line 372
    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 377
    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sget v3, Lcom/facebook/soloader/NativeDeps;->LIB_SUFFIX_LEN:I

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    return v2
.end method

.method public static loadDependencies(Ljava/lang/String;Lcom/facebook/soloader/ElfByteChannel;ILandroid/os/StrictMode$ThreadPolicy;)V
    .locals 5
    .param p0, "soName"    # Ljava/lang/String;
    .param p1, "bc"    # Lcom/facebook/soloader/ElfByteChannel;
    .param p2, "loadFlags"    # I
    .param p3, "threadPolicy"    # Landroid/os/StrictMode$ThreadPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-static {p0, p1}, Lcom/facebook/soloader/NativeDeps;->getDependencies(Ljava/lang/String;Lcom/facebook/soloader/ElfByteChannel;)[Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "dependencies":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'s dependencies: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 80
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    const-string v2, "SoLoader"

    invoke-static {v2, v1}, Lcom/facebook/soloader/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 82
    .local v3, "dependency":Ljava/lang/String;
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    goto :goto_1

    .line 86
    :cond_0
    sget-object v4, Lcom/facebook/soloader/NativeDeps;->STANDARD_SYSTEM_LIBS:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 88
    goto :goto_1

    .line 91
    :cond_1
    invoke-static {v3, p2, p3}, Lcom/facebook/soloader/SoLoader;->loadDependency(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)V

    .line 81
    .end local v3    # "dependency":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    :cond_2
    return-void
.end method

.method private static parseLibCount([BII)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 327
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 328
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, -0x1

    return v1
.end method

.method static processDepsBytes([B[B)Z
    .locals 8
    .param p0, "apkId"    # [B
    .param p1, "deps"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    const/4 v0, 0x0

    .line 336
    .local v0, "offset":I
    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 337
    invoke-static {p0, p1}, Lcom/facebook/soloader/NativeDeps;->verifyBytesAndGetOffset([B[B)I

    move-result v0

    .line 338
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 339
    return v1

    .line 343
    :cond_0
    invoke-static {p1, v0}, Lcom/facebook/soloader/NativeDeps;->findNextLine([BI)I

    move-result v2

    .line 344
    .local v2, "deps_offset":I
    array-length v3, p1

    if-lt v2, v3, :cond_1

    .line 345
    return v1

    .line 348
    :cond_1
    sub-int v3, v2, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-static {p1, v0, v3}, Lcom/facebook/soloader/NativeDeps;->parseLibCount([BII)I

    move-result v3

    .line 349
    .local v3, "libsCount":I
    if-gtz v3, :cond_2

    .line 350
    return v1

    .line 353
    :cond_2
    new-instance v5, Ljava/util/HashMap;

    int-to-float v6, v3

    const/high16 v7, 0x3f800000    # 1.0f

    div-float/2addr v6, v7

    float-to-int v6, v6

    add-int/2addr v6, v4

    invoke-direct {v5, v6, v7}, Ljava/util/HashMap;-><init>(IF)V

    sput-object v5, Lcom/facebook/soloader/NativeDeps;->sPrecomputedDeps:Ljava/util/Map;

    .line 355
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v5, Lcom/facebook/soloader/NativeDeps;->sPrecomputedLibs:Ljava/util/List;

    .line 356
    invoke-static {p1, v2}, Lcom/facebook/soloader/NativeDeps;->indexDepsBytes([BI)V

    .line 358
    sget-object v5, Lcom/facebook/soloader/NativeDeps;->sPrecomputedLibs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eq v5, v3, :cond_3

    .line 359
    return v1

    .line 362
    :cond_3
    sput-object p1, Lcom/facebook/soloader/NativeDeps;->sEncodedDeps:[B

    .line 363
    sput-boolean v4, Lcom/facebook/soloader/NativeDeps;->sInitialized:Z

    .line 364
    return v4
.end method

.method static tryGetDepsFromPrecomputedDeps(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "soName"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 489
    sget-boolean v0, Lcom/facebook/soloader/NativeDeps;->sInitialized:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 490
    return-object v1

    .line 493
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sget v2, Lcom/facebook/soloader/NativeDeps;->LIB_PREFIX_SUFFIX_LEN:I

    if-gt v0, v2, :cond_1

    .line 496
    return-object v1

    .line 499
    :cond_1
    invoke-static {p0}, Lcom/facebook/soloader/NativeDeps;->getOffsetForLib(Ljava/lang/String;)I

    move-result v0

    .line 500
    .local v0, "offset":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 501
    return-object v1

    .line 504
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Lcom/facebook/soloader/NativeDeps;->getDepsForLibAtOffset(II)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static useDepsFile(Landroid/content/Context;ZZ)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "async"    # Z
    .param p2, "extractToDisk"    # Z

    .line 155
    if-nez p1, :cond_0

    .line 156
    invoke-static {p0, p2}, Lcom/facebook/soloader/NativeDeps;->useDepsFileFromApkSync(Landroid/content/Context;Z)Z

    move-result v0

    return v0

    .line 159
    :cond_0
    new-instance v0, Lcom/facebook/soloader/NativeDeps$2;

    invoke-direct {v0, p0, p2}, Lcom/facebook/soloader/NativeDeps$2;-><init>(Landroid/content/Context;Z)V

    .line 182
    .local v0, "runnable":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    const-string/jumbo v2, "soloader-nativedeps-init"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 183
    const/4 v1, 0x1

    return v1
.end method

.method private static useDepsFileFromApkSync(Landroid/content/Context;Z)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "extractToDisk"    # Z

    .line 189
    :try_start_0
    invoke-static {p0, p1}, Lcom/facebook/soloader/NativeDeps;->initDeps(Landroid/content/Context;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .local v0, "success":Z
    goto :goto_0

    .line 190
    .end local v0    # "success":Z
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    move v0, v1

    .line 196
    .local v0, "success":Z
    :goto_0
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 198
    :try_start_1
    invoke-static {p0}, Lcom/facebook/soloader/NativeDepsUnpacker;->ensureNativeDepsAvailable(Landroid/content/Context;)V

    .line 200
    invoke-static {p0, p1}, Lcom/facebook/soloader/NativeDeps;->initDeps(Landroid/content/Context;Z)Z

    move-result v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    .line 204
    goto :goto_1

    .line 201
    :catch_1
    move-exception v1

    .line 207
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    .line 208
    const-string v1, "NativeDeps"

    const-string v2, "Failed to extract native deps from APK, falling back to using MinElf to get library dependencies."

    invoke-static {v1, v2}, Lcom/facebook/soloader/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_1
    return v0
.end method

.method private static verifyBytesAndGetOffset([B[B)I
    .locals 6
    .param p0, "apkId"    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "bytes"    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 291
    const/4 v0, -0x1

    if-eqz p0, :cond_5

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    .line 295
    :cond_0
    array-length v1, p1

    array-length v2, p0

    const/4 v3, 0x4

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    .line 296
    return v0

    .line 299
    :cond_1
    array-length v1, p0

    invoke-static {p1, v1, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 300
    .local v1, "depsLen":I
    array-length v2, p1

    array-length v4, p0

    add-int/2addr v4, v3

    add-int/2addr v4, v1

    if-eq v2, v4, :cond_2

    .line 301
    return v0

    .line 304
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_4

    .line 305
    aget-byte v4, p0, v2

    aget-byte v5, p1, v2

    if-eq v4, v5, :cond_3

    .line 306
    return v0

    .line 304
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 310
    .end local v2    # "i":I
    :cond_4
    array-length v0, p0

    add-int/2addr v0, v3

    return v0

    .line 292
    .end local v1    # "depsLen":I
    :cond_5
    :goto_1
    return v0
.end method

.method private static verifyUninitialized()V
    .locals 3

    .line 508
    sget-boolean v0, Lcom/facebook/soloader/NativeDeps;->sInitialized:Z

    if-nez v0, :cond_0

    .line 509
    return-void

    .line 512
    :cond_0
    const-class v0, Lcom/facebook/soloader/NativeDeps;

    monitor-enter v0

    .line 513
    :try_start_0
    sget-boolean v1, Lcom/facebook/soloader/NativeDeps;->sInitialized:Z

    if-nez v1, :cond_1

    .line 517
    monitor-exit v0

    .line 518
    return-void

    .line 514
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Trying to initialize NativeDeps but it was already initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 517
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
