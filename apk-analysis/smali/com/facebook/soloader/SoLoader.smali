.class public Lcom/facebook/soloader/SoLoader;
.super Ljava/lang/Object;
.source "SoLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/soloader/SoLoader$WrongAbiError;,
        Lcom/facebook/soloader/SoLoader$TestOnlyUtils;,
        Lcom/facebook/soloader/SoLoader$AppType;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final SOLOADER_ALLOW_ASYNC_INIT:I = 0x2

.field public static final SOLOADER_DISABLE_BACKUP_SOSOURCE:I = 0x8

.field public static final SOLOADER_DISABLE_FS_SYNC_JOB:I = 0x100

.field public static final SOLOADER_DONT_TREAT_AS_SYSTEMAPP:I = 0x20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SOLOADER_ENABLE_BACKUP_SOSOURCE_DSONOTFOUND_ERROR_RECOVERY:I = 0x800

.field public static final SOLOADER_ENABLE_BASE_APK_SPLIT_SOURCE:I = 0x400

.field public static final SOLOADER_ENABLE_DIRECT_SOSOURCE:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SOLOADER_ENABLE_EXOPACKAGE:I = 0x1

.field public static final SOLOADER_ENABLE_SYSTEMLOAD_WRAPPER_SOSOURCE:I = 0x200

.field public static final SOLOADER_EXPLICITLY_ENABLE_BACKUP_SOSOURCE:I = 0x80

.field public static final SOLOADER_IMPLICIT_DEPENDENCIES_TEST:I = 0x1000

.field public static final SOLOADER_LOOK_IN_ZIP:I = 0x4

.field public static final SOLOADER_SKIP_MERGED_JNI_ONLOAD:I = 0x10

.field public static final SO_STORE_NAME_MAIN:Ljava/lang/String; = "lib-main"

.field static final SYSTRACE_LIBRARY_LOADING:Z

.field public static final TAG:Ljava/lang/String; = "SoLoader"

.field public static final VERSION:Ljava/lang/String; = "0.12.1"

.field private static externalSoMapping:Lcom/facebook/soloader/ExternalSoMapping;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static isEnabled:Z

.field private static sAppType:I

.field static sApplicationContext:Landroid/content/Context;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static sFlags:I

