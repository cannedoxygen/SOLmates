.class public Lcom/facebook/soloader/SoFileLoaderImpl;
.super Ljava/lang/Object;
.source "SoFileLoaderImpl.java"

# interfaces
.implements Lcom/facebook/soloader/SoFileLoader;


# static fields
.field private static final TAG:Ljava/lang/String; = "SoFileLoaderImpl"


# instance fields
.field private final mLocalLdLibraryPath:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mLocalLdLibraryPathNoZips:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mNativeLoadRuntimeMethod:Ljava/lang/reflect/Method;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mRuntime:Ljava/lang/Runtime;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    nop

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/soloader/SoFileLoaderImpl;->mRuntime:Ljava/lang/Runtime;

    .line 42
    iput-object v0, p0, Lcom/facebook/soloader/SoFileLoaderImpl;->mNativeLoadRuntimeMethod:Ljava/lang/reflect/Method;

    .line 43
    iput-object v0, p0, Lcom/facebook/soloader/SoFileLoaderImpl;->mLocalLdLibraryPath:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/facebook/soloader/SoFileLoaderImpl;->mLocalLdLibraryPathNoZips:Ljava/lang/String;

    .line 45
    return-void
.end method

.method private getLibHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "libPath"    # Ljava/lang/String;

    .line 106
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    .local v0, "libFile":Ljava/io/File;
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 108
    .local v1, "digest":Ljava/security/MessageDigest;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .local v2, "libInStream":Ljava/io/InputStream;
    const/16 v3, 0x1000

    :try_start_1
    new-array v3, v3, [B

    .line 111
    .local v3, "buffer":[B
    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "bytesRead":I
    if-lez v4, :cond_0

    .line 112
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 114
    :cond_0
    const-string v4, "%32x"

    new-instance v6, Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v6, v8, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    .end local v3    # "buffer":[B
    .end local v5    # "bytesRead":I
    .local v4, "digestStr":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0

    .line 118
    .end local v0    # "libFile":Ljava/io/File;
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "libInStream":Ljava/io/InputStream;
    goto :goto_3

    .line 108
    .end local v4    # "digestStr":Ljava/lang/String;
    .restart local v0    # "libFile":Ljava/io/File;
    .restart local v1    # "digest":Ljava/security/MessageDigest;
    .restart local v2    # "libInStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "libPath":Ljava/lang/String;
    :goto_1
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_0

    .line 116
    .end local v0    # "libFile":Ljava/io/File;
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "libInStream":Ljava/io/InputStream;
    .restart local p1    # "libPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    .line 119
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "digestStr":Ljava/lang/String;
    :goto_3
    return-object v4
.end method


# virtual methods
.method public load(Ljava/lang/String;I)V
    .locals 7
    .param p1, "pathToSoFile"    # Ljava/lang/String;
    .param p2, "loadFlags"    # I

    .line 61
    iget-object v0, p0, Lcom/facebook/soloader/SoFileLoaderImpl;->mNativeLoadRuntimeMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 64
    invoke-static {p1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 65
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x0

    .line 69
    .local v0, "errorMessage":Ljava/lang/String;
    and-int/lit8 v1, p2, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 70
    .local v1, "inZip":Z
    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/facebook/soloader/SoFileLoaderImpl;->mLocalLdLibraryPath:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/facebook/soloader/SoFileLoaderImpl;->mLocalLdLibraryPathNoZips:Ljava/lang/String;

    .line 74
    .local v2, "ldLibraryPath":Ljava/lang/String;
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/facebook/soloader/SoFileLoaderImpl;->mRuntime:Ljava/lang/Runtime;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 75
    :try_start_1
    iget-object v4, p0, Lcom/facebook/soloader/SoFileLoaderImpl;->mNativeLoadRuntimeMethod:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/facebook/soloader/SoFileLoaderImpl;->mRuntime:Ljava/lang/Runtime;

    const-class v6, Lcom/facebook/soloader/SoLoader;

    .line 78
    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    filled-new-array {p1, v6, v2}, [Ljava/lang/Object;

    move-result-object v6

    .line 77
    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v0, v4

    .line 79
    if-nez v0, :cond_4

    .line 83
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    if-eqz v0, :cond_3

    .line 90
    const-string v3, "SoFileLoaderImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error when loading library: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", library hash is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 95
    invoke-direct {p0, p1}, Lcom/facebook/soloader/SoFileLoaderImpl;->getLibHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", LD_LIBRARY_PATH is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 90
    invoke-static {v3, v4}, Lcom/facebook/soloader/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_3
    return-void

    .line 80
    :cond_4
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nativeLoad() returned error for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 81
    new-instance v4, Lcom/facebook/soloader/SoLoaderULError;

    invoke-direct {v4, p1, v0}, Lcom/facebook/soloader/SoLoaderULError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "errorMessage":Ljava/lang/String;
    .end local v1    # "inZip":Z
    .end local v2    # "ldLibraryPath":Ljava/lang/String;
    .end local p1    # "pathToSoFile":Ljava/lang/String;
    .end local p2    # "loadFlags":I
    throw v4

    .line 83
    .restart local v0    # "errorMessage":Ljava/lang/String;
    .restart local v1    # "inZip":Z
    .restart local v2    # "ldLibraryPath":Ljava/lang/String;
    .restart local p1    # "pathToSoFile":Ljava/lang/String;
    .restart local p2    # "loadFlags":I
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "errorMessage":Ljava/lang/String;
    .end local v1    # "inZip":Z
    .end local v2    # "ldLibraryPath":Ljava/lang/String;
    .end local p1    # "pathToSoFile":Ljava/lang/String;
    .end local p2    # "loadFlags":I
    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 89
    .restart local v0    # "errorMessage":Ljava/lang/String;
    .restart local v1    # "inZip":Z
    .restart local v2    # "ldLibraryPath":Ljava/lang/String;
    .restart local p1    # "pathToSoFile":Ljava/lang/String;
    .restart local p2    # "loadFlags":I
    :catchall_1
    move-exception v3

    goto :goto_3

    .line 84
    :catch_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_2

    :catch_2
    move-exception v3

    .line 86
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nativeLoad() error during invocation for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 87
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "errorMessage":Ljava/lang/String;
    .end local v1    # "inZip":Z
    .end local v2    # "ldLibraryPath":Ljava/lang/String;
    .end local p1    # "pathToSoFile":Ljava/lang/String;
    .end local p2    # "loadFlags":I
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 89
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "errorMessage":Ljava/lang/String;
    .restart local v1    # "inZip":Z
    .restart local v2    # "ldLibraryPath":Ljava/lang/String;
    .restart local p1    # "pathToSoFile":Ljava/lang/String;
    .restart local p2    # "loadFlags":I
    :goto_3
    if-eqz v0, :cond_5

    .line 90
    const-string v4, "SoFileLoaderImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error when loading library: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", library hash is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 95
    invoke-direct {p0, p1}, Lcom/facebook/soloader/SoFileLoaderImpl;->getLibHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", LD_LIBRARY_PATH is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 90
    invoke-static {v4, v5}, Lcom/facebook/soloader/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_5
    throw v3
.end method

.method public loadBytes(Ljava/lang/String;Lcom/facebook/soloader/ElfByteChannel;I)V
    .locals 1
    .param p1, "pathName"    # Ljava/lang/String;
    .param p2, "bytes"    # Lcom/facebook/soloader/ElfByteChannel;
    .param p3, "loadFlags"    # I

    .line 56
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
