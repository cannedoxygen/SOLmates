.class public final Lcom/facebook/imageutils/HeifExifUtil;
.super Ljava/lang/Object;
.source "HeifExifUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/facebook/imageutils/HeifExifUtil;",
        "",
        "()V",
        "TAG",
        "",
        "getOrientation",
        "",
        "inputStream",
        "Ljava/io/InputStream;",
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


# static fields
.field public static final INSTANCE:Lcom/facebook/imageutils/HeifExifUtil;

.field private static final TAG:Ljava/lang/String; = "HeifExifUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/imageutils/HeifExifUtil;

    invoke-direct {v0}, Lcom/facebook/imageutils/HeifExifUtil;-><init>()V

    sput-object v0, Lcom/facebook/imageutils/HeifExifUtil;->INSTANCE:Lcom/facebook/imageutils/HeifExifUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getOrientation(Ljava/io/InputStream;)I
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 25
    const/4 v0, 0x0

    const-string v1, "HeifExifUtil"

    if-nez p0, :cond_0

    .line 26
    const-string v2, "Trying to read Heif Exif from null inputStream -> ignoring"

    invoke-static {v1, v2}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return v0

    .line 30
    :cond_0
    nop

    .line 31
    :try_start_0
    new-instance v2, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v2, p0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 32
    .local v2, "exifInterface":Landroidx/exifinterface/media/ExifInterface;
    const-string v3, "Orientation"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "exifInterface":Landroidx/exifinterface/media/ExifInterface;
    goto :goto_0

    .line 33
    :catch_0
    move-exception v2

    .line 34
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "Failed reading Heif Exif orientation -> ignoring"

    move-object v4, v2

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v1, v3, v4}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    nop

    .line 30
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    return v0
.end method
