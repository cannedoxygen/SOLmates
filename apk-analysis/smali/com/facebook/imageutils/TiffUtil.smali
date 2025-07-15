.class public final Lcom/facebook/imageutils/TiffUtil;
.super Ljava/lang/Object;
.source "TiffUtil.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imageutils/TiffUtil$TiffHeader;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001:\u0001\u0018B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0007J \u0010\u000c\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J(\u0010\u0012\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0006H\u0002J\u0018\u0010\u0014\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0006H\u0007J \u0010\u0015\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0017H\u0002R\u0012\u0010\u0003\u001a\u0006\u0012\u0002\u0008\u00030\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/facebook/imageutils/TiffUtil;",
        "",
        "()V",
        "TAG",
        "Ljava/lang/Class;",
        "TIFF_BYTE_ORDER_BIG_END",
        "",
        "TIFF_BYTE_ORDER_LITTLE_END",
        "TIFF_TAG_ORIENTATION",
        "TIFF_TYPE_SHORT",
        "getAutoRotateAngleFromOrientation",
        "orientation",
        "getOrientationFromTiffEntry",
        "stream",
        "Ljava/io/InputStream;",
        "length",
        "isLittleEndian",
        "",
        "moveToTiffEntryWithTag",
        "tagToFind",
        "readOrientationFromTIFF",
        "readTiffHeader",
        "tiffHeader",
        "Lcom/facebook/imageutils/TiffUtil$TiffHeader;",
        "TiffHeader",
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
.field public static final INSTANCE:Lcom/facebook/imageutils/TiffUtil;

.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final TIFF_BYTE_ORDER_BIG_END:I = 0x4d4d002a

.field public static final TIFF_BYTE_ORDER_LITTLE_END:I = 0x49492a00

.field public static final TIFF_TAG_ORIENTATION:I = 0x112

.field public static final TIFF_TYPE_SHORT:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/imageutils/TiffUtil;

    invoke-direct {v0}, Lcom/facebook/imageutils/TiffUtil;-><init>()V

    sput-object v0, Lcom/facebook/imageutils/TiffUtil;->INSTANCE:Lcom/facebook/imageutils/TiffUtil;

    .line 18
    const-class v0, Lcom/facebook/imageutils/TiffUtil;

    sput-object v0, Lcom/facebook/imageutils/TiffUtil;->TAG:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAutoRotateAngleFromOrientation(I)I
    .locals 1
    .param p0, "orientation"    # I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 32
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 38
    :pswitch_0
    goto :goto_0

    .line 37
    :pswitch_1
    const/16 v0, 0x10e

    goto :goto_0

    .line 35
    :pswitch_2
    const/16 v0, 0x5a

    goto :goto_0

    .line 36
    :pswitch_3
    const/16 v0, 0xb4

    goto :goto_0

    .line 34
    :pswitch_4
    nop

    .line 39
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final getOrientationFromTiffEntry(Ljava/io/InputStream;IZ)I
    .locals 5
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "length"    # I
    .param p3, "isLittleEndian"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    const/16 v0, 0xa

    const/4 v1, 0x0

    if-ge p2, v0, :cond_0

    .line 165
    return v1

    .line 168
    :cond_0
    const/4 v0, 0x2

    invoke-static {p1, v0, p3}, Lcom/facebook/imageutils/StreamProcessor;->readPackedInt(Ljava/io/InputStream;IZ)I

    move-result v2

    .line 169
    .local v2, "type":I
    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 170
    return v1

    .line 173
    :cond_1
    const/4 v3, 0x4

    invoke-static {p1, v3, p3}, Lcom/facebook/imageutils/StreamProcessor;->readPackedInt(Ljava/io/InputStream;IZ)I

    move-result v3

    .line 174
    .local v3, "count":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 175
    return v1

    .line 177
    :cond_2
    invoke-static {p1, v0, p3}, Lcom/facebook/imageutils/StreamProcessor;->readPackedInt(Ljava/io/InputStream;IZ)I

    move-result v0

    return v0
