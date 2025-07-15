.class public Lcom/facebook/soloader/recovery/CheckOnDiskStateDataApp;
.super Ljava/lang/Object;
.source "CheckOnDiskStateDataApp.java"

# interfaces
.implements Lcom/facebook/soloader/recovery/RecoveryStrategy;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/facebook/soloader/recovery/CheckOnDiskStateDataApp;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method


# virtual methods
.method public recover(Ljava/lang/UnsatisfiedLinkError;[Lcom/facebook/soloader/SoSource;)Z
    .locals 12
    .param p1, "error"    # Ljava/lang/UnsatisfiedLinkError;
    .param p2, "soSources"    # [Lcom/facebook/soloader/SoSource;

    .line 40
    instance-of v0, p1, Lcom/facebook/soloader/SoLoaderULError;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 42
    return v1

    .line 45
    :cond_0
    const-string v0, "Checking /data/app missing libraries."

    const-string v2, "SoLoader"

    invoke-static {v2, v0}, Lcom/facebook/soloader/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/facebook/soloader/recovery/CheckOnDiskStateDataApp;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    .local v0, "nativeLibStandardDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Native library directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exist, exiting /data/app recovery."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/soloader/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return v1

    .line 57
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v3, "missingLibs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v4, p2

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_6

    aget-object v6, p2, v5

    .line 59
    .local v6, "soSource":Lcom/facebook/soloader/SoSource;
    instance-of v7, v6, Lcom/facebook/soloader/BackupSoSource;

    if-nez v7, :cond_2

    .line 60
    nop

    .line 58
    .end local v6    # "soSource":Lcom/facebook/soloader/SoSource;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 62
    .restart local v6    # "soSource":Lcom/facebook/soloader/SoSource;
    :cond_2
    move-object v4, v6

    check-cast v4, Lcom/facebook/soloader/BackupSoSource;

    .line 64
    .local v4, "uss":Lcom/facebook/soloader/BackupSoSource;
    :try_start_0
    invoke-virtual {v4}, Lcom/facebook/soloader/BackupSoSource;->getDsosBaseApk()[Lcom/facebook/soloader/UnpackingSoSource$Dso;

    move-result-object v5

    .line 65
    .local v5, "dsosFromArchive":[Lcom/facebook/soloader/UnpackingSoSource$Dso;
    array-length v7, v5

    move v8, v1

    :goto_1
    if-ge v8, v7, :cond_4

    aget-object v9, v5, v8

    .line 66
    .local v9, "dso":Lcom/facebook/soloader/UnpackingSoSource$Dso;
    new-instance v10, Ljava/io/File;

    iget-object v11, v9, Lcom/facebook/soloader/UnpackingSoSource$Dso;->name:Ljava/lang/String;

    invoke-direct {v10, v0, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    .local v10, "soFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 68
    goto :goto_2

    .line 70
    :cond_3
    iget-object v11, v9, Lcom/facebook/soloader/UnpackingSoSource$Dso;->name:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .end local v9    # "dso":Lcom/facebook/soloader/UnpackingSoSource$Dso;
    .end local v10    # "soFile":Ljava/io/File;
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 73
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 74
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No libraries missing from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/facebook/soloader/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return v1

    .line 78
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Missing libraries from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 83
    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", will run prepare on tbe backup so source"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 78
    invoke-static {v2, v7}, Lcom/facebook/soloader/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v4, v1}, Lcom/facebook/soloader/BackupSoSource;->prepare(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_3

    .line 87
    .end local v5    # "dsosFromArchive":[Lcom/facebook/soloader/UnpackingSoSource$Dso;
    :catch_0
    move-exception v5

    .line 88
    .local v5, "e":Ljava/lang/Exception;
    const-string v7, "Encountered an exception while recovering from /data/app failure "

    invoke-static {v2, v7, v5}, Lcom/facebook/soloader/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    return v1

    .line 94
    .end local v4    # "uss":Lcom/facebook/soloader/BackupSoSource;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "soSource":Lcom/facebook/soloader/SoSource;
    :cond_6
    :goto_3
    array-length v4, p2

    :goto_4
    if-ge v1, v4, :cond_9

    aget-object v5, p2, v1

    .line 95
    .local v5, "soSource":Lcom/facebook/soloader/SoSource;
    instance-of v6, v5, Lcom/facebook/soloader/DirectorySoSource;

    if-nez v6, :cond_7

    .line 96
    goto :goto_5

    .line 98
    :cond_7
    instance-of v6, v5, Lcom/facebook/soloader/BackupSoSource;

    if-eqz v6, :cond_8

    .line 99
    goto :goto_5

    .line 101
    :cond_8
    move-object v6, v5

    check-cast v6, Lcom/facebook/soloader/DirectorySoSource;

    .line 104
    .local v6, "directorySoSource":Lcom/facebook/soloader/DirectorySoSource;
    invoke-virtual {v6}, Lcom/facebook/soloader/DirectorySoSource;->setExplicitDependencyResolution()V

    .line 94
    .end local v5    # "soSource":Lcom/facebook/soloader/SoSource;
    .end local v6    # "directorySoSource":Lcom/facebook/soloader/DirectorySoSource;
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 107
    :cond_9
    const-string v1, "Successfully recovered from /data/app disk failure."

    invoke-static {v2, v1}, Lcom/facebook/soloader/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const/4 v1, 0x1

    return v1
.end method
