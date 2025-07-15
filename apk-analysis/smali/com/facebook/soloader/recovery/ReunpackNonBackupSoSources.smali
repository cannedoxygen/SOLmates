.class public Lcom/facebook/soloader/recovery/ReunpackNonBackupSoSources;
.super Ljava/lang/Object;
.source "ReunpackNonBackupSoSources.java"

# interfaces
.implements Lcom/facebook/soloader/recovery/RecoveryStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public recover(Ljava/lang/UnsatisfiedLinkError;[Lcom/facebook/soloader/SoSource;)Z
    .locals 10
    .param p1, "error"    # Ljava/lang/UnsatisfiedLinkError;
    .param p2, "soSources"    # [Lcom/facebook/soloader/SoSource;

    .line 35
    instance-of v0, p1, Lcom/facebook/soloader/SoLoaderULError;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 37
    return v1

    .line 40
    :cond_0
    instance-of v0, p1, Lcom/facebook/soloader/SoLoaderDSONotFoundError;

    if-eqz v0, :cond_1

    .line 42
    return v1

    .line 45
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/facebook/soloader/SoLoaderULError;

    .line 46
    .local v0, "err":Lcom/facebook/soloader/SoLoaderULError;
    invoke-virtual {v0}, Lcom/facebook/soloader/SoLoaderULError;->getSoName()Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "soName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reunpacking NonApk UnpackingSoSources due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 52
    if-nez v2, :cond_2

    const-string v4, ""

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", retrying for specific library "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 48
    const-string v4, "SoLoader"

    invoke-static {v4, v3}, Lcom/facebook/soloader/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    array-length v3, p2

    move v5, v1

    :goto_1
    if-ge v5, v3, :cond_5

    aget-object v6, p2, v5

    .line 55
    .local v6, "soSource":Lcom/facebook/soloader/SoSource;
    instance-of v7, v6, Lcom/facebook/soloader/UnpackingSoSource;

    if-nez v7, :cond_3

    .line 56
    goto :goto_2

    .line 58
    :cond_3
    move-object v7, v6

    check-cast v7, Lcom/facebook/soloader/UnpackingSoSource;

    .line 59
    .local v7, "uss":Lcom/facebook/soloader/UnpackingSoSource;
    instance-of v8, v7, Lcom/facebook/soloader/BackupSoSource;

    if-eqz v8, :cond_4

    .line 61
    goto :goto_2

    .line 64
    :cond_4
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Runpacking "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lcom/facebook/soloader/UnpackingSoSource;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/facebook/soloader/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/facebook/soloader/UnpackingSoSource;->prepare(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    nop

    .line 54
    .end local v6    # "soSource":Lcom/facebook/soloader/SoSource;
    .end local v7    # "uss":Lcom/facebook/soloader/UnpackingSoSource;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 66
    .restart local v6    # "soSource":Lcom/facebook/soloader/SoSource;
    .restart local v7    # "uss":Lcom/facebook/soloader/UnpackingSoSource;
    :catch_0
    move-exception v3

    .line 70
    .local v3, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Encountered an exception while reunpacking "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 73
    invoke-virtual {v7}, Lcom/facebook/soloader/UnpackingSoSource;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " for library "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ": "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 70
    invoke-static {v4, v5, v3}, Lcom/facebook/soloader/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    return v1

    .line 82
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "soSource":Lcom/facebook/soloader/SoSource;
    .end local v7    # "uss":Lcom/facebook/soloader/UnpackingSoSource;
    :cond_5
    const/4 v1, 0x1

    return v1
.end method
