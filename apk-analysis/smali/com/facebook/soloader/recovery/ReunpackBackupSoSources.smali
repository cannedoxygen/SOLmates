.class public Lcom/facebook/soloader/recovery/ReunpackBackupSoSources;
.super Ljava/lang/Object;
.source "ReunpackBackupSoSources.java"

# interfaces
.implements Lcom/facebook/soloader/recovery/RecoveryStrategy;


# instance fields
.field private mRecoveryFlags:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/soloader/recovery/ReunpackBackupSoSources;-><init>(I)V

    .line 41
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "recoveryFlags"    # I

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/facebook/soloader/recovery/ReunpackBackupSoSources;->mRecoveryFlags:I

    .line 45
    return-void
.end method

.method private lazyPrepareBackupSoSource([Lcom/facebook/soloader/SoSource;Ljava/lang/String;)Z
    .locals 8
    .param p1, "soSources"    # [Lcom/facebook/soloader/SoSource;
    .param p2, "soName"    # Ljava/lang/String;

    .line 104
    const-string v0, "SoLoader"

    const/4 v1, 0x0

    .line 105
    .local v1, "recovered":Z
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p1, v4

    .line 106
    .local v5, "soSource":Lcom/facebook/soloader/SoSource;
    instance-of v6, v5, Lcom/facebook/soloader/BackupSoSource;

    if-nez v6, :cond_0

    .line 108
    nop

    .line 105
    .end local v5    # "soSource":Lcom/facebook/soloader/SoSource;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 110
    .restart local v5    # "soSource":Lcom/facebook/soloader/SoSource;
    :cond_0
    move-object v2, v5

    check-cast v2, Lcom/facebook/soloader/BackupSoSource;

    .line 112
    .local v2, "backupSoSource":Lcom/facebook/soloader/BackupSoSource;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Preparing BackupSoSource for the first time "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 114
    invoke-virtual {v2}, Lcom/facebook/soloader/BackupSoSource;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 112
    invoke-static {v0, v4}, Lcom/facebook/soloader/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v2, v3}, Lcom/facebook/soloader/BackupSoSource;->prepare(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    const/4 v1, 0x1

    .line 117
    goto :goto_1

    .line 118
    :catch_0
    move-exception v4

    .line 122
    .local v4, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Encountered an exception while reunpacking BackupSoSource "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 125
    invoke-virtual {v2}, Lcom/facebook/soloader/BackupSoSource;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for library "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 122
    invoke-static {v0, v6, v4}, Lcom/facebook/soloader/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    return v3

    .line 134
    .end local v2    # "backupSoSource":Lcom/facebook/soloader/BackupSoSource;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "soSource":Lcom/facebook/soloader/SoSource;
    :cond_1
    :goto_1
    if-eqz v1, :cond_5

    .line 135
    array-length v0, p1

    :goto_2
    if-ge v3, v0, :cond_4

    aget-object v2, p1, v3

    .line 136
    .local v2, "soSource":Lcom/facebook/soloader/SoSource;
    instance-of v4, v2, Lcom/facebook/soloader/DirectorySoSource;

    if-nez v4, :cond_2

    .line 137
    goto :goto_3

    .line 139
    :cond_2
    instance-of v4, v2, Lcom/facebook/soloader/BackupSoSource;

    if-eqz v4, :cond_3

    .line 140
    goto :goto_3

    .line 142
    :cond_3
    move-object v4, v2

    check-cast v4, Lcom/facebook/soloader/DirectorySoSource;

    .line 145
    .local v4, "directorySoSource":Lcom/facebook/soloader/DirectorySoSource;
    invoke-virtual {v4}, Lcom/facebook/soloader/DirectorySoSource;->setExplicitDependencyResolution()V

    .line 135
    .end local v2    # "soSource":Lcom/facebook/soloader/SoSource;
    .end local v4    # "directorySoSource":Lcom/facebook/soloader/DirectorySoSource;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 147
    :cond_4
    const/4 v0, 0x1

    return v0

    .line 150
    :cond_5
    return v3
.end method

.method private logRecovery(Ljava/lang/Error;Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/Error;
    .param p2, "soName"    # Ljava/lang/String;

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reunpacking BackupSoSources due to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", retrying for specific library "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoLoader"

    invoke-static {v1, v0}, Lcom/facebook/soloader/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method private recoverDSONotFoundError([Lcom/facebook/soloader/SoSource;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "soSources"    # [Lcom/facebook/soloader/SoSource;
    .param p2, "soName"    # Ljava/lang/String;
    .param p3, "prepareFlags"    # I

    .line 86
    const/4 v0, 0x0

    :try_start_0
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 87
    .local v3, "soSource":Lcom/facebook/soloader/SoSource;
    instance-of v4, v3, Lcom/facebook/soloader/BackupSoSource;

    if-nez v4, :cond_0

    .line 88
    goto :goto_1

    .line 90
    :cond_0
    move-object v4, v3

    check-cast v4, Lcom/facebook/soloader/BackupSoSource;

    .line 92
    .local v4, "uss":Lcom/facebook/soloader/BackupSoSource;
    invoke-virtual {v4, p2, p3}, Lcom/facebook/soloader/BackupSoSource;->peekAndPrepareSoSource(Ljava/lang/String;I)Z

    move-result v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_1

    .line 93
    const/4 v0, 0x1

    return v0

    .line 86
    .end local v3    # "soSource":Lcom/facebook/soloader/SoSource;
    .end local v4    # "uss":Lcom/facebook/soloader/BackupSoSource;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    :cond_2
    return v0

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, "ioException":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to run recovery for backup so source due to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SoLoader"

    invoke-static {v3, v2}, Lcom/facebook/soloader/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return v0
.end method


# virtual methods
.method public recover(Ljava/lang/UnsatisfiedLinkError;[Lcom/facebook/soloader/SoSource;)Z
    .locals 6
    .param p1, "error"    # Ljava/lang/UnsatisfiedLinkError;
    .param p2, "soSources"    # [Lcom/facebook/soloader/SoSource;

    .line 49
    instance-of v0, p1, Lcom/facebook/soloader/SoLoaderULError;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 51
    return v1

    .line 53
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/facebook/soloader/SoLoaderULError;

    .line 54
    .local v0, "err":Lcom/facebook/soloader/SoLoaderULError;
    invoke-virtual {v0}, Lcom/facebook/soloader/SoLoaderULError;->getSoName()Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "soName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/facebook/soloader/SoLoaderULError;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "message":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 58
    const-string v4, "SoLoader"

    const-string v5, "No so name provided in ULE, cannot recover"

    invoke-static {v4, v5}, Lcom/facebook/soloader/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return v1

    .line 62
    :cond_1
    instance-of v4, v0, Lcom/facebook/soloader/SoLoaderDSONotFoundError;

    if-eqz v4, :cond_3

    .line 63
    iget v4, p0, Lcom/facebook/soloader/recovery/ReunpackBackupSoSources;->mRecoveryFlags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    .line 68
    invoke-direct {p0, v0, v2}, Lcom/facebook/soloader/recovery/ReunpackBackupSoSources;->logRecovery(Ljava/lang/Error;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0, p2, v2, v1}, Lcom/facebook/soloader/recovery/ReunpackBackupSoSources;->recoverDSONotFoundError([Lcom/facebook/soloader/SoSource;Ljava/lang/String;I)Z

    move-result v1

    return v1

    .line 72
    :cond_2
    return v1

    .line 74
    :cond_3
    if-eqz v3, :cond_5

    const-string v4, "/app/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "/mnt/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    .line 79
    :cond_4
    invoke-direct {p0, v0, v2}, Lcom/facebook/soloader/recovery/ReunpackBackupSoSources;->logRecovery(Ljava/lang/Error;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0, p2, v2}, Lcom/facebook/soloader/recovery/ReunpackBackupSoSources;->lazyPrepareBackupSoSource([Lcom/facebook/soloader/SoSource;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 77
    :cond_5
    :goto_0
    return v1
.end method
