.class public final Lcom/facebook/imagepipeline/filter/XferRoundFilter;
.super Ljava/lang/Object;
.source "XferRoundFilter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\tH\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/filter/XferRoundFilter;",
        "",
        "()V",
        "xferRoundBitmap",
        "",
        "output",
        "Landroid/graphics/Bitmap;",
        "source",
        "enableAntiAliasing",
        "",
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
.field public static final INSTANCE:Lcom/facebook/imagepipeline/filter/XferRoundFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/imagepipeline/filter/XferRoundFilter;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/filter/XferRoundFilter;-><init>()V

    sput-object v0, Lcom/facebook/imagepipeline/filter/XferRoundFilter;->INSTANCE:Lcom/facebook/imagepipeline/filter/XferRoundFilter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final xferRoundBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V
    .locals 7
    .param p0, "output"    # Landroid/graphics/Bitmap;
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "enableAntiAliasing"    # Z
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "output"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    nop

    .line 27
    nop

    .line 28
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    const/4 v1, 0x0

    .local v1, "circlePaint":Landroid/graphics/Paint;
    const/4 v2, 0x0

    .line 31
    .local v2, "xfermodePaint":Landroid/graphics/Paint;
    if-eqz p2, :cond_0

    .line 32
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v0}, Landroid/graphics/Paint;-><init>(I)V

    move-object v1, v3

    .line 33
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v0}, Landroid/graphics/Paint;-><init>(I)V

    move-object v0, v3

    .end local v2    # "xfermodePaint":Landroid/graphics/Paint;
    .local v0, "xfermodePaint":Landroid/graphics/Paint;
    goto :goto_0

    .line 35
    .end local v0    # "xfermodePaint":Landroid/graphics/Paint;
    .restart local v2    # "xfermodePaint":Landroid/graphics/Paint;
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    move-object v1, v0

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 38
    .end local v2    # "xfermodePaint":Landroid/graphics/Paint;
    .restart local v0    # "xfermodePaint":Landroid/graphics/Paint;
    :goto_0
    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    check-cast v2, Landroid/graphics/Xfermode;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 40
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 41
    .local v2, "xCenter":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    .line 42
    .local v4, "yCenter":F
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v3, "$this$xferRoundBitmap_u24lambda_u240":Landroid/graphics/Canvas;
    const/4 v5, 0x0

    .line 43
    .local v5, "$i$a$-apply-XferRoundFilter$xferRoundBitmap$1":I
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-virtual {v3, v2, v4, v6, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 44
    const/4 v6, 0x0

    invoke-virtual {v3, p1, v6, v6, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 45
    nop

    .line 42
    .end local v3    # "$this$xferRoundBitmap_u24lambda_u240":Landroid/graphics/Canvas;
    .end local v5    # "$i$a$-apply-XferRoundFilter$xferRoundBitmap$1":I
    nop

    .line 46
    return-void
.end method
