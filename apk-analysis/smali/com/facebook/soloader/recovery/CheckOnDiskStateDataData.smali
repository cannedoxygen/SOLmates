.class public Lcom/facebook/soloader/recovery/CheckOnDiskStateDataData;
.super Ljava/lang/Object;
.source "CheckOnDiskStateDataData.java"

# interfaces
.implements Lcom/facebook/soloader/recovery/RecoveryStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public recover(Ljava/lang/UnsatisfiedLinkError;[Lcom/facebook/soloader/SoSource;)Z
    .locals 12
    .param p1, "error"    # Ljava/lang/UnsatisfiedLinkError;
    .param p2, "soSources"    # [Lcom/facebook/soloader/SoSource;

    .line 30
    instance-of v0, p1, Lcom/facebook/soloader/SoLoaderULError;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 32
    return v1

    .line 35
    :cond_0
    const-string v0, "Checking /data/data missing libraries."

    const-string v2, "SoLoader"

    invoke-static {v2, v0}, Lcom/facebook/soloader/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, "recovered":Z
    array-length v3, p2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v5, p2, v4

    .line 39
    .local v5, "soSource":Lcom/facebook/soloader/SoSource;
    instance-of v6, v5, Lcom/facebook/soloader/UnpackingSoSource;

    if-nez v6, :cond_1

    .line 40
    goto :goto_3

    .line 42
    :cond_1
    instance-of v6, v5, Lcom/facebook/soloader/BackupSoSource;

    if-eqz v6, :cond_2

    .line 43
    goto :goto_3

    .line 45
    :cond_2
    move-object v6, v5

    check-cast v6, Lcom/facebook/soloader/UnpackingSoSource;

    .line 47
    .local v6, "uss":Lcom/facebook/soloader/UnpackingSoSource;
    :try_start_0
    invoke-virtual {v6}, Lcom/facebook/soloader/UnpackingSoSource;->getDsosBaseApk()[Lcom/facebook/soloader/UnpackingSoSource$Dso;

    move-result-object v7

    .line 48
    .local v7, "dsosFromArchive":[Lcom/facebook/soloader/UnpackingSoSource$Dso;
    array-length v8, v7

    move v9, v1

    :goto_1
    if-ge v9, v8, :cond_4

    aget-object v10, v7, v9

    .line 49
    .local v10, "dso":Lcom/facebook/soloader/UnpackingSoSource$Dso;
    iget-object v11, v10, Lcom/facebook/soloader/UnpackingSoSource$Dso;->name:Ljava/lang/String;

    invoke-virtual {v6, v11}, Lcom/facebook/soloader/UnpackingSoSource;->getSoFileByName(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    if-nez v11, :cond_3

    .line 50
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v10, Lcom/facebook/soloader/UnpackingSoSource$Dso;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 52
    invoke-virtual {v6}, Lcom/facebook/soloader/UnpackingSoSource;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", will force prepare."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 50
    invoke-static {v2, v8}, Lcom/facebook/soloader/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Lcom/facebook/soloader/UnpackingSoSource;->prepare(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    const/4 v0, 0x1

    .line 55
    goto :goto_2

    .line 48
    .end local v10    # "dso":Lcom/facebook/soloader/UnpackingSoSource$Dso;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 62
    .end local v7    # "dsosFromArchive":[Lcom/facebook/soloader/UnpackingSoSource$Dso;
    :cond_4
    :goto_2
    nop

    .line 38
    .end local v5    # "soSource":Lcom/facebook/soloader/SoSource;
    .end local v6    # "uss":Lcom/facebook/soloader/UnpackingSoSource;
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 58
    .restart local v5    # "soSource":Lcom/facebook/soloader/SoSource;
    .restart local v6    # "uss":Lcom/facebook/soloader/UnpackingSoSource;
    :catch_0
    move-exception v3

    .line 59
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "Encountered an exception while recovering from /data/data failure "

    invoke-static {v2, v4, v3}, Lcom/facebook/soloader/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    return v1

    .line 65
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "soSource":Lcom/facebook/soloader/SoSource;
    .end local v6    # "uss":Lcom/facebook/soloader/UnpackingSoSource;
    :cond_5
    if-eqz v0, :cond_6

    .line 66
    const-string v1, "Successfully recovered from /data/data disk failure."

    invoke-static {v2, v1}, Lcom/facebook/soloader/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const/4 v1, 0x1

    return v1

    .line 70
    :cond_6
    const-string v3, "No libraries missing from unpacking so paths while recovering /data/data failure"

    invoke-static {v2, v3}, Lcom/facebook/soloader/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return v1
.end method
