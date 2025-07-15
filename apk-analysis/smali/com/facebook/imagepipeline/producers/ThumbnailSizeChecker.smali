.class public final Lcom/facebook/imagepipeline/producers/ThumbnailSizeChecker;
.super Ljava/lang/Object;
.source "ThumbnailSizeChecker.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0007J\u001c\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0007J\"\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00062\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/producers/ThumbnailSizeChecker;",
        "",
        "()V",
        "ACCEPTABLE_REQUESTED_TO_ACTUAL_SIZE_RATIO",
        "",
        "ROTATED_90_DEGREES_CLOCKWISE",
        "",
        "ROTATED_90_DEGREES_COUNTER_CLOCKWISE",
        "getAcceptableSize",
        "size",
        "isImageBigEnough",
        "",
        "encodedImage",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        "resizeOptions",
        "Lcom/facebook/imagepipeline/common/ResizeOptions;",
        "width",
        "height",
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
.field public static final ACCEPTABLE_REQUESTED_TO_ACTUAL_SIZE_RATIO:F = 1.3333334f

.field public static final INSTANCE:Lcom/facebook/imagepipeline/producers/ThumbnailSizeChecker;

.field private static final ROTATED_90_DEGREES_CLOCKWISE:I = 0x5a

.field private static final ROTATED_90_DEGREES_COUNTER_CLOCKWISE:I = 0x10e


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/imagepipeline/producers/ThumbnailSizeChecker;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/producers/ThumbnailSizeChecker;-><init>()V

    sput-object v0, Lcom/facebook/imagepipeline/producers/ThumbnailSizeChecker;->INSTANCE:Lcom/facebook/imagepipeline/producers/ThumbnailSizeChecker;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAcceptableSize(I)I
    .locals 2
    .param p0, "size"    # I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 63
    int-to-float v0, p0

    const v1, 0x3faaaaab

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static final isImageBigEnough(IILcom/facebook/imagepipeline/common/ResizeOptions;)Z
    .locals 4
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "resizeOptions"    # Lcom/facebook/imagepipeline/common/ResizeOptions;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 40
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 41
    invoke-static {p0}, Lcom/facebook/imagepipeline/producers/ThumbnailSizeChecker;->getAcceptableSize(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x45000000    # 2048.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 42
    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/ThumbnailSizeChecker;->getAcceptableSize(I)I

    move-result v2

    const/16 v3, 0x800

    if-lt v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 44
    :cond_1
    invoke-static {p0}, Lcom/facebook/imagepipeline/producers/ThumbnailSizeChecker;->getAcceptableSize(I)I

    move-result v2

    iget v3, p2, Lcom/facebook/imagepipeline/common/ResizeOptions;->width:I

    if-lt v2, v3, :cond_2

    .line 45
    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/ThumbnailSizeChecker;->getAcceptableSize(I)I

    move-result v2

    iget v3, p2, Lcom/facebook/imagepipeline/common/ResizeOptions;->height:I

    if-lt v2, v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 46
    :goto_0
    return v0
.end method

.method public static final isImageBigEnough(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/common/ResizeOptions;)Z
    .locals 2
    .param p0, "encodedImage"    # Lcom/facebook/imagepipeline/image/EncodedImage;
    .param p1, "resizeOptions"    # Lcom/facebook/imagepipeline/common/ResizeOptions;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 50
    if-nez p0, :cond_0

    .line 51
    const/4 v0, 0x0

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->getRotationAngle()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 58
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->getHeight()I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/facebook/imagepipeline/producers/ThumbnailSizeChecker;->isImageBigEnough(IILcom/facebook/imagepipeline/common/ResizeOptions;)Z

    move-result v0

    goto :goto_0

    .line 57
    :sswitch_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->getWidth()I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/facebook/imagepipeline/producers/ThumbnailSizeChecker;->isImageBigEnough(IILcom/facebook/imagepipeline/common/ResizeOptions;)Z

    move-result v0

    .line 60
    :goto_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch
.end method
