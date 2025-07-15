.class public Lcom/facebook/soloader/DirectSplitSoSource;
.super Lcom/facebook/soloader/SoSource;
.source "DirectSplitSoSource.java"


# instance fields
.field protected mLibs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected mManifest:Lcom/facebook/soloader/Manifest;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected final mSplitName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "splitName"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Lcom/facebook/soloader/SoSource;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/soloader/DirectSplitSoSource;->mManifest:Lcom/facebook/soloader/Manifest;

    .line 33
    iput-object v0, p0, Lcom/facebook/soloader/DirectSplitSoSource;->mLibs:Ljava/util/Set;

    .line 36
    iput-object p1, p0, Lcom/facebook/soloader/DirectSplitSoSource;->mSplitName:Ljava/lang/String;

    .line 37
    return-void
.end method

.method static getSplitPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "splitName"    # Ljava/lang/String;

    .line 108
    const-string v0, "base"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    return-object v0

    .line 112
    :cond_0
    nop

    .line 116
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 117
    .local v0, "splits":[Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "split_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "fileName":Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 123
    .local v4, "split":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 124
    return-object v4

    .line 122
    .end local v4    # "split":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 128
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " split"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 118
    .end local v1    # "fileName":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No splits avaiable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getLibraryDependencies(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "soName"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/facebook/soloader/DirectSplitSoSource;->mLibs:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/facebook/soloader/DirectSplitSoSource;->mLibs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 144
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 135
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "prepare not called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLibraryPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "soName"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/facebook/soloader/DirectSplitSoSource;->mLibs:Ljava/util/Set;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/soloader/DirectSplitSoSource;->mManifest:Lcom/facebook/soloader/Manifest;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/facebook/soloader/DirectSplitSoSource;->mLibs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/facebook/soloader/DirectSplitSoSource;->mSplitName:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/soloader/DirectSplitSoSource;->getSplitPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!/lib/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/soloader/DirectSplitSoSource;->mManifest:Lcom/facebook/soloader/Manifest;

    iget-object v1, v1, Lcom/facebook/soloader/Manifest;->arch:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 104
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 97
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "prepare not called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getManifest()Lcom/facebook/soloader/Manifest;
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/facebook/soloader/DirectSplitSoSource;->mManifest:Lcom/facebook/soloader/Manifest;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/facebook/soloader/DirectSplitSoSource;->mManifest:Lcom/facebook/soloader/Manifest;

    return-object v0

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "prepare not called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 157
    const-string v0, "DirectSplitSoSource"

    return-object v0
.end method

.method protected getSoFileByName(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "soName"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 89
    invoke-virtual {p0, p1}, Lcom/facebook/soloader/DirectSplitSoSource;->getLibraryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v1
.end method

.method public getSoSourceAbis()[Ljava/lang/String;
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/facebook/soloader/DirectSplitSoSource;->mManifest:Lcom/facebook/soloader/Manifest;

    if-eqz v0, :cond_0

    .line 152
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/soloader/DirectSplitSoSource;->mManifest:Lcom/facebook/soloader/Manifest;

    iget-object v1, v1, Lcom/facebook/soloader/Manifest;->arch:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0

    .line 150
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "prepare not called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public loadLibrary(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)I
    .locals 2
    .param p1, "soName"    # Ljava/lang/String;
    .param p2, "loadFlags"    # I
    .param p3, "threadPolicy"    # Landroid/os/StrictMode$ThreadPolicy;

    .line 58
    iget-object v0, p0, Lcom/facebook/soloader/DirectSplitSoSource;->mLibs:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/facebook/soloader/DirectSplitSoSource;->mLibs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/facebook/soloader/DirectSplitSoSource;->loadLibraryImpl(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 66
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 59
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "prepare not called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected loadLibraryImpl(Ljava/lang/String;I)I
    .locals 2
    .param p1, "soName"    # Ljava/lang/String;
    .param p2, "loadFlags"    # I

    .line 71
    invoke-virtual {p0, p1}, Lcom/facebook/soloader/DirectSplitSoSource;->getLibraryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 76
    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 77
    const/4 v1, 0x1

    return v1

    .line 73
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
.end method

.method protected prepare(I)V
    .locals 3
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sApplicationContext:Landroid/content/Context;

    .line 49
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/facebook/soloader/DirectSplitSoSource;->mSplitName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".soloader-manifest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 50
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0}, Lcom/facebook/soloader/Manifest;->read(Ljava/io/InputStream;)Lcom/facebook/soloader/Manifest;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/soloader/DirectSplitSoSource;->mManifest:Lcom/facebook/soloader/Manifest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 53
    .end local v0    # "is":Ljava/io/InputStream;
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/facebook/soloader/DirectSplitSoSource;->mManifest:Lcom/facebook/soloader/Manifest;

    iget-object v1, v1, Lcom/facebook/soloader/Manifest;->libs:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/facebook/soloader/DirectSplitSoSource;->mLibs:Ljava/util/Set;

    .line 54
    return-void

    .line 48
    .restart local v0    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public unpackLibrary(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "soName"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 83
    invoke-virtual {p0, p1}, Lcom/facebook/soloader/DirectSplitSoSource;->getSoFileByName(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
