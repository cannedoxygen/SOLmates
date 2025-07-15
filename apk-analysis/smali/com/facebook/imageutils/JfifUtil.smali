.class public final Lcom/facebook/imageutils/JfifUtil;
.super Ljava/lang/Object;
.source "JfifUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0004H\u0007J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0013H\u0007J\u0012\u0010\u0011\u001a\u00020\u00042\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0007J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0004H\u0002J\u0010\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u0018\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/facebook/imageutils/JfifUtil;",
        "",
        "()V",
        "APP1_EXIF_MAGIC",
        "",
        "MARKER_APP1",
        "MARKER_EOI",
        "MARKER_ESCAPE_BYTE",
        "MARKER_FIRST_BYTE",
        "MARKER_RST0",
        "MARKER_RST7",
        "MARKER_SOFn",
        "MARKER_SOI",
        "MARKER_SOS",
        "MARKER_TEM",
        "getAutoRotateAngleFromOrientation",
        "orientation",
        "getOrientation",
        "inputStream",
        "Ljava/io/InputStream;",
        "jpeg",
        "",
        "isSOFn",
        "",
        "marker",
        "moveToAPP1EXIF",
        "moveToMarker",
        "markerToFind",
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
.field public static final APP1_EXIF_MAGIC:I = 0x45786966

.field public static final INSTANCE:Lcom/facebook/imageutils/JfifUtil;

.field public static final MARKER_APP1:I = 0xe1

.field public static final MARKER_EOI:I = 0xd9

.field public static final MARKER_ESCAPE_BYTE:I = 0x0

.field public static final MARKER_FIRST_BYTE:I = 0xff

.field public static final MARKER_RST0:I = 0xd0

.field public static final MARKER_RST7:I = 0xd7

.field public static final MARKER_SOFn:I = 0xc0

.field public static final MARKER_SOI:I = 0xd8

.field public static final MARKER_SOS:I = 0xda

.field public static final MARKER_TEM:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/imageutils/JfifUtil;

    invoke-direct {v0}, Lcom/facebook/imageutils/JfifUtil;-><init>()V

    sput-object v0, Lcom/facebook/imageutils/JfifUtil;->INSTANCE:Lcom/facebook/imageutils/JfifUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAutoRotateAngleFromOrientation(I)I
    .locals 1
    .param p0, "orientation"    # I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 41
    invoke-static {p0}, Lcom/facebook/imageutils/TiffUtil;->getAutoRotateAngleFromOrientation(I)I

    move-result v0

    return v0
.end method

.method public static final getOrientation(Ljava/io/InputStream;)I
    .locals 2
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "inputStream"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    nop

    .line 65
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/facebook/imageutils/JfifUtil;->INSTANCE:Lcom/facebook/imageutils/JfifUtil;

    invoke-direct {v1, p0}, Lcom/facebook/imageutils/JfifUtil;->moveToAPP1EXIF(Ljava/io/InputStream;)I

    move-result v1

    .line 66
    .local v1, "length":I
    if-nez v1, :cond_0

    .line 67
    goto :goto_0

    .line 69
    :cond_0
    invoke-static {p0, v1}, Lcom/facebook/imageutils/TiffUtil;->readOrientationFromTIFF(Ljava/io/InputStream;I)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "length":I
    :goto_0
    goto :goto_1

    .line 71
    :catch_0
    move-exception v1

    .line 72
    .local v1, "ioe":Ljava/io/IOException;
    nop

    .line 73
    .end local v1    # "ioe":Ljava/io/IOException;
    :goto_1
    return v0
.end method

.method public static final getOrientation([B)I
    .locals 1
    .param p0, "jpeg"    # [B
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 52
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    check-cast v0, Ljava/io/InputStream;

    invoke-static {v0}, Lcom/facebook/imageutils/JfifUtil;->getOrientation(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method private final isSOFn(I)Z
    .locals 1
    .param p1, "marker"    # I

    .line 122
    packed-switch p1, :pswitch_data_0

    .line 136
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 135
    :pswitch_1
    const/4 v0, 0x1

    .line 137
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xc0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private final moveToAPP1EXIF(Ljava/io/InputStream;)I
    .locals 5
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    const/16 v0, 0xe1

    invoke-static {p1, v0}, Lcom/facebook/imageutils/JfifUtil;->moveToMarker(Ljava/io/InputStream;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 150
    const/4 v0, 0x2

    invoke-static {p1, v0, v1}, Lcom/facebook/imageutils/StreamProcessor;->readPackedInt(Ljava/io/InputStream;IZ)I

    move-result v2

    sub-int/2addr v2, v0

    .line 151
    .local v2, "length":I
    const/4 v3, 0x6

    if-le v2, v3, :cond_0

    .line 152
    const/4 v3, 0x4

    invoke-static {p1, v3, v1}, Lcom/facebook/imageutils/StreamProcessor;->readPackedInt(Ljava/io/InputStream;IZ)I

    move-result v3

    .local v3, "magic":I
    add-int/lit8 v2, v2, -0x4

    .line 153
    nop

    .line 154
    invoke-static {p1, v0, v1}, Lcom/facebook/imageutils/StreamProcessor;->readPackedInt(Ljava/io/InputStream;IZ)I

    move-result v0

    .local v0, "zero":I
    add-int/lit8 v2, v2, -0x2

    .line 155
    nop

    .line 156
    const v4, 0x45786966

    if-ne v3, v4, :cond_0

    if-nez v0, :cond_0

    .line 158
    return v2

    .line 162
    .end local v0    # "zero":I
    .end local v2    # "length":I
    .end local v3    # "magic":I
    :cond_0
    return v1
.end method

.method public static final moveToMarker(Ljava/io/InputStream;I)Z
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "markerToFind"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "inputStream"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    nop

    .line 88
    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/facebook/imageutils/StreamProcessor;->readPackedInt(Ljava/io/InputStream;IZ)I

    move-result v2

    const/16 v3, 0xff

    if-ne v2, v3, :cond_3

    .line 89
    const/16 v2, 0xff

    .line 90
    .local v2, "marker":I
    :goto_1
    if-ne v2, v3, :cond_0

    .line 91
    invoke-static {p0, v0, v1}, Lcom/facebook/imageutils/StreamProcessor;->readPackedInt(Ljava/io/InputStream;IZ)I

    move-result v2

    goto :goto_1

    .line 93
    :cond_0
    const/16 v3, 0xc0

    if-ne p1, v3, :cond_1

    sget-object v3, Lcom/facebook/imageutils/JfifUtil;->INSTANCE:Lcom/facebook/imageutils/JfifUtil;

    invoke-direct {v3, v2}, Lcom/facebook/imageutils/JfifUtil;->isSOFn(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    return v0

    .line 96
    :cond_1
    if-ne v2, p1, :cond_2

    .line 97
    return v0

    .line 101
    :cond_2
    sparse-switch v2, :sswitch_data_0

    .line 107
    packed-switch v2, :pswitch_data_0

    .line 113
    const/4 v0, 0x2

    invoke-static {p0, v0, v1}, Lcom/facebook/imageutils/StreamProcessor;->readPackedInt(Ljava/io/InputStream;IZ)I

    move-result v1

    sub-int/2addr v1, v0

    .line 115
    .local v1, "length":I
    int-to-long v3, v1

    invoke-virtual {p0, v3, v4}, Ljava/io/InputStream;->skip(J)J

    goto :goto_0

    .line 102
    .end local v1    # "length":I
    :sswitch_0
    goto :goto_0

    .line 108
    :pswitch_0
    return v1

    .line 117
    .end local v2    # "marker":I
    :cond_3
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xd8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0xd9
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