.field private static final sInvokingJniForLibrary:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLoadedAndJniInvoked:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLoadedLibraries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLoadingLibraries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sRecoveryStrategyFactory:Lcom/facebook/soloader/recovery/RecoveryStrategyFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field static sSoFileLoader:Lcom/facebook/soloader/SoFileLoader;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static volatile sSoSources:[Lcom/facebook/soloader/SoSource;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static final sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static final sSoSourcesVersion:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sSystemLoadLibraryWrapper:Lcom/facebook/soloader/SystemLoadLibraryWrapper;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 103
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 105
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/soloader/SoLoader;->sApplicationContext:Landroid/content/Context;

    .line 113
    sput-object v0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    .line 116
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 120
    sput-object v0, Lcom/facebook/soloader/SoLoader;->sRecoveryStrategyFactory:Lcom/facebook/soloader/recovery/RecoveryStrategyFactory;

    .line 123
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 124
    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/facebook/soloader/SoLoader;->sLoadedLibraries:Ljava/util/Set;

    .line 133
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/facebook/soloader/SoLoader;->sLoadingLibraries:Ljava/util/Map;

    .line 140
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 141
    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/facebook/soloader/SoLoader;->sLoadedAndJniInvoked:Ljava/util/Set;

    .line 150
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/facebook/soloader/SoLoader;->sInvokingJniForLibrary:Ljava/util/Map;

    .line 153
    sput-object v0, Lcom/facebook/soloader/SoLoader;->sSystemLoadLibraryWrapper:Lcom/facebook/soloader/SystemLoadLibraryWrapper;

    .line 156
    const/4 v1, 0x1

    sput-boolean v1, Lcom/facebook/soloader/SoLoader;->isEnabled:Z

    .line 240
    sput v2, Lcom/facebook/soloader/SoLoader;->sAppType:I

    .line 246
    sput-object v0, Lcom/facebook/soloader/SoLoader;->externalSoMapping:Lcom/facebook/soloader/ExternalSoMapping;

    .line 249
    const/4 v0, 0x0

    .line 251
    .local v0, "shouldSystrace":Z
    move v0, v1

    .line 254
    nop

    .line 256
    sput-boolean v0, Lcom/facebook/soloader/SoLoader;->SYSTRACE_LIBRARY_LOADING:Z

    .line 257
    .end local v0    # "shouldSystrace":Z
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 1

    .line 88
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object v0
.end method

.method static synthetic access$102([Lcom/facebook/soloader/SoSource;)[Lcom/facebook/soloader/SoSource;
    .locals 0
    .param p0, "x0"    # [Lcom/facebook/soloader/SoSource;

    .line 88
    sput-object p0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    return-object p0
.end method

.method static synthetic access$200()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 88
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/Set;
    .locals 1

    .line 88
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sLoadedLibraries:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/Set;
    .locals 1

    .line 88
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sLoadedAndJniInvoked:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/Map;
    .locals 1

    .line 88
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sLoadingLibraries:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$602(Lcom/facebook/soloader/recovery/RecoveryStrategyFactory;)Lcom/facebook/soloader/recovery/RecoveryStrategyFactory;
    .locals 0
    .param p0, "x0"    # Lcom/facebook/soloader/recovery/RecoveryStrategyFactory;

    .line 88
    sput-object p0, Lcom/facebook/soloader/SoLoader;->sRecoveryStrategyFactory:Lcom/facebook/soloader/recovery/RecoveryStrategyFactory;

    return-object p0
.end method

.method private static addApplicationSoSource(Ljava/util/ArrayList;I)V
    .locals 3
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/soloader/SoSource;",
            ">;I)V"
        }
    .end annotation

    .line 502
    .local p0, "soSources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/soloader/SoSource;>;"
    nop

    .line 506
    new-instance v0, Lcom/facebook/soloader/ApplicationSoSource;

    sget-object v1, Lcom/facebook/soloader/SoLoader;->sApplicationContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/facebook/soloader/ApplicationSoSource;-><init>(Landroid/content/Context;I)V

    .line 507
    .local v0, "applicationSoSource":Lcom/facebook/soloader/SoSource;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding application source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/soloader/SoSource;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SoLoader"

    invoke-static {v2, v1}, Lcom/facebook/soloader/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 509
    return-void
.end method

.method private static addBackupSoSource(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "implicitDependencies"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/soloader/SoSource;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 516
    .local p1, "soSources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/soloader/SoSource;>;"
    sget v0, Lcom/facebook/soloader/SoLoader;->sFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 517
    return-void

    .line 520
    :cond_0
    new-instance v0, Lcom/facebook/soloader/BackupSoSource;

    xor-int/lit8 v1, p2, 0x1

    const-string v2, "lib-main"

    invoke-direct {v0, p0, v2, v1}, Lcom/facebook/soloader/BackupSoSource;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 522
    .local v0, "backupSoSource":Lcom/facebook/soloader/BackupSoSource;
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 523
    return-void
.end method

.method private static addDirectApkSoSource(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/soloader/SoSource;",
            ">;)V"
        }
    .end annotation

    .line 487
    .local p1, "soSources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/soloader/SoSource;>;"
    new-instance v0, Lcom/facebook/soloader/DirectApkSoSource;

    invoke-direct {v0, p0}, Lcom/facebook/soloader/DirectApkSoSource;-><init>(Landroid/content/Context;)V

    .line 488
    .local v0, "directApkSoSource":Lcom/facebook/soloader/DirectApkSoSource;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "validating/adding directApk source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/soloader/DirectApkSoSource;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SoLoader"

    invoke-static {v2, v1}, Lcom/facebook/soloader/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-virtual {v0}, Lcom/facebook/soloader/DirectApkSoSource;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 490
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 492
    :cond_0
    return-void
.end method

.method private static addSystemLibSoSource(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/soloader/SoSource;",
            ">;)V"
        }
    .end annotation

    .line 532
    .local p0, "soSources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/soloader/SoSource;>;"
    invoke-static {}, Lcom/facebook/soloader/SysUtil;->is64Bit()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/system/lib64:/vendor/lib64"

    goto :goto_0

    :cond_0
    const-string v0, "/system/lib:/vendor/lib"

    .line 534
    .local v0, "systemLibPaths":Ljava/lang/String;
    :goto_0
    const-string v1, "LD_LIBRARY_PATH"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 535
    .local v1, "LD_LIBRARY_PATH":Ljava/lang/String;
    const-string v2, ":"

    if-eqz v1, :cond_1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 536
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 539
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v2, v3

    .line 540
    .local v2, "libPathSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 544
    .local v4, "libPath":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adding system library source: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SoLoader"

    invoke-static {v6, v5}, Lcom/facebook/soloader/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 546
    .local v5, "systemSoDirectory":Ljava/io/File;
    new-instance v6, Lcom/facebook/soloader/DirectorySoSource;

    const/4 v7, 0x2

    invoke-direct {v6, v5, v7}, Lcom/facebook/soloader/DirectorySoSource;-><init>(Ljava/io/File;I)V

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    .end local v4    # "libPath":Ljava/lang/String;
    .end local v5    # "systemSoDirectory":Ljava/io/File;
    goto :goto_1

    .line 548
    :cond_2
    return-void
.end method

.method private static addSystemLoadWrapperSoSource(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/soloader/SoSource;",
            ">;)V"
        }
    .end annotation

    .line 551
    .local p1, "soSources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/soloader/SoSource;>;"
    new-instance v0, Lcom/facebook/soloader/SystemLoadWrapperSoSource;

    invoke-direct {v0}, Lcom/facebook/soloader/SystemLoadWrapperSoSource;-><init>()V

    .line 552
    .local v0, "systemLoadWrapperSoSource":Lcom/facebook/soloader/SystemLoadWrapperSoSource;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adding systemLoadWrapper source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SoLoader"

    invoke-static {v2, v1}, Lcom/facebook/soloader/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 554
    return-void
.end method

.method public static areSoSourcesAbisSupported()Z
    .locals 13

    .line 1348
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1350
    :try_start_0
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1351
    nop

    .line 1371
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1351
    return v1

    .line 1354
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/facebook/soloader/SysUtil;->getSupportedAbis()[Ljava/lang/String;

    move-result-object v0

    .line 1355
    .local v0, "supportedAbis":[Ljava/lang/String;
    sget-object v2, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    .line 1356
    .local v5, "soSource":Lcom/facebook/soloader/SoSource;
    invoke-virtual {v5}, Lcom/facebook/soloader/SoSource;->getSoSourceAbis()[Ljava/lang/String;

    move-result-object v6

    .line 1357
    .local v6, "soSourceAbis":[Ljava/lang/String;
    array-length v7, v6

    move v8, v1

    :goto_1
    if-ge v8, v7, :cond_3

    aget-object v9, v6, v8

    .line 1358
    .local v9, "soSourceAbi":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1359
    .local v10, "soSourceSupported":Z
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_2
    array-length v12, v0

    if-ge v11, v12, :cond_1

    if-nez v10, :cond_1

    .line 1360
    aget-object v12, v0, v11

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    move v10, v12

    .line 1359
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1362
    .end local v11    # "k":I
    :cond_1
    if-nez v10, :cond_2

    .line 1363
    const-string v2, "SoLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "abi not supported: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/soloader/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1364
    nop

    .line 1371
    sget-object v2, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1364
    return v1

    .line 1357
    .end local v9    # "soSourceAbi":Ljava/lang/String;
    .end local v10    # "soSourceSupported":Z
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1355
    .end local v5    # "soSource":Lcom/facebook/soloader/SoSource;
    .end local v6    # "soSourceAbis":[Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1369
    :cond_4
    nop

    .line 1371
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1369
    const/4 v1, 0x1

    return v1

    .line 1371
    .end local v0    # "supportedAbis":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1372
    throw v0
.end method

.method private static assertInitialized()V
    .locals 2

    .line 1272
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1275
    return-void

    .line 1273
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SoLoader.init() not yet called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static cloneSoSources()[Lcom/facebook/soloader/SoSource;
    .locals 2

    .line 738
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 740
    :try_start_0
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/facebook/soloader/SoSource;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    invoke-virtual {v0}, [Lcom/facebook/soloader/SoSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/soloader/SoSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 742
    :goto_0
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 740
    return-object v0

    .line 742
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 743
    throw v0
.end method

.method public static deinitForTest()V
    .locals 1

    .line 645
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader$TestOnlyUtils;->setSoSources([Lcom/facebook/soloader/SoSource;)V

    .line 646
    return-void
.end method

.method private static doLoadLibraryBySoName(Ljava/lang/String;Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)V
    .locals 6
    .param p0, "soName"    # Ljava/lang/String;
    .param p1, "shortName"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "loadFlags"    # I
    .param p3, "oldPolicy"    # Landroid/os/StrictMode$ThreadPolicy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    .line 1180
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1182
    :try_start_0
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_b

    .line 1188
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1189
    nop

    .line 1193
    const/4 v0, 0x0

    .line 1194
    .local v0, "restoreOldPolicy":Z
    if-nez p3, :cond_0

    .line 1195
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object p3

    .line 1196
    const/4 v0, 0x1

    .line 1199
    :cond_0
    sget-boolean v1, Lcom/facebook/soloader/SoLoader;->SYSTRACE_LIBRARY_LOADING:Z

    if-eqz v1, :cond_2

    .line 1200
    const-string v1, "]"

    const-string v2, "SoLoader.loadLibrary["

    if-eqz p1, :cond_1

    .line 1201
    invoke-static {v2, p1, v1}, Lcom/facebook/soloader/Api18TraceUtils;->beginTraceSection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    :cond_1
    invoke-static {v2, p0, v1}, Lcom/facebook/soloader/Api18TraceUtils;->beginTraceSection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    :cond_2
    :try_start_1
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1209
    :try_start_2
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_7

    aget-object v4, v1, v3

    .line 1210
    .local v4, "source":Lcom/facebook/soloader/SoSource;
    invoke-static {v4, p0, p2, p3}, Lcom/facebook/soloader/SoLoader;->loadLibraryFromSoSource(Lcom/facebook/soloader/SoSource;Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)Z

    move-result v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_6

    .line 1223
    :try_start_3
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1226
    sget-boolean v1, Lcom/facebook/soloader/SoLoader;->SYSTRACE_LIBRARY_LOADING:Z

    if-eqz v1, :cond_4

    .line 1227
    if-eqz p1, :cond_3

    .line 1228
    invoke-static {}, Lcom/facebook/soloader/Api18TraceUtils;->endSection()V

    .line 1230
    :cond_3
    invoke-static {}, Lcom/facebook/soloader/Api18TraceUtils;->endSection()V

    .line 1233
    :cond_4
    if-eqz v0, :cond_5

    .line 1234
    invoke-static {p3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1211
    :cond_5
    return-void

    .line 1209
    .end local v4    # "source":Lcom/facebook/soloader/SoSource;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1216
    :cond_7
    :try_start_4
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sApplicationContext:Landroid/content/Context;

    sget-object v2, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    invoke-static {p0, v1, v2}, Lcom/facebook/soloader/SoLoaderDSONotFoundError;->create(Ljava/lang/String;Landroid/content/Context;[Lcom/facebook/soloader/SoSource;)Lcom/facebook/soloader/SoLoaderDSONotFoundError;

    move-result-object v1

    .end local v0    # "restoreOldPolicy":Z
    .end local p0    # "soName":Ljava/lang/String;
    .end local p1    # "shortName":Ljava/lang/String;
    .end local p2    # "loadFlags":I
    .end local p3    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1223
    .restart local v0    # "restoreOldPolicy":Z
    .restart local p0    # "soName":Ljava/lang/String;
    .restart local p1    # "shortName":Ljava/lang/String;
    .restart local p2    # "loadFlags":I
    .restart local p3    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1217
    :catch_0
    move-exception v1

    .line 1219
    .local v1, "err":Ljava/io/IOException;
    :try_start_5
    new-instance v2, Lcom/facebook/soloader/SoLoaderULError;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/facebook/soloader/SoLoaderULError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    .local v2, "error":Lcom/facebook/soloader/SoLoaderULError;
    invoke-virtual {v2, v1}, Lcom/facebook/soloader/SoLoaderULError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1221
    nop

    .end local v0    # "restoreOldPolicy":Z
    .end local p0    # "soName":Ljava/lang/String;
    .end local p1    # "shortName":Ljava/lang/String;
    .end local p2    # "loadFlags":I
    .end local p3    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1223
    .end local v1    # "err":Ljava/io/IOException;
    .end local v2    # "error":Lcom/facebook/soloader/SoLoaderULError;
    .restart local v0    # "restoreOldPolicy":Z
    .restart local p0    # "soName":Ljava/lang/String;
    .restart local p1    # "shortName":Ljava/lang/String;
    .restart local p2    # "loadFlags":I
    .restart local p3    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :goto_1
    :try_start_6
    sget-object v2, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1224
    nop

    .end local v0    # "restoreOldPolicy":Z
    .end local p0    # "soName":Ljava/lang/String;
    .end local p1    # "shortName":Ljava/lang/String;
    .end local p2    # "loadFlags":I
    .end local p3    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1226
    .restart local v0    # "restoreOldPolicy":Z
    .restart local p0    # "soName":Ljava/lang/String;
    .restart local p1    # "shortName":Ljava/lang/String;
    .restart local p2    # "loadFlags":I
    .restart local p3    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_1
    move-exception v1

    sget-boolean v2, Lcom/facebook/soloader/SoLoader;->SYSTRACE_LIBRARY_LOADING:Z

    if-eqz v2, :cond_9

    .line 1227
    if-eqz p1, :cond_8

    .line 1228
    invoke-static {}, Lcom/facebook/soloader/Api18TraceUtils;->endSection()V

    .line 1230
    :cond_8
    invoke-static {}, Lcom/facebook/soloader/Api18TraceUtils;->endSection()V

    .line 1233
    :cond_9
    if-eqz v0, :cond_a

    .line 1234
    invoke-static {p3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1236
    :cond_a
    throw v1

    .line 1183
    .end local v0    # "restoreOldPolicy":Z
    :cond_b
    :try_start_7
    const-string v0, "SoLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not load: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because SoLoader is not initialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/soloader/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    new-instance v0, Ljava/lang/UnsatisfiedLinkError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SoLoader not initialized, couldn\'t find DSO to load: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    .end local p0    # "soName":Ljava/lang/String;
    .end local p1    # "shortName":Ljava/lang/String;
    .end local p2    # "loadFlags":I
    .end local p3    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1188
    .restart local p0    # "soName":Ljava/lang/String;
    .restart local p1    # "shortName":Ljava/lang/String;
    .restart local p2    # "loadFlags":I
    .restart local p3    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_2
    move-exception v0

    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1189
    throw v0
.end method

.method private static getAppType(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 616
    sget v0, Lcom/facebook/soloader/SoLoader;->sAppType:I

    if-eqz v0, :cond_0

    .line 617
    sget v0, Lcom/facebook/soloader/SoLoader;->sAppType:I

    return v0

    .line 619
    :cond_0
    const-string v0, "SoLoader"

    const/4 v1, 0x1

    if-nez p0, :cond_1

    .line 620
    const-string v2, "context is null, fallback to THIRD_PARTY_APP appType"

    invoke-static {v0, v2}, Lcom/facebook/soloader/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    return v1

    .line 625
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 627
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v1, v3

    if-nez v1, :cond_2

    .line 628
    const/4 v1, 0x1

    .local v1, "type":I
    goto :goto_0

    .line 629
    .end local v1    # "type":I
    :cond_2
    iget v1, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_3

    .line 630
    const/4 v1, 0x3

    .restart local v1    # "type":I
    goto :goto_0

    .line 632
    .end local v1    # "type":I
    :cond_3
    const/4 v1, 0x2

    .line 634
    .restart local v1    # "type":I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ApplicationInfo.flags is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " appType is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/facebook/soloader/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    return v1
.end method

.method private static getApplicationSoSourceFlags()I
    .locals 2

    .line 474
    sget v0, Lcom/facebook/soloader/SoLoader;->sAppType:I

    packed-switch v0, :pswitch_data_0

    .line 481
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupported app type, we should not reach here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 476
    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getLibraryDependencies(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "libName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 755
    const/4 v0, 0x0

    .line 757
    .local v0, "deps":[Ljava/lang/String;
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 759
    :try_start_0
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    if-eqz v1, :cond_0

    .line 760
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-nez v0, :cond_0

    sget-object v2, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 761
    sget-object v2, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    aget-object v2, v2, v1

    .line 762
    .local v2, "currentSource":Lcom/facebook/soloader/SoSource;
    invoke-virtual {v2, p0}, Lcom/facebook/soloader/SoSource;->getLibraryDependencies(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 760
    .end local v2    # "currentSource":Lcom/facebook/soloader/SoSource;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 766
    .end local v1    # "i":I
    :cond_0
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 767
    nop

    .line 769
    return-object v0

    .line 766
    :catchall_0
    move-exception v1

    sget-object v2, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 767
    throw v1
.end method

.method public static getLibraryPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "libName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 720
    const/4 v0, 0x0

    .line 722
    .local v0, "libPath":Ljava/lang/String;
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 724
    :try_start_0
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    if-eqz v1, :cond_0

    .line 725
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-nez v0, :cond_0

    sget-object v2, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 726
    sget-object v2, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    aget-object v2, v2, v1

    .line 727
    .local v2, "currentSource":Lcom/facebook/soloader/SoSource;
    invoke-virtual {v2, p0}, Lcom/facebook/soloader/SoSource;->getLibraryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 725
    .end local v2    # "currentSource":Lcom/facebook/soloader/SoSource;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 731
    .end local v1    # "i":I
    :cond_0
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 732
    nop

    .line 734
    return-object v0

    .line 731
    :catchall_0
    move-exception v1

    sget-object v2, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 732
    throw v1
.end method

.method public static getLoadedLibrariesCount()I
    .locals 1

    .line 1400
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sLoadedLibraries:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method private static declared-synchronized getRecoveryStrategy()Lcom/facebook/soloader/recovery/RecoveryStrategy;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const-class v0, Lcom/facebook/soloader/SoLoader;

    monitor-enter v0

    .line 1003
    :try_start_0
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sRecoveryStrategyFactory:Lcom/facebook/soloader/recovery/RecoveryStrategyFactory;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sRecoveryStrategyFactory:Lcom/facebook/soloader/recovery/RecoveryStrategyFactory;

    invoke-interface {v1}, Lcom/facebook/soloader/recovery/RecoveryStrategyFactory;->get()Lcom/facebook/soloader/recovery/RecoveryStrategy;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-object v1

    .line 1003
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getSoFile(Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .param p0, "shortName"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 781
    sget-object v0, Lcom/facebook/soloader/SoLoader;->externalSoMapping:Lcom/facebook/soloader/ExternalSoMapping;

    if-eqz v0, :cond_0

    .line 782
    sget-object v0, Lcom/facebook/soloader/SoLoader;->externalSoMapping:Lcom/facebook/soloader/ExternalSoMapping;

    invoke-interface {v0, p0}, Lcom/facebook/soloader/ExternalSoMapping;->mapLibName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "mergedLibName":Ljava/lang/String;
    goto :goto_0

    .line 784
    .end local v0    # "mergedLibName":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lcom/facebook/soloader/MergedSoMapping;->mapLibName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 786
    .restart local v0    # "mergedLibName":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object v1, p0

    .line 787
    .local v1, "soName":Ljava/lang/String;
    :goto_1
    invoke-static {v1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 789
    .local v2, "mappedName":Ljava/lang/String;
    sget-object v3, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 791
    :try_start_0
    sget-object v3, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    if-eqz v3, :cond_3

    .line 792
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    sget-object v4, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    array-length v4, v4

    if-ge v3, v4, :cond_3

    .line 793
    sget-object v4, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    aget-object v4, v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 795
    .local v4, "currentSource":Lcom/facebook/soloader/SoSource;
    :try_start_1
    invoke-virtual {v4, v2}, Lcom/facebook/soloader/SoSource;->getSoFileByName(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 796
    .local v5, "soFile":Ljava/io/File;
    if-eqz v5, :cond_2

    .line 797
    nop

    .line 805
    sget-object v6, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 797
    return-object v5

    .line 801
    .end local v5    # "soFile":Ljava/io/File;
    :cond_2
    goto :goto_3

    .line 799
    :catch_0
    move-exception v5

    .line 792
    .end local v4    # "currentSource":Lcom/facebook/soloader/SoSource;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 805
    .end local v3    # "i":I
    :cond_3
    sget-object v3, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 806
    nop

    .line 808
    const/4 v3, 0x0

    return-object v3

    .line 805
    :catchall_0
    move-exception v3

    sget-object v4, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 806
    throw v3
.end method

.method public static getSoSourcesVersion()I
    .locals 1

    .line 1290
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public static init(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/facebook/soloader/SoLoader;->init(Landroid/content/Context;ILcom/facebook/soloader/SoFileLoader;)V

    .line 261
    return-void
.end method

.method public static init(Landroid/content/Context;ILcom/facebook/soloader/SoFileLoader;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flags"    # I
    .param p2, "soFileLoader"    # Lcom/facebook/soloader/SoFileLoader;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->isInitialized()Z

    move-result v0

    const-string v1, "SoLoader"

    if-eqz v0, :cond_0

    .line 276
    const-string v0, "SoLoader already initialized"

    invoke-static {v1, v0}, Lcom/facebook/soloader/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-void

    .line 280
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initializing SoLoader: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/soloader/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 283
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    invoke-static {p0}, Lcom/facebook/soloader/SoLoader;->initEnableConfig(Landroid/content/Context;)Z

    move-result v2

    sput-boolean v2, Lcom/facebook/soloader/SoLoader;->isEnabled:Z

    .line 284
    sget-boolean v2, Lcom/facebook/soloader/SoLoader;->isEnabled:Z

    if-eqz v2, :cond_2

    .line 285
    invoke-static {p0}, Lcom/facebook/soloader/SoLoader;->getAppType(Landroid/content/Context;)I

    move-result v2

    sput v2, Lcom/facebook/soloader/SoLoader;->sAppType:I

    .line 286
    and-int/lit16 v2, p1, 0x80

    if-nez v2, :cond_1

    sget v2, Lcom/facebook/soloader/SoLoader;->sAppType:I

    .line 287
    invoke-static {p0, v2}, Lcom/facebook/soloader/SysUtil;->isSupportedDirectLoad(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 289
    or-int/lit8 p1, p1, 0x8

    .line 292
    :cond_1
    invoke-static {p0, p2, p1}, Lcom/facebook/soloader/SoLoader;->initSoLoader(Landroid/content/Context;Lcom/facebook/soloader/SoFileLoader;I)V

    .line 293
    invoke-static {p0, p1}, Lcom/facebook/soloader/SoLoader;->initSoSources(Landroid/content/Context;I)V

    .line 294
    const-string v2, "Init SoLoader delegate"

    invoke-static {v1, v2}, Lcom/facebook/soloader/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    new-instance v2, Lcom/facebook/soloader/NativeLoaderToSoLoaderDelegate;

    invoke-direct {v2}, Lcom/facebook/soloader/NativeLoaderToSoLoaderDelegate;-><init>()V

    invoke-static {v2}, Lcom/facebook/soloader/nativeloader/NativeLoader;->initIfUninitialized(Lcom/facebook/soloader/nativeloader/NativeLoaderDelegate;)V

    goto :goto_0

    .line 297
    :cond_2
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->initDummySoSource()V

    .line 298
    const-string v2, "Init System Loader delegate"

    invoke-static {v1, v2}, Lcom/facebook/soloader/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    new-instance v2, Lcom/facebook/soloader/nativeloader/SystemDelegate;

    invoke-direct {v2}, Lcom/facebook/soloader/nativeloader/SystemDelegate;-><init>()V

    invoke-static {v2}, Lcom/facebook/soloader/nativeloader/NativeLoader;->initIfUninitialized(Lcom/facebook/soloader/nativeloader/NativeLoaderDelegate;)V

    .line 301
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SoLoader initialized: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/soloader/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 304
    nop

    .line 305
    return-void

    .line 303
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 304
    throw v1
.end method

.method public static init(Landroid/content/Context;Lcom/facebook/soloader/ExternalSoMapping;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "externalSoMapping"    # Lcom/facebook/soloader/ExternalSoMapping;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    const-class v0, Lcom/facebook/soloader/SoLoader;

    monitor-enter v0

    .line 336
    :try_start_0
    sput-object p1, Lcom/facebook/soloader/SoLoader;->externalSoMapping:Lcom/facebook/soloader/ExternalSoMapping;

    .line 337
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/soloader/SoLoader;->init(Landroid/content/Context;I)V

    .line 339
    return-void

    .line 337
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static init(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nativeExopackage"    # Z

    .line 316
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v0, v1}, Lcom/facebook/soloader/SoLoader;->init(Landroid/content/Context;ILcom/facebook/soloader/SoFileLoader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    nop

    .line 320
    return-void

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static initDummySoSource()V
    .locals 2

    .line 457
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    if-eqz v0, :cond_0

    .line 458
    return-void

    .line 461
    :cond_0
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 464
    :try_start_0
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 469
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 465
    return-void

    .line 467
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    new-array v0, v0, [Lcom/facebook/soloader/SoSource;

    sput-object v0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 469
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 470
    nop

    .line 471
    return-void

    .line 469
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 470
    throw v0
.end method

.method private static initEnableConfig(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 348
    nop

    .line 352
    sget-object v0, Lcom/facebook/soloader/SoLoader;->externalSoMapping:Lcom/facebook/soloader/ExternalSoMapping;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 356
    return v1

    .line 359
    :cond_0
    const-string v0, "com.facebook.soloader.enabled"

    .line 360
    .local v0, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 361
    .local v2, "metaData":Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 363
    .local v3, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 365
    nop

    .line 367
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 368
    const/16 v5, 0x80

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 373
    goto :goto_0

    .line 370
    :catch_0
    move-exception v4

    .line 372
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected issue with package manager ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SoLoader"

    invoke-static {v6, v5, v4}, Lcom/facebook/soloader/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 376
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v2, :cond_2

    const-string v4, "com.facebook.soloader.enabled"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    return v1
.end method

.method private static declared-synchronized initSoLoader(Landroid/content/Context;Lcom/facebook/soloader/SoFileLoader;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "soFileLoader"    # Lcom/facebook/soloader/SoFileLoader;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "flags"    # I

    const-class v0, Lcom/facebook/soloader/SoLoader;

    monitor-enter v0

    .line 587
    if-eqz p0, :cond_1

    .line 588
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 590
    .local v1, "applicationContext":Landroid/content/Context;
    if-nez v1, :cond_0

    .line 591
    move-object v1, p0

    .line 592
    const-string v2, "SoLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "context.getApplicationContext returned null, holding reference to original context.ApplicationSoSource fallbacks to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 596
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 592
    invoke-static {v2, v3}, Lcom/facebook/soloader/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    :cond_0
    sput-object v1, Lcom/facebook/soloader/SoLoader;->sApplicationContext:Landroid/content/Context;

    .line 600
    new-instance v2, Lcom/facebook/soloader/recovery/DefaultRecoveryStrategyFactory;

    .line 601
    invoke-static {p2}, Lcom/facebook/soloader/SoLoader;->makeRecoveryFlags(I)I

    move-result v3

    invoke-direct {v2, v1, v3}, Lcom/facebook/soloader/recovery/DefaultRecoveryStrategyFactory;-><init>(Landroid/content/Context;I)V

    sput-object v2, Lcom/facebook/soloader/SoLoader;->sRecoveryStrategyFactory:Lcom/facebook/soloader/recovery/RecoveryStrategyFactory;

    goto :goto_0

    .line 586
    .end local v1    # "applicationContext":Landroid/content/Context;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "soFileLoader":Lcom/facebook/soloader/SoFileLoader;
    .end local p2    # "flags":I
    :catchall_0
    move-exception p0

    goto :goto_1

    .line 604
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "soFileLoader":Lcom/facebook/soloader/SoFileLoader;
    .restart local p2    # "flags":I
    :cond_1
    :goto_0
    if-nez p1, :cond_2

    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoFileLoader:Lcom/facebook/soloader/SoFileLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 605
    monitor-exit v0

    return-void

    .line 607
    :cond_2
    if-eqz p1, :cond_3

    .line 608
    :try_start_1
    sput-object p1, Lcom/facebook/soloader/SoLoader;->sSoFileLoader:Lcom/facebook/soloader/SoFileLoader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 609
    monitor-exit v0

    return-void

    .line 612
    :cond_3
    :try_start_2
    new-instance v1, Lcom/facebook/soloader/InstrumentedSoFileLoader;

    new-instance v2, Lcom/facebook/soloader/SoFileLoaderImpl;

    invoke-direct {v2}, Lcom/facebook/soloader/SoFileLoaderImpl;-><init>()V

    invoke-direct {v1, v2}, Lcom/facebook/soloader/InstrumentedSoFileLoader;-><init>(Lcom/facebook/soloader/SoFileLoader;)V

    sput-object v1, Lcom/facebook/soloader/SoLoader;->sSoFileLoader:Lcom/facebook/soloader/SoFileLoader;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 613
    monitor-exit v0

    return-void

    .line 586
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "soFileLoader":Lcom/facebook/soloader/SoFileLoader;
    .end local p2    # "flags":I
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private static initSoSources(Landroid/content/Context;I)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 380
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    if-eqz v0, :cond_0

    .line 381
    return-void

    .line 384
    :cond_0
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 387
    :try_start_0
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 452
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 388
    return-void

    .line 391
    :cond_1
    :try_start_1
    sput p1, Lcom/facebook/soloader/SoLoader;->sFlags:I

    .line 393
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 394
    .local v0, "soSources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/soloader/SoSource;>;"
    and-int/lit16 v1, p1, 0x200

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    .line 396
    .local v1, "isEnabledSystemLoadWrapper":Z
    :goto_0
    and-int/lit16 v4, p1, 0x400

    if-eqz v4, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v3

    .line 398
    .local v4, "isEnabledBaseApkSplitSource":Z
    :goto_1
    const-string v5, "SoLoader"

    if-eqz v1, :cond_4

    .line 399
    :try_start_2
    invoke-static {p0, v0}, Lcom/facebook/soloader/SoLoader;->addSystemLoadWrapperSoSource(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_3

    .line 400
    :cond_4
    if-eqz v4, :cond_5

    .line 401
    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->addSystemLibSoSource(Ljava/util/ArrayList;)V

    .line 402
    new-instance v2, Lcom/facebook/soloader/DirectSplitSoSource;

    const-string v6, "base"

    invoke-direct {v2, v6}, Lcom/facebook/soloader/DirectSplitSoSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 404
    :cond_5
    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->addSystemLibSoSource(Ljava/util/ArrayList;)V

    .line 410
    if-eqz p0, :cond_9

    .line 413
    and-int/lit8 v6, p1, 0x1

    if-eqz v6, :cond_6

    .line 418
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->getApplicationSoSourceFlags()I

    move-result v2

    invoke-static {v0, v2}, Lcom/facebook/soloader/SoLoader;->addApplicationSoSource(Ljava/util/ArrayList;I)V

    .line 419
    const-string v2, "Adding exo package source: lib-main"

    invoke-static {v5, v2}, Lcom/facebook/soloader/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    new-instance v2, Lcom/facebook/soloader/ExoSoSource;

    const-string v6, "lib-main"

    invoke-direct {v2, p0, v6}, Lcom/facebook/soloader/ExoSoSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 422
    :cond_6
    sget v6, Lcom/facebook/soloader/SoLoader;->sAppType:I

    invoke-static {p0, v6}, Lcom/facebook/soloader/SysUtil;->isSupportedDirectLoad(Landroid/content/Context;I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 423
    invoke-static {p0, v0}, Lcom/facebook/soloader/SoLoader;->addDirectApkSoSource(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 425
    :cond_7
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->getApplicationSoSourceFlags()I

    move-result v6

    invoke-static {v0, v6}, Lcom/facebook/soloader/SoLoader;->addApplicationSoSource(Ljava/util/ArrayList;I)V

    .line 426
    and-int/lit16 v6, p1, 0x1000

    if-eqz v6, :cond_8

    goto :goto_2

    :cond_8
    move v2, v3

    :goto_2
    invoke-static {p0, v0, v2}, Lcom/facebook/soloader/SoLoader;->addBackupSoSource(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 435
    :cond_9
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/facebook/soloader/SoSource;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/facebook/soloader/SoSource;

    .line 436
    .local v2, "finalSoSources":[Lcom/facebook/soloader/SoSource;
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->makePrepareFlags()I

    move-result v3

    .line 437
    .local v3, "prepareFlags":I
    array-length v6, v2

    .local v6, "i":I
    :goto_4
    add-int/lit8 v7, v6, -0x1

    .end local v6    # "i":I
    .local v7, "i":I
    if-lez v6, :cond_c

    .line 438
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Preparing SO source: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v8, v2, v7

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/facebook/soloader/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    sget-boolean v6, Lcom/facebook/soloader/SoLoader;->SYSTRACE_LIBRARY_LOADING:Z

    if-eqz v6, :cond_a

    .line 441
    const-string v6, "_"

    aget-object v8, v2, v7

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v8}, Lcom/facebook/soloader/Api18TraceUtils;->beginTraceSection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    :cond_a
    aget-object v6, v2, v7

    invoke-virtual {v6, v3}, Lcom/facebook/soloader/SoSource;->prepare(I)V

    .line 444
    sget-boolean v6, Lcom/facebook/soloader/SoLoader;->SYSTRACE_LIBRARY_LOADING:Z

    if-eqz v6, :cond_b

    .line 445
    invoke-static {}, Lcom/facebook/soloader/Api18TraceUtils;->endSection()V

    .line 437
    :cond_b
    move v6, v7

    goto :goto_4

    .line 448
    .end local v7    # "i":I
    :cond_c
    sput-object v2, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    .line 449
    sget-object v6, Lcom/facebook/soloader/SoLoader;->sSoSourcesVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 450
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "init finish: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " SO sources prepared"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/facebook/soloader/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 452
    .end local v0    # "soSources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/soloader/SoSource;>;"
    .end local v1    # "isEnabledSystemLoadWrapper":Z
    .end local v2    # "finalSoSources":[Lcom/facebook/soloader/SoSource;
    .end local v3    # "prepareFlags":I
    .end local v4    # "isEnabledBaseApkSplitSource":Z
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 453
    nop

    .line 454
    return-void

    .line 452
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 453
    throw v0
.end method

.method public static isInitialized()Z
    .locals 2

    .line 1278
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1279
    return v1

    .line 1281
    :cond_0
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1283
    :try_start_0
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1285
    :goto_0
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1283
    return v1

    .line 1285
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1286
    throw v0
.end method

.method static loadDependency(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)V
    .locals 4
    .param p0, "soName"    # Ljava/lang/String;
    .param p1, "loadFlags"    # I
    .param p2, "oldPolicy"    # Landroid/os/StrictMode$ThreadPolicy;

    .line 915
    const/4 v0, 0x0

    .line 916
    .local v0, "failure":Ljava/lang/Throwable;
    invoke-static {p0, p1}, Lcom/facebook/soloader/observer/ObserverHolder;->onLoadDependencyStart(Ljava/lang/String;I)V

    .line 917
    const/4 v1, 0x0

    .line 919
    .local v1, "wasLoaded":Z
    or-int/lit8 v2, p1, 0x1

    .line 920
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0, v3, v3, v2, p2}, Lcom/facebook/soloader/SoLoader;->loadLibraryBySoNameImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    .line 930
    invoke-static {v0, v1}, Lcom/facebook/soloader/observer/ObserverHolder;->onLoadDependencyEnd(Ljava/lang/Throwable;Z)V

    .line 931
    nop

    .line 932
    return-void

    .line 926
    :catchall_0
    move-exception v2

    .line 927
    .local v2, "t":Ljava/lang/Throwable;
    move-object v0, v2

    .line 928
    nop

    .end local v0    # "failure":Ljava/lang/Throwable;
    .end local v1    # "wasLoaded":Z
    .end local p0    # "soName":Ljava/lang/String;
    .end local p1    # "loadFlags":I
    .end local p2    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 930
    .end local v2    # "t":Ljava/lang/Throwable;
    .restart local v0    # "failure":Ljava/lang/Throwable;
    .restart local v1    # "wasLoaded":Z
    .restart local p0    # "soName":Ljava/lang/String;
    .restart local p1    # "loadFlags":I
    .restart local p2    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Lcom/facebook/soloader/observer/ObserverHolder;->onLoadDependencyEnd(Ljava/lang/Throwable;Z)V

    .line 931
    throw v2
.end method

.method public static loadLibrary(Ljava/lang/String;)Z
    .locals 1
    .param p0, "shortName"    # Ljava/lang/String;

    .line 812
    sget-boolean v0, Lcom/facebook/soloader/SoLoader;->isEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/facebook/soloader/nativeloader/NativeLoader;->loadLibrary(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public static loadLibrary(Ljava/lang/String;I)Z
    .locals 3
    .param p0, "shortName"    # Ljava/lang/String;
    .param p1, "loadFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    .line 825
    invoke-static {p0}, Lcom/facebook/soloader/SoLoader;->loadLibraryOnNonAndroid(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 826
    .local v0, "needsLoad":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 827
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 830
    :cond_0
    sget-boolean v1, Lcom/facebook/soloader/SoLoader;->isEnabled:Z

    if-nez v1, :cond_1

    .line 831
    invoke-static {p0}, Lcom/facebook/soloader/nativeloader/NativeLoader;->loadLibrary(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 836
    :cond_1
    sget v1, Lcom/facebook/soloader/SoLoader;->sAppType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    sget v1, Lcom/facebook/soloader/SoLoader;->sAppType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    :cond_2
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSystemLoadLibraryWrapper:Lcom/facebook/soloader/SystemLoadLibraryWrapper;

    if-eqz v1, :cond_3

    .line 838
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSystemLoadLibraryWrapper:Lcom/facebook/soloader/SystemLoadLibraryWrapper;

    invoke-interface {v1, p0}, Lcom/facebook/soloader/SystemLoadLibraryWrapper;->loadLibrary(Ljava/lang/String;)V

    .line 839
    const/4 v1, 0x1

    return v1

    .line 842
    :cond_3
    invoke-static {p0, p1}, Lcom/facebook/soloader/SoLoader;->loadLibraryOnAndroid(Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method private static loadLibraryBySoName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)Z
    .locals 2
    .param p0, "soName"    # Ljava/lang/String;
    .param p1, "shortName"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "mergedLibName"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "loadFlags"    # I
    .param p4, "oldPolicy"    # Landroid/os/StrictMode$ThreadPolicy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 940
    const/4 v0, 0x0

    .line 943
    .local v0, "recovery":Lcom/facebook/soloader/recovery/RecoveryStrategy;
    :goto_0
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/soloader/SoLoader;->loadLibraryBySoNameImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 944
    :catch_0
    move-exception v1

    .line 945
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-static {p0, v1, v0}, Lcom/facebook/soloader/SoLoader;->recover(Ljava/lang/String;Ljava/lang/UnsatisfiedLinkError;Lcom/facebook/soloader/recovery/RecoveryStrategy;)Lcom/facebook/soloader/recovery/RecoveryStrategy;

    move-result-object v0

    .line 946
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_0
.end method

.method private static loadLibraryBySoNameImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)Z
    .locals 8
    .param p0, "soName"    # Ljava/lang/String;
    .param p1, "shortName"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "mergedLibName"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "loadFlags"    # I
    .param p4, "oldPolicy"    # Landroid/os/StrictMode$ThreadPolicy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1020
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/soloader/SoLoader;->sLoadedAndJniInvoked:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1021
    return v1

    .line 1023
    :cond_0
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sLoadedLibraries:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    .line 1024
    return v1

    .line 1032
    :cond_1
    const/4 v0, 0x0

    .line 1033
    .local v0, "loaded":Z
    const-class v2, Lcom/facebook/soloader/SoLoader;

    monitor-enter v2

    .line 1034
    :try_start_0
    sget-object v3, Lcom/facebook/soloader/SoLoader;->sLoadedLibraries:Ljava/util/Set;

    invoke-interface {v3, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1035
    if-nez p2, :cond_2

    .line 1037
    monitor-exit v2

    return v1

    .line 1039
    :cond_2
    const/4 v0, 0x1

    .line 1041
    :cond_3
    sget-object v3, Lcom/facebook/soloader/SoLoader;->sLoadingLibraries:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1042
    sget-object v3, Lcom/facebook/soloader/SoLoader;->sLoadingLibraries:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .local v3, "loadingLibLock":Ljava/lang/Object;
    goto :goto_0

    .line 1044
    .end local v3    # "loadingLibLock":Ljava/lang/Object;
    :cond_4
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1045
    .restart local v3    # "loadingLibLock":Ljava/lang/Object;
    sget-object v4, Lcom/facebook/soloader/SoLoader;->sLoadingLibraries:Ljava/util/Map;

    invoke-interface {v4, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    :goto_0
    sget-object v4, Lcom/facebook/soloader/SoLoader;->sInvokingJniForLibrary:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1048
    sget-object v4, Lcom/facebook/soloader/SoLoader;->sInvokingJniForLibrary:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .local v4, "invokingJniLock":Ljava/lang/Object;
    goto :goto_1

    .line 1050
    .end local v4    # "invokingJniLock":Ljava/lang/Object;
    :cond_5
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 1051
    .restart local v4    # "invokingJniLock":Ljava/lang/Object;
    sget-object v5, Lcom/facebook/soloader/SoLoader;->sInvokingJniForLibrary:Ljava/util/Map;

    invoke-interface {v5, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1061
    sget-object v2, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1063
    :try_start_1
    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1064
    if-nez v0, :cond_9

    .line 1065
    :try_start_2
    sget-object v2, Lcom/facebook/soloader/SoLoader;->sLoadedLibraries:Ljava/util/Set;

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1067
    if-nez p2, :cond_6

    .line 1069
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1152
    sget-object v2, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1069
    return v1

    .line 1071
    :cond_6
    const/4 v0, 0x1

    .line 1075
    :cond_7
    if-nez v0, :cond_9

    .line 1077
    :try_start_3
    const-string v2, "SoLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "About to load: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/facebook/soloader/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    invoke-static {p0, p1, p3, p4}, Lcom/facebook/soloader/SoLoader;->doLoadLibraryBySoName(Ljava/lang/String;Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)V
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1087
    nop

    .line 1088
    :try_start_4
    const-string v2, "SoLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loaded: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/facebook/soloader/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    sget-object v2, Lcom/facebook/soloader/SoLoader;->sLoadedLibraries:Ljava/util/Set;

    invoke-interface {v2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1079
    :catch_0
    move-exception v1

    .line 1080
    .local v1, "ex":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 1081
    .local v2, "message":Ljava/lang/String;
    if-eqz v2, :cond_8

    const-string/jumbo v5, "unexpected e_machine:"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1082
    const-string/jumbo v5, "unexpected e_machine:"

    .line 1083
    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1084
    .local v5, "machine_msg":Ljava/lang/String;
    new-instance v6, Lcom/facebook/soloader/SoLoader$WrongAbiError;

    invoke-direct {v6, v1, v5}, Lcom/facebook/soloader/SoLoader$WrongAbiError;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    .end local v0    # "loaded":Z
    .end local v3    # "loadingLibLock":Ljava/lang/Object;
    .end local v4    # "invokingJniLock":Ljava/lang/Object;
    .end local p0    # "soName":Ljava/lang/String;
    .end local p1    # "shortName":Ljava/lang/String;
    .end local p2    # "mergedLibName":Ljava/lang/String;
    .end local p3    # "loadFlags":I
    .end local p4    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    throw v6

    .line 1086
    .end local v5    # "machine_msg":Ljava/lang/String;
    .restart local v0    # "loaded":Z
    .restart local v3    # "loadingLibLock":Ljava/lang/Object;
    .restart local v4    # "invokingJniLock":Ljava/lang/Object;
    .restart local p0    # "soName":Ljava/lang/String;
    .restart local p1    # "shortName":Ljava/lang/String;
    .restart local p2    # "mergedLibName":Ljava/lang/String;
    .restart local p3    # "loadFlags":I
    .restart local p4    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :cond_8
    nop

    .end local v0    # "loaded":Z
    .end local v3    # "loadingLibLock":Ljava/lang/Object;
    .end local v4    # "invokingJniLock":Ljava/lang/Object;
    .end local p0    # "soName":Ljava/lang/String;
    .end local p1    # "shortName":Ljava/lang/String;
    .end local p2    # "mergedLibName":Ljava/lang/String;
    .end local p3    # "loadFlags":I
    .end local p4    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    throw v1

    .line 1092
    .end local v1    # "ex":Ljava/lang/UnsatisfiedLinkError;
    .end local v2    # "message":Ljava/lang/String;
    .restart local v0    # "loaded":Z
    .restart local v3    # "loadingLibLock":Ljava/lang/Object;
    .restart local v4    # "invokingJniLock":Ljava/lang/Object;
    .restart local p0    # "soName":Ljava/lang/String;
    .restart local p1    # "shortName":Ljava/lang/String;
    .restart local p2    # "mergedLibName":Ljava/lang/String;
    .restart local p3    # "loadFlags":I
    .restart local p4    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :cond_9
    :goto_2
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1094
    :try_start_5
    monitor-enter v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1095
    and-int/lit8 v2, p3, 0x10

    if-nez v2, :cond_e

    if-eqz p2, :cond_e

    .line 1099
    nop

    .line 1100
    :try_start_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    sget-object v2, Lcom/facebook/soloader/SoLoader;->sLoadedAndJniInvoked:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v1, 0x1

    .line 1101
    .local v1, "wasAlreadyJniInvoked":Z
    :cond_a
    if-nez v1, :cond_e

    .line 1102
    sget-boolean v2, Lcom/facebook/soloader/SoLoader;->SYSTRACE_LIBRARY_LOADING:Z

    if-eqz v2, :cond_b

    sget-object v2, Lcom/facebook/soloader/SoLoader;->externalSoMapping:Lcom/facebook/soloader/ExternalSoMapping;

    if-nez v2, :cond_b

    .line 1103
    const-string v2, "MergedSoMapping.invokeJniOnload["

    const-string v5, "]"

    invoke-static {v2, p1, v5}, Lcom/facebook/soloader/Api18TraceUtils;->beginTraceSection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1106
    :cond_b
    :try_start_7
    const-string v2, "SoLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "About to invoke JNI_OnLoad for merged library "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", which was merged into "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/facebook/soloader/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    sget-object v2, Lcom/facebook/soloader/SoLoader;->externalSoMapping:Lcom/facebook/soloader/ExternalSoMapping;

    if-eqz v2, :cond_c

    .line 1113
    sget-object v2, Lcom/facebook/soloader/SoLoader;->externalSoMapping:Lcom/facebook/soloader/ExternalSoMapping;

    invoke-interface {v2, p1}, Lcom/facebook/soloader/ExternalSoMapping;->invokeJniOnload(Ljava/lang/String;)V

    goto :goto_3

    .line 1115
    :cond_c
    invoke-static {p1}, Lcom/facebook/soloader/MergedSoMapping;->invokeJniOnload(Ljava/lang/String;)V

    .line 1117
    :goto_3
    sget-object v2, Lcom/facebook/soloader/SoLoader;->sLoadedAndJniInvoked:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1144
    :try_start_8
    sget-boolean v2, Lcom/facebook/soloader/SoLoader;->SYSTRACE_LIBRARY_LOADING:Z

    if-eqz v2, :cond_e

    sget-object v2, Lcom/facebook/soloader/SoLoader;->externalSoMapping:Lcom/facebook/soloader/ExternalSoMapping;

    if-nez v2, :cond_e

    .line 1145
    invoke-static {}, Lcom/facebook/soloader/Api18TraceUtils;->endSection()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_5

    .line 1144
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 1118
    :catch_1
    move-exception v2

    .line 1136
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
    :try_start_9
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to call JNI_OnLoad from \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', which has been merged into \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'.  See comment for details."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "loaded":Z
    .end local v1    # "wasAlreadyJniInvoked":Z
    .end local v3    # "loadingLibLock":Ljava/lang/Object;
    .end local v4    # "invokingJniLock":Ljava/lang/Object;
    .end local p0    # "soName":Ljava/lang/String;
    .end local p1    # "shortName":Ljava/lang/String;
    .end local p2    # "mergedLibName":Ljava/lang/String;
    .end local p3    # "loadFlags":I
    .end local p4    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1144
    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    .restart local v0    # "loaded":Z
    .restart local v1    # "wasAlreadyJniInvoked":Z
    .restart local v3    # "loadingLibLock":Ljava/lang/Object;
    .restart local v4    # "invokingJniLock":Ljava/lang/Object;
    .restart local p0    # "soName":Ljava/lang/String;
    .restart local p1    # "shortName":Ljava/lang/String;
    .restart local p2    # "mergedLibName":Ljava/lang/String;
    .restart local p3    # "loadFlags":I
    .restart local p4    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :goto_4
    :try_start_a
    sget-boolean v5, Lcom/facebook/soloader/SoLoader;->SYSTRACE_LIBRARY_LOADING:Z

    if-eqz v5, :cond_d

    sget-object v5, Lcom/facebook/soloader/SoLoader;->externalSoMapping:Lcom/facebook/soloader/ExternalSoMapping;

    if-nez v5, :cond_d

    .line 1145
    invoke-static {}, Lcom/facebook/soloader/Api18TraceUtils;->endSection()V

    .line 1147
    :cond_d
    nop

    .end local v0    # "loaded":Z
    .end local v3    # "loadingLibLock":Ljava/lang/Object;
    .end local v4    # "invokingJniLock":Ljava/lang/Object;
    .end local p0    # "soName":Ljava/lang/String;
    .end local p1    # "shortName":Ljava/lang/String;
    .end local p2    # "mergedLibName":Ljava/lang/String;
    .end local p3    # "loadFlags":I
    .end local p4    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    throw v2

    .line 1150
    .end local v1    # "wasAlreadyJniInvoked":Z
    .restart local v0    # "loaded":Z
    .restart local v3    # "loadingLibLock":Ljava/lang/Object;
    .restart local v4    # "invokingJniLock":Ljava/lang/Object;
    .restart local p0    # "soName":Ljava/lang/String;
    .restart local p1    # "shortName":Ljava/lang/String;
    .restart local p2    # "mergedLibName":Ljava/lang/String;
    .restart local p3    # "loadFlags":I
    .restart local p4    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :cond_e
    :goto_5
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1152
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1153
    nop

    .line 1154
    xor-int/lit8 v1, v0, 0x1

    return v1

    .line 1150
    :catchall_1
    move-exception v1

    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .end local v0    # "loaded":Z
    .end local v3    # "loadingLibLock":Ljava/lang/Object;
    .end local v4    # "invokingJniLock":Ljava/lang/Object;
    .end local p0    # "soName":Ljava/lang/String;
    .end local p1    # "shortName":Ljava/lang/String;
    .end local p2    # "mergedLibName":Ljava/lang/String;
    .end local p3    # "loadFlags":I
    .end local p4    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_c
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 1092
    .restart local v0    # "loaded":Z
    .restart local v3    # "loadingLibLock":Ljava/lang/Object;
    .restart local v4    # "invokingJniLock":Ljava/lang/Object;
    .restart local p0    # "soName":Ljava/lang/String;
    .restart local p1    # "shortName":Ljava/lang/String;
    .restart local p2    # "mergedLibName":Ljava/lang/String;
    .restart local p3    # "loadFlags":I
    .restart local p4    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_2
    move-exception v1

    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .end local v0    # "loaded":Z
    .end local v3    # "loadingLibLock":Ljava/lang/Object;
    .end local v4    # "invokingJniLock":Ljava/lang/Object;
    .end local p0    # "soName":Ljava/lang/String;
    .end local p1    # "shortName":Ljava/lang/String;
    .end local p2    # "mergedLibName":Ljava/lang/String;
    .end local p3    # "loadFlags":I
    .end local p4    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_e
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 1152
    .restart local v0    # "loaded":Z
    .restart local v3    # "loadingLibLock":Ljava/lang/Object;
    .restart local v4    # "invokingJniLock":Ljava/lang/Object;
    .restart local p0    # "soName":Ljava/lang/String;
    .restart local p1    # "shortName":Ljava/lang/String;
    .restart local p2    # "mergedLibName":Ljava/lang/String;
    .restart local p3    # "loadFlags":I
    .restart local p4    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_3
    move-exception v1

    sget-object v2, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1153
    throw v1

    .line 1053
    .end local v3    # "loadingLibLock":Ljava/lang/Object;
    .end local v4    # "invokingJniLock":Ljava/lang/Object;
    :catchall_4
    move-exception v1

    :try_start_f
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    throw v1
.end method

.method private static loadLibraryFromSoSource(Lcom/facebook/soloader/SoSource;Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)Z
    .locals 2
    .param p0, "source"    # Lcom/facebook/soloader/SoSource;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "loadFlags"    # I
    .param p3, "oldPolicy"    # Landroid/os/StrictMode$ThreadPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1243
    const/4 v0, 0x0

    .line 1244
    .local v0, "failure":Ljava/lang/Throwable;
    invoke-static {p0}, Lcom/facebook/soloader/observer/ObserverHolder;->onSoSourceLoadLibraryStart(Lcom/facebook/soloader/SoSource;)V

    .line 1246
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/soloader/SoSource;->loadLibrary(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1251
    :goto_0
    invoke-static {v0}, Lcom/facebook/soloader/observer/ObserverHolder;->onSoSourceLoadLibraryEnd(Ljava/lang/Throwable;)V

    .line 1246
    return v1

    .line 1247
    :catchall_0
    move-exception v1

    .line 1248
    .local v1, "t":Ljava/lang/Throwable;
    move-object v0, v1

    .line 1249
    nop

    .end local v0    # "failure":Ljava/lang/Throwable;
    .end local p0    # "source":Lcom/facebook/soloader/SoSource;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "loadFlags":I
    .end local p3    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1251
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local v0    # "failure":Ljava/lang/Throwable;
    .restart local p0    # "source":Lcom/facebook/soloader/SoSource;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "loadFlags":I
    .restart local p3    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_1
    move-exception v1

    invoke-static {v0}, Lcom/facebook/soloader/observer/ObserverHolder;->onSoSourceLoadLibraryEnd(Ljava/lang/Throwable;)V

    .line 1252
    throw v1
.end method

.method private static loadLibraryOnAndroid(Ljava/lang/String;I)Z
    .locals 6
    .param p0, "shortName"    # Ljava/lang/String;
    .param p1, "loadFlags"    # I

    .line 847
    const/4 v0, 0x0

    .line 849
    .local v0, "failure":Ljava/lang/Throwable;
    sget-object v1, Lcom/facebook/soloader/SoLoader;->externalSoMapping:Lcom/facebook/soloader/ExternalSoMapping;

    if-eqz v1, :cond_0

    .line 850
    sget-object v1, Lcom/facebook/soloader/SoLoader;->externalSoMapping:Lcom/facebook/soloader/ExternalSoMapping;

    invoke-interface {v1, p0}, Lcom/facebook/soloader/ExternalSoMapping;->mapLibName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "mergedLibName":Ljava/lang/String;
    goto :goto_0

    .line 852
    .end local v1    # "mergedLibName":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lcom/facebook/soloader/MergedSoMapping;->mapLibName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 854
    .restart local v1    # "mergedLibName":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    move-object v2, p0

    .line 855
    .local v2, "soName":Ljava/lang/String;
    :goto_1
    invoke-static {p0, v1, p1}, Lcom/facebook/soloader/observer/ObserverHolder;->onLoadLibraryStart(Ljava/lang/String;Ljava/lang/String;I)V

    .line 856
    const/4 v3, 0x0

    .line 858
    .local v3, "wasLoaded":Z
    nop

    .line 860
    :try_start_0
    invoke-static {v2}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 859
    const/4 v5, 0x0

    invoke-static {v4, p0, v1, p1, v5}, Lcom/facebook/soloader/SoLoader;->loadLibraryBySoName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v4

    .line 861
    nop

    .line 866
    invoke-static {v0, v3}, Lcom/facebook/soloader/observer/ObserverHolder;->onLoadLibraryEnd(Ljava/lang/Throwable;Z)V

    .line 861
    return v3

    .line 862
    :catchall_0
    move-exception v4

    .line 863
    .local v4, "t":Ljava/lang/Throwable;
    move-object v0, v4

    .line 864
    nop

    .end local v0    # "failure":Ljava/lang/Throwable;
    .end local v1    # "mergedLibName":Ljava/lang/String;
    .end local v2    # "soName":Ljava/lang/String;
    .end local v3    # "wasLoaded":Z
    .end local p0    # "shortName":Ljava/lang/String;
    .end local p1    # "loadFlags":I
    :try_start_1
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 866
    .end local v4    # "t":Ljava/lang/Throwable;
    .restart local v0    # "failure":Ljava/lang/Throwable;
    .restart local v1    # "mergedLibName":Ljava/lang/String;
    .restart local v2    # "soName":Ljava/lang/String;
    .restart local v3    # "wasLoaded":Z
    .restart local p0    # "shortName":Ljava/lang/String;
    .restart local p1    # "loadFlags":I
    :catchall_1
    move-exception v4

    invoke-static {v0, v3}, Lcom/facebook/soloader/observer/ObserverHolder;->onLoadLibraryEnd(Ljava/lang/Throwable;Z)V

    .line 867
    throw v4
.end method

.method private static loadLibraryOnNonAndroid(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p0, "shortName"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 871
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    if-nez v0, :cond_4

    .line 872
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 874
    :try_start_0
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    if-nez v0, :cond_3

    .line 878
    const-string v0, "http://www.android.com/"

    const-string v1, "java.vendor.url"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->assertInitialized()V

    goto :goto_1

    .line 883
    :cond_0
    const-class v0, Lcom/facebook/soloader/SoLoader;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 884
    :try_start_1
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sLoadedLibraries:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 885
    .local v1, "needsLoad":Z
    if-eqz v1, :cond_2

    .line 886
    sget-object v2, Lcom/facebook/soloader/SoLoader;->sSystemLoadLibraryWrapper:Lcom/facebook/soloader/SystemLoadLibraryWrapper;

    if-eqz v2, :cond_1

    .line 887
    sget-object v2, Lcom/facebook/soloader/SoLoader;->sSystemLoadLibraryWrapper:Lcom/facebook/soloader/SystemLoadLibraryWrapper;

    invoke-interface {v2, p0}, Lcom/facebook/soloader/SystemLoadLibraryWrapper;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0

    .line 889
    :cond_1
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 892
    :cond_2
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 897
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 892
    return-object v2

    .line 893
    .end local v1    # "needsLoad":Z
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local p0    # "shortName":Ljava/lang/String;
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 897
    .restart local p0    # "shortName":Ljava/lang/String;
    :cond_3
    :goto_1
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 898
    goto :goto_2

    .line 897
    :catchall_1
    move-exception v0

    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 898
    throw v0

    .line 900
    :cond_4
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static makeLdLibraryPath()Ljava/lang/String;
    .locals 6

    .line 1323
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1325
    :try_start_0
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->assertInitialized()V

    .line 1326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1327
    .local v0, "pathElements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    .line 1328
    .local v1, "soSources":[Lcom/facebook/soloader/SoSource;
    if-eqz v1, :cond_0

    .line 1329
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 1330
    .local v4, "soSource":Lcom/facebook/soloader/SoSource;
    invoke-virtual {v4, v0}, Lcom/facebook/soloader/SoSource;->addToLdLibraryPath(Ljava/util/Collection;)V

    .line 1329
    .end local v4    # "soSource":Lcom/facebook/soloader/SoSource;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1333
    :cond_0
    const-string v2, ":"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 1334
    .local v2, "joinedPaths":Ljava/lang/String;
    const-string v3, "SoLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "makeLdLibraryPath final path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/facebook/soloader/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1335
    nop

    .line 1337
    sget-object v3, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1335
    return-object v2

    .line 1337
    .end local v0    # "pathElements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "soSources":[Lcom/facebook/soloader/SoSource;
    .end local v2    # "joinedPaths":Ljava/lang/String;
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1338
    throw v0
.end method

.method private static makePrepareFlags()I
    .locals 3

    .line 557
    const/4 v0, 0x0

    .line 560
    .local v0, "prepareFlags":I
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 562
    :try_start_0
    sget v1, Lcom/facebook/soloader/SoLoader;->sFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 563
    or-int/lit8 v0, v0, 0x1

    .line 565
    :cond_0
    sget v1, Lcom/facebook/soloader/SoLoader;->sFlags:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_1

    .line 566
    or-int/lit8 v0, v0, 0x4

    .line 568
    :cond_1
    sget v1, Lcom/facebook/soloader/SoLoader;->sFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_2

    .line 569
    or-int/lit8 v0, v0, 0x8

    .line 571
    :cond_2
    nop

    .line 573
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 571
    return v0

    .line 573
    :catchall_0
    move-exception v1

    sget-object v2, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 574
    throw v1
.end method

.method private static makeRecoveryFlags(I)I
    .locals 2
    .param p0, "flags"    # I

    .line 578
    const/4 v0, 0x0

    .line 579
    .local v0, "recoveryFlags":I
    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_0

    .line 580
    or-int/lit8 v0, v0, 0x1

    .line 582
    :cond_0
    return v0
.end method

.method public static prependSoSource(Lcom/facebook/soloader/SoSource;)V
    .locals 5
    .param p0, "extraSoSource"    # Lcom/facebook/soloader/SoSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1301
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1303
    :try_start_0
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->assertInitialized()V

    .line 1304
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->makePrepareFlags()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/soloader/SoSource;->prepare(I)V

    .line 1305
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    array-length v0, v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/facebook/soloader/SoSource;

    .line 1306
    .local v0, "newSoSources":[Lcom/facebook/soloader/SoSource;
    const/4 v2, 0x0

    aput-object p0, v0, v2

    .line 1307
    sget-object v3, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    sget-object v4, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    array-length v4, v4

    invoke-static {v3, v2, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1308
    sput-object v0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    .line 1309
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 1310
    const-string v1, "SoLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prepended to SO sources: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/soloader/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1312
    .end local v0    # "newSoSources":[Lcom/facebook/soloader/SoSource;
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1313
    nop

    .line 1314
    return-void

    .line 1312
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1313
    throw v0
.end method

.method private static recover(Ljava/lang/String;Ljava/lang/UnsatisfiedLinkError;Lcom/facebook/soloader/recovery/RecoveryStrategy;)Lcom/facebook/soloader/recovery/RecoveryStrategy;
    .locals 3
    .param p0, "soName"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/UnsatisfiedLinkError;
    .param p2, "recovery"    # Lcom/facebook/soloader/recovery/RecoveryStrategy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Running a recovery step for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " due to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoLoader"

    invoke-static {v1, v0}, Lcom/facebook/soloader/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 956
    if-nez p2, :cond_1

    .line 957
    :try_start_0
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->getRecoveryStrategy()Lcom/facebook/soloader/recovery/RecoveryStrategy;

    move-result-object v0

    move-object p2, v0

    .line 958
    if-eqz p2, :cond_0

    goto :goto_0

    .line 959
    :cond_0
    const-string v0, "No recovery strategy"

    invoke-static {v1, v0}, Lcom/facebook/soloader/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    nop

    .end local p0    # "soName":Ljava/lang/String;
    .end local p2    # "recovery":Lcom/facebook/soloader/recovery/RecoveryStrategy;
    throw p1

    .line 963
    .restart local p0    # "soName":Ljava/lang/String;
    .restart local p2    # "recovery":Lcom/facebook/soloader/recovery/RecoveryStrategy;
    :cond_1
    :goto_0
    invoke-static {p1, p2}, Lcom/facebook/soloader/SoLoader;->recoverLocked(Ljava/lang/UnsatisfiedLinkError;Lcom/facebook/soloader/recovery/RecoveryStrategy;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 964
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I
    :try_end_0
    .catch Lcom/facebook/soloader/NoBaseApkException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 965
    nop

    .line 980
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 965
    return-object p2

    .line 980
    :cond_2
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 981
    nop

    .line 984
    const-string v0, "Failed to recover"

    invoke-static {v1, v0}, Lcom/facebook/soloader/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    throw p1

    .line 980
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 973
    :catch_0
    move-exception v0

    .line 974
    .local v0, "recoveryException":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "Got an exception during recovery, will throw the initial error instead"

    invoke-static {v1, v2, v0}, Lcom/facebook/soloader/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 978
    nop

    .end local p0    # "soName":Ljava/lang/String;
    .end local p2    # "recovery":Lcom/facebook/soloader/recovery/RecoveryStrategy;
    throw p1

    .line 967
    .end local v0    # "recoveryException":Ljava/lang/Exception;
    .restart local p0    # "soName":Ljava/lang/String;
    .restart local p2    # "recovery":Lcom/facebook/soloader/recovery/RecoveryStrategy;
    :catch_1
    move-exception v0

    .line 971
    .local v0, "noBaseApkException":Lcom/facebook/soloader/NoBaseApkException;
    const-string v2, "Base APK not found during recovery"

    invoke-static {v1, v2, v0}, Lcom/facebook/soloader/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 972
    nop

    .end local p0    # "soName":Ljava/lang/String;
    .end local p1    # "e":Ljava/lang/UnsatisfiedLinkError;
    .end local p2    # "recovery":Lcom/facebook/soloader/recovery/RecoveryStrategy;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 980
    .end local v0    # "noBaseApkException":Lcom/facebook/soloader/NoBaseApkException;
    .restart local p0    # "soName":Ljava/lang/String;
    .restart local p1    # "e":Ljava/lang/UnsatisfiedLinkError;
    .restart local p2    # "recovery":Lcom/facebook/soloader/recovery/RecoveryStrategy;
    :goto_1
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 981
    throw v0
.end method

.method private static recoverLocked(Ljava/lang/UnsatisfiedLinkError;Lcom/facebook/soloader/recovery/RecoveryStrategy;)Z
    .locals 2
    .param p0, "e"    # Ljava/lang/UnsatisfiedLinkError;
    .param p1, "recovery"    # Lcom/facebook/soloader/recovery/RecoveryStrategy;

    .line 990
    const/4 v0, 0x0

    .line 991
    .local v0, "failure":Ljava/lang/Throwable;
    invoke-static {p1}, Lcom/facebook/soloader/observer/ObserverHolder;->onRecoveryStart(Lcom/facebook/soloader/recovery/RecoveryStrategy;)V

    .line 993
    :try_start_0
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    invoke-interface {p1, p0, v1}, Lcom/facebook/soloader/recovery/RecoveryStrategy;->recover(Ljava/lang/UnsatisfiedLinkError;[Lcom/facebook/soloader/SoSource;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 998
    invoke-static {v0}, Lcom/facebook/soloader/observer/ObserverHolder;->onRecoveryEnd(Ljava/lang/Throwable;)V

    .line 993
    return v1

    .line 994
    :catchall_0
    move-exception v1

    .line 995
    .local v1, "t":Ljava/lang/Throwable;
    move-object v0, v1

    .line 996
    nop

    .end local v0    # "failure":Ljava/lang/Throwable;
    .end local p0    # "e":Ljava/lang/UnsatisfiedLinkError;
    .end local p1    # "recovery":Lcom/facebook/soloader/recovery/RecoveryStrategy;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 998
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local v0    # "failure":Ljava/lang/Throwable;
    .restart local p0    # "e":Ljava/lang/UnsatisfiedLinkError;
    .restart local p1    # "recovery":Lcom/facebook/soloader/recovery/RecoveryStrategy;
    :catchall_1
    move-exception v1

    invoke-static {v0}, Lcom/facebook/soloader/observer/ObserverHolder;->onRecoveryEnd(Ljava/lang/Throwable;)V

    .line 999
    throw v1
.end method

.method public static setInTestMode()V
    .locals 3

    .line 640
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/facebook/soloader/SoSource;

    new-instance v1, Lcom/facebook/soloader/NoopSoSource;

    invoke-direct {v1}, Lcom/facebook/soloader/NoopSoSource;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader$TestOnlyUtils;->setSoSources([Lcom/facebook/soloader/SoSource;)V

    .line 641
    return-void
.end method

.method static declared-synchronized setRecoveryStrategyFactory(Lcom/facebook/soloader/recovery/RecoveryStrategyFactory;)V
    .locals 1
    .param p0, "factory"    # Lcom/facebook/soloader/recovery/RecoveryStrategyFactory;

    const-class v0, Lcom/facebook/soloader/SoLoader;

    monitor-enter v0

    .line 1008
    :try_start_0
    sput-object p0, Lcom/facebook/soloader/SoLoader;->sRecoveryStrategyFactory:Lcom/facebook/soloader/recovery/RecoveryStrategyFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1009
    monitor-exit v0

    return-void

    .line 1007
    .end local p0    # "factory":Lcom/facebook/soloader/recovery/RecoveryStrategyFactory;
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static setSystemLoadLibraryWrapper(Lcom/facebook/soloader/SystemLoadLibraryWrapper;)V
    .locals 0
    .param p0, "wrapper"    # Lcom/facebook/soloader/SystemLoadLibraryWrapper;

    .line 698
    sput-object p0, Lcom/facebook/soloader/SoLoader;->sSystemLoadLibraryWrapper:Lcom/facebook/soloader/SystemLoadLibraryWrapper;

    .line 699
    return-void
.end method

.method public static unpackLibraryAndDependencies(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "shortName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    .line 1166
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->assertInitialized()V

    .line 1168
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->unpackLibraryBySoName(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1169
    :catch_0
    move-exception v0

    .line 1170
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static unpackLibraryBySoName(Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p0, "soName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1256
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1258
    :try_start_0
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1259
    .local v3, "soSource":Lcom/facebook/soloader/SoSource;
    invoke-virtual {v3, p0}, Lcom/facebook/soloader/SoSource;->unpackLibrary(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1260
    .local v4, "unpacked":Ljava/io/File;
    if-eqz v4, :cond_0

    .line 1261
    nop

    .line 1265
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1261
    return-object v4

    .line 1258
    .end local v3    # "soSource":Lcom/facebook/soloader/SoSource;
    .end local v4    # "unpacked":Ljava/io/File;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1265
    :cond_1
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1266
    nop

    .line 1268
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1265
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1266
    throw v0
.end method

.method public static useDepsFile(Landroid/content/Context;ZZ)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "async"    # Z
    .param p2, "extractToDisk"    # Z

    .line 1391
    invoke-static {p0, p1, p2}, Lcom/facebook/soloader/NativeDeps;->useDepsFile(Landroid/content/Context;ZZ)Z

    move-result v0

    return v0
.end method