.end method

.method private final moveToTiffEntryWithTag(Ljava/io/InputStream;IZI)I
    .locals 7
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "length"    # I
    .param p3, "isLittleEndian"    # Z
    .param p4, "tagToFind"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    const/16 v0, 0xe

    const/4 v1, 0x0

    if-ge p2, v0, :cond_0

    .line 127
    return v1

    .line 130
    :cond_0
    move v0, p2

    .line 134
    .local v0, "remainingLength":I
    const/4 v2, 0x2

    invoke-static {p1, v2, p3}, Lcom/facebook/imageutils/StreamProcessor;->readPackedInt(Ljava/io/InputStream;IZ)I

    move-result v3

    .local v3, "numEntries":I
    add-int/lit8 v0, v0, -0x2

    .line 135
    nop

    .line 137
    :goto_0
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "numEntries":I
    .local v4, "numEntries":I
    if-lez v3, :cond_2

    const/16 v3, 0xc

    if-lt v0, v3, :cond_2

    .line 138
    invoke-static {p1, v2, p3}, Lcom/facebook/imageutils/StreamProcessor;->readPackedInt(Ljava/io/InputStream;IZ)I

    move-result v3

    .local v3, "tag":I
    add-int/lit8 v0, v0, -0x2

    .line 139
    nop

    .line 140
    if-ne v3, p4, :cond_1

    .line 141
    return v0

    .line 143
    :cond_1
    const-wide/16 v5, 0xa

    invoke-virtual {p1, v5, v6}, Ljava/io/InputStream;->skip(J)J

    add-int/lit8 v0, v0, -0xa

    .line 144
    move v3, v4

    .end local v3    # "tag":I
    goto :goto_0

    .line 147
    :cond_2
    return v1
.end method

.method public static final readOrientationFromTIFF(Ljava/io/InputStream;I)I
    .locals 6
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "stream"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    new-instance v0, Lcom/facebook/imageutils/TiffUtil$TiffHeader;

    invoke-direct {v0}, Lcom/facebook/imageutils/TiffUtil$TiffHeader;-><init>()V

    .line 53
    .local v0, "tiffHeader":Lcom/facebook/imageutils/TiffUtil$TiffHeader;
    sget-object v1, Lcom/facebook/imageutils/TiffUtil;->INSTANCE:Lcom/facebook/imageutils/TiffUtil;

    invoke-direct {v1, p0, p1, v0}, Lcom/facebook/imageutils/TiffUtil;->readTiffHeader(Ljava/io/InputStream;ILcom/facebook/imageutils/TiffUtil$TiffHeader;)I

    move-result v1

    .line 58
    .local v1, "remainingLength":I
    invoke-virtual {v0}, Lcom/facebook/imageutils/TiffUtil$TiffHeader;->getFirstIfdOffset()I

    move-result v2

    add-int/lit8 v2, v2, -0x8

    .line 59
    .local v2, "toSkip":I
    if-eqz v1, :cond_1

    if-le v2, v1, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    int-to-long v3, v2

    invoke-virtual {p0, v3, v4}, Ljava/io/InputStream;->skip(J)J

    .line 63
    sub-int/2addr v1, v2

    .line 67
    sget-object v3, Lcom/facebook/imageutils/TiffUtil;->INSTANCE:Lcom/facebook/imageutils/TiffUtil;

    .line 68
    invoke-virtual {v0}, Lcom/facebook/imageutils/TiffUtil$TiffHeader;->isLittleEndian()Z

    move-result v4

    .line 67
    const/16 v5, 0x112

    invoke-direct {v3, p0, v1, v4, v5}, Lcom/facebook/imageutils/TiffUtil;->moveToTiffEntryWithTag(Ljava/io/InputStream;IZI)I

    move-result v3

    .line 66
    move v1, v3

    .line 71
    sget-object v3, Lcom/facebook/imageutils/TiffUtil;->INSTANCE:Lcom/facebook/imageutils/TiffUtil;

    invoke-virtual {v0}, Lcom/facebook/imageutils/TiffUtil$TiffHeader;->isLittleEndian()Z

    move-result v4

    invoke-direct {v3, p0, v1, v4}, Lcom/facebook/imageutils/TiffUtil;->getOrientationFromTiffEntry(Ljava/io/InputStream;IZ)I

    move-result v3

    return v3

    .line 60
    :cond_1
    :goto_0
    const/4 v3, 0x0

    return v3
