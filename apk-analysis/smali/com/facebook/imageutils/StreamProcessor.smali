.class public final Lcom/facebook/imageutils/StreamProcessor;
.super Ljava/lang/Object;
.source "StreamProcessor.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\tH\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/facebook/imageutils/StreamProcessor;",
        "",
        "()V",
        "readPackedInt",
        "",
        "stream",
        "Ljava/io/InputStream;",
        "numBytes",
        "isLittleEndian",
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


# static fields
.field public static final INSTANCE:Lcom/facebook/imageutils/StreamProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/imageutils/StreamProcessor;

    invoke-direct {v0}, Lcom/facebook/imageutils/StreamProcessor;-><init>()V

    sput-object v0, Lcom/facebook/imageutils/StreamProcessor;->INSTANCE:Lcom/facebook/imageutils/StreamProcessor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final readPackedInt(Ljava/io/InputStream;IZ)I
    .locals 5
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "numBytes"    # I
    .param p2, "isLittleEndian"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "stream"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    const/4 v0, 0x0

    .line 28
    .local v0, "value":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_2

    .line 29
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 30
    .local v2, "b":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 34
    if-eqz p2, :cond_0

    .line 35
    and-int/lit16 v3, v2, 0xff

    mul-int/lit8 v4, v1, 0x8

    shl-int/2addr v3, v4

    or-int/2addr v3, v0

    goto :goto_1

    .line 37
    :cond_0
    shl-int/lit8 v3, v0, 0x8

    and-int/lit16 v4, v2, 0xff

    or-int/2addr v3, v4

    .line 33
    :goto_1
    move v0, v3

    .line 28
    .end local v2    # "b":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    .restart local v2    # "b":I
    :cond_1
    new-instance v3, Ljava/io/IOException;

    const-string v4, "no more bytes"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 40
    .end local v1    # "i":I
    .end local v2    # "b":I
    :cond_2
    return v0
.end method
