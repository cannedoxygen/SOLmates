.class public Lcom/facebook/soloader/recovery/BaseApkPathHistory;
.super Ljava/lang/Object;
.source "BaseApkPathHistory.java"


# instance fields
.field private mCounter:I

.field private final mPaths:[Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "length"    # I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-lez p1, :cond_0

    .line 38
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/soloader/recovery/BaseApkPathHistory;->mPaths:[Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/soloader/recovery/BaseApkPathHistory;->mCounter:I

    .line 40
    return-void

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public declared-synchronized recordPathIfNew(Ljava/lang/String;)Z
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    monitor-enter p0

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/facebook/soloader/recovery/BaseApkPathHistory;->mPaths:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 44
    .local v4, "oldPath":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    .line 45
    monitor-exit p0

    return v2

    .line 43
    .end local v4    # "oldPath":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 49
    .end local p0    # "this":Lcom/facebook/soloader/recovery/BaseApkPathHistory;
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Recording new base apk path: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 50
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/facebook/soloader/recovery/BaseApkPathHistory;->report(Ljava/lang/StringBuilder;)V

    .line 51
    const-string v1, "SoLoader"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/soloader/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/facebook/soloader/recovery/BaseApkPathHistory;->mPaths:[Ljava/lang/String;

    iget v2, p0, Lcom/facebook/soloader/recovery/BaseApkPathHistory;->mCounter:I

    iget-object v3, p0, Lcom/facebook/soloader/recovery/BaseApkPathHistory;->mPaths:[Ljava/lang/String;

    array-length v3, v3

    rem-int/2addr v2, v3

    aput-object p1, v1, v2

    .line 54
    iget v1, p0, Lcom/facebook/soloader/recovery/BaseApkPathHistory;->mCounter:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/facebook/soloader/recovery/BaseApkPathHistory;->mCounter:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    monitor-exit p0

    return v2

    .line 42
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local p1    # "path":Ljava/lang/String;
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public report()Ljava/lang/String;
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/facebook/soloader/recovery/BaseApkPathHistory;->report(Ljava/lang/StringBuilder;)V

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized report(Ljava/lang/StringBuilder;)V
    .locals 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    monitor-enter p0

    .line 59
    :try_start_0
    const-string v0, "Previously recorded "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/facebook/soloader/recovery/BaseApkPathHistory;->mCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " base apk paths."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget v0, p0, Lcom/facebook/soloader/recovery/BaseApkPathHistory;->mCounter:I

    if-lez v0, :cond_0

    .line 61
    const-string v0, " Most recent ones:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .end local p0    # "this":Lcom/facebook/soloader/recovery/BaseApkPathHistory;
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/facebook/soloader/recovery/BaseApkPathHistory;->mPaths:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 64
    iget v1, p0, Lcom/facebook/soloader/recovery/BaseApkPathHistory;->mCounter:I

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 65
    .local v1, "index":I
    if-ltz v1, :cond_2

    .line 66
    iget-object v2, p0, Lcom/facebook/soloader/recovery/BaseApkPathHistory;->mPaths:[Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/soloader/recovery/BaseApkPathHistory;->mPaths:[Ljava/lang/String;

    array-length v3, v3

    rem-int v3, v1, v3

    aget-object v2, v2, v3

    .line 67
    .local v2, "path":Ljava/lang/String;
    const-string v3, "\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 68
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 70
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "exists"

    goto :goto_1

    :cond_1
    const-string v4, "does not exist"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    .line 71
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .end local v1    # "index":I
    .end local v2    # "path":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    .end local v0    # "i":I
    :cond_3
    monitor-exit p0

    return-void

    .line 58
    .end local p1    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized size()I
    .locals 1

    monitor-enter p0

    .line 83
    :try_start_0
    iget v0, p0, Lcom/facebook/soloader/recovery/BaseApkPathHistory;->mCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 83
    .end local p0    # "this":Lcom/facebook/soloader/recovery/BaseApkPathHistory;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