.end method

.method private final readTiffHeader(Ljava/io/InputStream;ILcom/facebook/imageutils/TiffUtil$TiffHeader;)I
    .locals 7
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "length"    # I
    .param p3, "tiffHeader"    # Lcom/facebook/imageutils/TiffUtil$TiffHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    const/4 v0, 0x0

    const/16 v1, 0x8

    if-gt p2, v1, :cond_0

    .line 85
    return v0

    .line 88
    :cond_0
    move v2, p2

    .line 91
    .local v2, "remainingLength":I
    const/4 v3, 0x4

    invoke-static {p1, v3, v0}, Lcom/facebook/imageutils/StreamProcessor;->readPackedInt(Ljava/io/InputStream;IZ)I

    move-result v4

    invoke-virtual {p3, v4}, Lcom/facebook/imageutils/TiffUtil$TiffHeader;->setByteOrder(I)V

    add-int/lit8 v2, v2, -0x4

    .line 92
    nop

    .line 93
    invoke-virtual {p3}, Lcom/facebook/imageutils/TiffUtil$TiffHeader;->getByteOrder()I

    move-result v4

    const v5, 0x49492a00    # 823968.0f

    if-eq v4, v5, :cond_1

    .line 94
    invoke-virtual {p3}, Lcom/facebook/imageutils/TiffUtil$TiffHeader;->getByteOrder()I

    move-result v4

    const v6, 0x4d4d002a    # 2.1495875E8f

    if-eq v4, v6, :cond_1

    .line 95
    sget-object v1, Lcom/facebook/imageutils/TiffUtil;->TAG:Ljava/lang/Class;

    const-string v3, "Invalid TIFF header"

    invoke-static {v1, v3}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 96
    return v0

    .line 98
    :cond_1
    invoke-virtual {p3}, Lcom/facebook/imageutils/TiffUtil$TiffHeader;->getByteOrder()I

    move-result v4

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v0

    :goto_0
    invoke-virtual {p3, v4}, Lcom/facebook/imageutils/TiffUtil$TiffHeader;->setLittleEndian(Z)V

    .line 101
    invoke-virtual {p3}, Lcom/facebook/imageutils/TiffUtil$TiffHeader;->isLittleEndian()Z

    move-result v4

    invoke-static {p1, v3, v4}, Lcom/facebook/imageutils/StreamProcessor;->readPackedInt(Ljava/io/InputStream;IZ)I

    move-result v3

    invoke-virtual {p3, v3}, Lcom/facebook/imageutils/TiffUtil$TiffHeader;->setFirstIfdOffset(I)V

    add-int/lit8 v2, v2, -0x4

    .line 102
    nop

    .line 103
    invoke-virtual {p3}, Lcom/facebook/imageutils/TiffUtil$TiffHeader;->getFirstIfdOffset()I

    move-result v3

    if-lt v3, v1, :cond_4

    invoke-virtual {p3}, Lcom/facebook/imageutils/TiffUtil$TiffHeader;->getFirstIfdOffset()I

    move-result v3

    sub-int/2addr v3, v1

    if-le v3, v2, :cond_3

    goto :goto_1

    .line 107
    :cond_3
    return v2

    .line 104
    :cond_4
    :goto_1
    sget-object v1, Lcom/facebook/imageutils/TiffUtil;->TAG:Ljava/lang/Class;

    const-string v3, "Invalid offset"

    invoke-static {v1, v3}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 105
    return v0
.end method
