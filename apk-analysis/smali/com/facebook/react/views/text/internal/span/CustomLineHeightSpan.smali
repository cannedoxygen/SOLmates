.class public final Lcom/facebook/react/views/text/internal/span/CustomLineHeightSpan;
.super Ljava/lang/Object;
.source "CustomLineHeightSpan.kt"

# interfaces
.implements Landroid/text/style/LineHeightSpan;
.implements Lcom/facebook/react/views/text/internal/span/ReactSpan;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J:\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0013H\u0016R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/facebook/react/views/text/internal/span/CustomLineHeightSpan;",
        "Landroid/text/style/LineHeightSpan;",
        "Lcom/facebook/react/views/text/internal/span/ReactSpan;",
        "height",
        "",
        "(F)V",
        "lineHeight",
        "",
        "getLineHeight",
        "()I",
        "chooseHeight",
        "",
        "text",
        "",
        "start",
        "end",
        "spanstartv",
        "v",
        "fm",
        "Landroid/graphics/Paint$FontMetricsInt;",
        "ReactAndroid_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final lineHeight:I


# direct methods
.method public constructor <init>(F)V
    .locals 2
    .param p1, "height"    # F

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/facebook/react/views/text/internal/span/CustomLineHeightSpan;->lineHeight:I

    .line 20
    return-void
.end method


# virtual methods
.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "spanstartv"    # I
    .param p5, "v"    # I
    .param p6, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    const-string v0, "fm"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v1, p0, Lcom/facebook/react/views/text/internal/span/CustomLineHeightSpan;->lineHeight:I

    if-le v0, v1, :cond_0

    .line 38
    iget v0, p0, Lcom/facebook/react/views/text/internal/span/CustomLineHeightSpan;->lineHeight:I

    int-to-double v0, v0

    iget v2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 39
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 40
    const/4 v0, 0x0

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 41
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    goto :goto_0

    .line 42
    :cond_0
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v0, v0

    iget v1, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/facebook/react/views/text/internal/span/CustomLineHeightSpan;->lineHeight:I

    if-le v0, v1, :cond_1

    .line 44
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 45
    iget v0, p0, Lcom/facebook/react/views/text/internal/span/CustomLineHeightSpan;->lineHeight:I

    neg-int v0, v0

    iget v1, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v0, v1

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 46
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    goto :goto_0

    .line 47
    :cond_1
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v0, v0

    iget v1, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/facebook/react/views/text/internal/span/CustomLineHeightSpan;->lineHeight:I

    if-le v0, v1, :cond_2

    .line 49
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 50
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v1, p0, Lcom/facebook/react/views/text/internal/span/CustomLineHeightSpan;->lineHeight:I

    add-int/2addr v0, v1

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_0

    .line 51
    :cond_2
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v0, v0

    iget v1, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/facebook/react/views/text/internal/span/CustomLineHeightSpan;->lineHeight:I

    if-le v0, v1, :cond_3

    .line 53
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v1, p0, Lcom/facebook/react/views/text/internal/span/CustomLineHeightSpan;->lineHeight:I

    sub-int/2addr v0, v1

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    goto :goto_0

    .line 56
    :cond_3
    iget v0, p0, Lcom/facebook/react/views/text/internal/span/CustomLineHeightSpan;->lineHeight:I

    iget v1, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v1, v1

    iget v2, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 60
    .local v0, "additional":I
    iget v1, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v1, v1

    int-to-float v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v2, v4

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 61
    .local v1, "top":I
    iget v2, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float v2, v2

    int-to-float v4, v0

    div-float/2addr v4, v3

    float-to-double v3, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 63
    .local v2, "bottom":I
    iput v1, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 64
    iput v1, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 65
    iput v2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 66
    iput v2, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 68
    .end local v0    # "additional":I
    .end local v1    # "top":I
    .end local v2    # "bottom":I
    :goto_0
    return-void
.end method

.method public final getLineHeight()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/facebook/react/views/text/internal/span/CustomLineHeightSpan;->lineHeight:I

    return v0
.end method
