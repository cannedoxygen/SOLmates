.class public final Lcom/facebook/imageformat/ImageFormatChecker$Companion;
.super Ljava/lang/Object;
.source "ImageFormatChecker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imageformat/ImageFormatChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0007J\u0012\u0010\t\u001a\u00020\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J\u0010\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0007J \u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u0014H\u0002R\u001b\u0010\u0003\u001a\u00020\u00048GX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/facebook/imageformat/ImageFormatChecker$Companion;",
        "",
        "()V",
        "instance",
        "Lcom/facebook/imageformat/ImageFormatChecker;",
        "getInstance",
        "()Lcom/facebook/imageformat/ImageFormatChecker;",
        "instance$delegate",
        "Lkotlin/Lazy;",
        "getImageFormat",
        "Lcom/facebook/imageformat/ImageFormat;",
        "is",
        "Ljava/io/InputStream;",
        "filename",
        "",
        "getImageFormat_WrapIOException",
        "readHeaderFromStream",
        "",
        "maxHeaderLength",
        "imageHeaderBytes",
        "",
        "imagepipeline-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/imageformat/ImageFormatChecker$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$readHeaderFromStream(Lcom/facebook/imageformat/ImageFormatChecker$Companion;ILjava/io/InputStream;[B)I
    .locals 1
    .param p0, "$this"    # Lcom/facebook/imageformat/ImageFormatChecker$Companion;
    .param p1, "maxHeaderLength"    # I
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "imageHeaderBytes"    # [B

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imageformat/ImageFormatChecker$Companion;->readHeaderFromStream(ILjava/io/InputStream;[B)I

    move-result v0

    return v0
.end method

.method private final readHeaderFromStream(ILjava/io/InputStream;[B)I
    .locals 2
    .param p1, "maxHeaderLength"    # I
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "imageHeaderBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    array-length v0, p3

    const/4 v1, 0x0

    if-lt v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 82
    invoke-virtual {p2}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    nop

    .line 84
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/io/InputStream;->mark(I)V

    .line 85
    invoke-static {p2, p3, v1, p1}, Lcom/facebook/common/internal/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-virtual {p2}, Ljava/io/InputStream;->reset()V

    .line 88
    nop

    .line 87
    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p2}, Ljava/io/InputStream;->reset()V

    throw v0

    .line 90
    :cond_1
    invoke-static {p2, p3, v1, p1}, Lcom/facebook/common/internal/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result v0

    .line 82
    :goto_1
    return v0

    .line 78
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final getImageFormat(Ljava/io/InputStream;)Lcom/facebook/imageformat/ImageFormat;
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "is"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/facebook/imageformat/ImageFormatChecker$Companion;->getInstance()Lcom/facebook/imageformat/ImageFormatChecker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/imageformat/ImageFormatChecker;->determineImageFormat(Ljava/io/InputStream;)Lcom/facebook/imageformat/ImageFormat;

    move-result-object v0

    return-object v0
.end method

.method public final getImageFormat(Ljava/lang/String;)Lcom/facebook/imageformat/ImageFormat;
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "fileInputStream":Ljava/io/FileInputStream;
    nop

    .line 142
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 143
    move-object v1, v0

    check-cast v1, Ljava/io/InputStream;

    invoke-virtual {p0, v1}, Lcom/facebook/imageformat/ImageFormatChecker$Companion;->getImageFormat(Ljava/io/InputStream;)Lcom/facebook/imageformat/ImageFormat;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    move-object v2, v0

    check-cast v2, Ljava/io/InputStream;

    invoke-static {v2}, Lcom/facebook/common/internal/Closeables;->closeQuietly(Ljava/io/InputStream;)V

    .line 148
    goto :goto_0

    .line 147
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 144
    :catch_0
    move-exception v1

    .line 145
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_1
    sget-object v2, Lcom/facebook/imageformat/ImageFormat;->UNKNOWN:Lcom/facebook/imageformat/ImageFormat;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    .end local v1    # "ioe":Ljava/io/IOException;
    move-object v1, v0

    check-cast v1, Ljava/io/InputStream;

    invoke-static {v1}, Lcom/facebook/common/internal/Closeables;->closeQuietly(Ljava/io/InputStream;)V

    .line 148
    move-object v1, v2

    .line 141
    :goto_0
    return-object v1

    .line 147
    :goto_1
    move-object v2, v0

    check-cast v2, Ljava/io/InputStream;

    invoke-static {v2}, Lcom/facebook/common/internal/Closeables;->closeQuietly(Ljava/io/InputStream;)V

    throw v1
.end method

.method public final getImageFormat_WrapIOException(Ljava/io/InputStream;)Lcom/facebook/imageformat/ImageFormat;
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "is"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    nop

    .line 125
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/facebook/imageformat/ImageFormatChecker$Companion;->getImageFormat(Ljava/io/InputStream;)Lcom/facebook/imageformat/ImageFormat;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    return-object v0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "ioe":Ljava/io/IOException;
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lcom/facebook/common/internal/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    const-string/jumbo v2, "propagate(ioe)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public final getInstance()Lcom/facebook/imageformat/ImageFormatChecker;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 100
    invoke-static {}, Lcom/facebook/imageformat/ImageFormatChecker;->access$getInstance$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    .line 101
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imageformat/ImageFormatChecker;

    return-object v0
.end method
