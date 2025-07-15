.class public Lcom/facebook/soloader/recovery/CheckBaseApkExists;
.super Ljava/lang/Object;
.source "CheckBaseApkExists.java"

# interfaces
.implements Lcom/facebook/soloader/recovery/RecoveryStrategy;


# static fields
.field private static final TAG:Ljava/lang/String; = "soloader.recovery.CheckBaseApkExists"


# instance fields
.field private final mBaseApkPathHistory:Lcom/facebook/soloader/recovery/BaseApkPathHistory;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/soloader/recovery/BaseApkPathHistory;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pathHistory"    # Lcom/facebook/soloader/recovery/BaseApkPathHistory;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/facebook/soloader/recovery/CheckBaseApkExists;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/facebook/soloader/recovery/CheckBaseApkExists;->mBaseApkPathHistory:Lcom/facebook/soloader/recovery/BaseApkPathHistory;

    .line 39
    return-void
.end method


# virtual methods
.method public recover(Ljava/lang/UnsatisfiedLinkError;[Lcom/facebook/soloader/SoSource;)Z
    .locals 4
    .param p1, "error"    # Ljava/lang/UnsatisfiedLinkError;
    .param p2, "soSources"    # [Lcom/facebook/soloader/SoSource;

    .line 43
    iget-object v0, p0, Lcom/facebook/soloader/recovery/CheckBaseApkExists;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 45
    .local v0, "baseApkPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Base apk exists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "soloader.recovery.CheckBaseApkExists"

    invoke-static {v2, v1}, Lcom/facebook/soloader/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const/4 v1, 0x0

    return v1

    .line 46
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Base apk does not exist: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 48
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/facebook/soloader/recovery/CheckBaseApkExists;->mBaseApkPathHistory:Lcom/facebook/soloader/recovery/BaseApkPathHistory;

    invoke-virtual {v2, v1}, Lcom/facebook/soloader/recovery/BaseApkPathHistory;->report(Ljava/lang/StringBuilder;)V

    .line 49
    new-instance v2, Lcom/facebook/soloader/NoBaseApkException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/facebook/soloader/NoBaseApkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
