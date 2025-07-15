.class public final Lcom/facebook/imagepipeline/producers/LocalContentUriFetchProducer;
.super Lcom/facebook/imagepipeline/producers/LocalFetchProducer;
.source "LocalContentUriFetchProducer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/LocalContentUriFetchProducer$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0012\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0012\u0010\r\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000e\u001a\u00020\u000fH\u0014J\u0008\u0010\u0010\u001a\u00020\u0011H\u0014R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/producers/LocalContentUriFetchProducer;",
        "Lcom/facebook/imagepipeline/producers/LocalFetchProducer;",
        "executor",
        "Ljava/util/concurrent/Executor;",
        "pooledByteBufferFactory",
        "Lcom/facebook/common/memory/PooledByteBufferFactory;",
        "contentResolver",
        "Landroid/content/ContentResolver;",
        "(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/PooledByteBufferFactory;Landroid/content/ContentResolver;)V",
        "getCameraImage",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        "uri",
        "Landroid/net/Uri;",
        "getEncodedImage",
        "imageRequest",
        "Lcom/facebook/imagepipeline/request/ImageRequest;",
        "getProducerName",
        "",
        "Companion",
        "imagepipeline_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/facebook/imagepipeline/producers/LocalContentUriFetchProducer$Companion;

.field public static final PRODUCER_NAME:Ljava/lang/String; = "LocalContentUriFetchProducer"

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private final contentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/facebook/imagepipeline/producers/LocalContentUriFetchProducer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/producers/LocalContentUriFetchProducer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/imagepipeline/producers/LocalContentUriFetchProducer;->Companion:Lcom/facebook/imagepipeline/producers/LocalContentUriFetchProducer$Companion;

    .line 89
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/imagepipeline/producers/LocalContentUriFetchProducer;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/PooledByteBufferFactory;Landroid/content/ContentResolver;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "pooledByteBufferFactory"    # Lcom/facebook/common/memory/PooledByteBufferFactory;
    .param p3, "contentResolver"    # Landroid/content/ContentResolver;

    const-string v0, "executor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "pooledByteBufferFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentResolver"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/LocalFetchProducer;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/PooledByteBufferFactory;)V

    .line 29
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/LocalContentUriFetchProducer;->contentResolver:Landroid/content/ContentResolver;

    .line 26
    return-void
.end method

.method private final getCameraImage(Landroid/net/Uri;)Lcom/facebook/imagepipeline/image/EncodedImage;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    nop

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/LocalContentUriFetchProducer;->contentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "r"

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    nop

    .line 70
    nop

    .line 76
    .local v0, "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 79
    .local v1, "fd":Ljava/io/FileDescriptor;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    check-cast v2, Ljava/io/InputStream;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/facebook/imagepipeline/producers/LocalContentUriFetchProducer;->getEncodedImage(Ljava/io/InputStream;I)Lcom/facebook/imagepipeline/image/EncodedImage;

    move-result-object v2

    const-string/jumbo v3, "this.getEncodedImage(Fil\u2026criptor.statSize.toInt())"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    nop

    .line 80
    .local v2, "encodedImage":Lcom/facebook/imagepipeline/image/EncodedImage;
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 81
    return-object v2

    .line 76
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v2    # "encodedImage":Lcom/facebook/imagepipeline/image/EncodedImage;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Required value was null."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    .end local v0    # "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method protected getEncodedImage(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/image/EncodedImage;
    .locals 10
    .param p1, "imageRequest"    # Lcom/facebook/imagepipeline/request/ImageRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "imageRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "imageRequest.sourceUri"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {v0}, Lcom/facebook/common/util/UriUtil;->isLocalContactUri(Landroid/net/Uri;)Z

    move-result v1

    const/4 v2, -0x1

    const-string v3, "Required value was null."

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    .line 37
    .local v1, "inputStream":Ljava/io/InputStream;
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "uri.toString()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "/photo"

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v4, v6, v7, v8, v9}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 38
    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/LocalContentUriFetchProducer;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v4, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "/display_photo"

    invoke-static {v4, v5, v7, v8, v9}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    const-string v5, "Contact photo does not exist: "

    if-eqz v4, :cond_2

    .line 41
    nop

    .line 42
    :try_start_0
    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/LocalContentUriFetchProducer;->contentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "r"

    invoke-virtual {v4, v0, v6}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    .line 43
    .local v4, "fd":Landroid/content/res/AssetFileDescriptor;
    if-eqz v4, :cond_1

    .line 44
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v6

    .end local v4    # "fd":Landroid/content/res/AssetFileDescriptor;
    check-cast v6, Ljava/io/InputStream;

    .line 40
    move-object v1, v6

    goto :goto_0

    .line 43
    .restart local v4    # "fd":Landroid/content/res/AssetFileDescriptor;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local p1    # "imageRequest":Lcom/facebook/imagepipeline/request/ImageRequest;
    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v4    # "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local v0    # "uri":Landroid/net/Uri;
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    .restart local p1    # "imageRequest":Lcom/facebook/imagepipeline/request/ImageRequest;
    :catch_0
    move-exception v2

    .line 46
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 49
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/LocalContentUriFetchProducer;->contentResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v0}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 50
    if-eqz v1, :cond_4

    .line 54
    :goto_0
    if-eqz v1, :cond_3

    .line 56
    invoke-virtual {p0, v1, v2}, Lcom/facebook/imagepipeline/producers/LocalContentUriFetchProducer;->getEncodedImage(Ljava/io/InputStream;I)Lcom/facebook/imagepipeline/image/EncodedImage;

    move-result-object v2

    return-object v2

    .line 54
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 51
    :cond_4
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 58
    .end local v1    # "inputStream":Ljava/io/InputStream;
    :cond_5
    invoke-static {v0}, Lcom/facebook/common/util/UriUtil;->isLocalCameraUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 59
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/producers/LocalContentUriFetchProducer;->getCameraImage(Landroid/net/Uri;)Lcom/facebook/imagepipeline/image/EncodedImage;

    move-result-object v1

    .line 60
    .local v1, "cameraImage":Lcom/facebook/imagepipeline/image/EncodedImage;
    if-eqz v1, :cond_6

    .line 61
    return-object v1

    .line 64
    .end local v1    # "cameraImage":Lcom/facebook/imagepipeline/image/EncodedImage;
    :cond_6
    nop

    .line 65
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/LocalContentUriFetchProducer;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 64
    invoke-virtual {p0, v1, v2}, Lcom/facebook/imagepipeline/producers/LocalContentUriFetchProducer;->getEncodedImage(Ljava/io/InputStream;I)Lcom/facebook/imagepipeline/image/EncodedImage;

    move-result-object v1

    return-object v1

    .line 65
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected getProducerName()Ljava/lang/String;
    .locals 1

    .line 84
    const-string v0, "LocalContentUriFetchProducer"

    return-object v0
.end method
