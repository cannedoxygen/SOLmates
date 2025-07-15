.class public Lcom/facebook/widget/text/span/BetterImageSpan;
.super Landroid/text/style/ReplacementSpan;
.source "BetterImageSpan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/widget/text/span/BetterImageSpan$BetterImageSpanAlignment;
    }
.end annotation


# static fields
.field public static final ALIGN_BASELINE:I = 0x1

.field public static final ALIGN_BOTTOM:I = 0x0

.field public static final ALIGN_CENTER:I = 0x2


# instance fields
.field private final mAlignment:I

.field private mBounds:Landroid/graphics/Rect;

.field private final mDrawable:Landroid/graphics/drawable/Drawable;

.field private final mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field protected mHeight:I

.field private final mMargin:Landroid/graphics/Rect;

.field protected mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 67
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/facebook/widget/text/span/BetterImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "verticalAlignment"    # I

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/widget/text/span/BetterImageSpan;-><init>(Landroid/graphics/drawable/Drawable;ILandroid/graphics/Rect;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;ILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "verticalAlignment"    # I
    .param p3, "margin"    # Landroid/graphics/Rect;

    .line 75
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 62
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 76
    iput-object p1, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 77
    iput p2, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mAlignment:I

    .line 78
    iput-object p3, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mMargin:Landroid/graphics/Rect;

    .line 79
    invoke-virtual {p0}, Lcom/facebook/widget/text/span/BetterImageSpan;->updateBounds()V

    .line 80
    return-void
.end method

.method public static final normalizeAlignment(I)I
    .locals 1
    .param p0, "alignment"    # I

    .line 47
    packed-switch p0, :pswitch_data_0

    .line 54
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 51
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 49
    :pswitch_2
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected calculateLineWidthAndFontHeight(Landroid/graphics/Paint$FontMetricsInt;)I
    .locals 4
    .param p1, "fontMetrics"    # Landroid/graphics/Paint$FontMetricsInt;

    .line 152
    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v1, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-virtual {p0, v0, v1}, Lcom/facebook/widget/text/span/BetterImageSpan;->getOffsetAboveBaseline(II)I

    move-result v0

    .line 153
    .local v0, "offsetAbove":I
    iget v1, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mHeight:I

    add-int/2addr v1, v0

    .line 155
    .local v1, "offsetBelow":I
    iget v2, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mAlignment:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 156
    iget-object v2, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mMargin:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    .line 157
    iget-object v2, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mMargin:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    goto :goto_0

    .line 159
    :cond_0
    iget-object v2, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mMargin:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    .line 162
    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/widget/text/span/BetterImageSpan;->updateFontHeight(Landroid/graphics/Paint$FontMetricsInt;II)V

    .line 164
    iget v2, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mWidth:I

    return v2
.end method

.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "x"    # F
    .param p6, "top"    # I
    .param p7, "y"    # I
    .param p8, "bottom"    # I
    .param p9, "paint"    # Landroid/graphics/Paint;

    .line 116
    move-object v6, p0

    move-object v7, p1

    iget-object v0, v6, Lcom/facebook/widget/text/span/BetterImageSpan;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v8, p9

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 117
    iget-object v0, v6, Lcom/facebook/widget/text/span/BetterImageSpan;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget-object v0, v6, Lcom/facebook/widget/text/span/BetterImageSpan;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move-object v0, p0

    move/from16 v1, p7

    move v4, p6

    move/from16 v5, p8

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/widget/text/span/BetterImageSpan;->getIconTop(IIIII)I

    move-result v0

    .line 118
    .local v0, "iconTop":I
    iget-object v1, v6, Lcom/facebook/widget/text/span/BetterImageSpan;->mMargin:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, p5

    .line 119
    .local v1, "iconLeft":F
    int-to-float v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 120
    iget-object v2, v6, Lcom/facebook/widget/text/span/BetterImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 121
    neg-float v2, v1

    neg-int v3, v0

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 122
    return-void
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getIconTop(IIIII)I
    .locals 2
    .param p1, "baseline"    # I
    .param p2, "ascent"    # I
    .param p3, "descent"    # I
    .param p4, "top"    # I
    .param p5, "bottom"    # I

    .line 147
    iget-object v0, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget-object v1, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-virtual {p0, v0, v1}, Lcom/facebook/widget/text/span/BetterImageSpan;->getOffsetAboveBaseline(II)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public getMargin()Landroid/graphics/Rect;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mMargin:Landroid/graphics/Rect;

    return-object v0
.end method

.method protected getOffsetAboveBaseline(II)I
    .locals 4
    .param p1, "ascent"    # I
    .param p2, "descent"    # I

    .line 132
    iget v0, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mAlignment:I

    packed-switch v0, :pswitch_data_0

    .line 141
    :pswitch_0
    iget v0, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mHeight:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mMargin:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    return v0

    .line 136
    :pswitch_1
    sub-int v0, p2, p1

    iget-object v1, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mMargin:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mMargin:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    .line 137
    .local v0, "textHeight":I
    iget v1, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mHeight:I

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x2

    .line 138
    .local v1, "offset":I
    add-int v2, p1, v1

    iget-object v3, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mMargin:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    return v2

    .line 134
    .end local v0    # "textHeight":I
    .end local v1    # "offset":I
    :pswitch_2
    iget v0, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mHeight:I

    sub-int v0, p2, v0

    iget-object v1, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mMargin:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "fontMetrics"    # Landroid/graphics/Paint$FontMetricsInt;

    .line 97
    invoke-virtual {p0}, Lcom/facebook/widget/text/span/BetterImageSpan;->updateBounds()V

    .line 98
    if-nez p5, :cond_0

    .line 99
    iget v0, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mWidth:I

    return v0

    .line 102
    :cond_0
    invoke-virtual {p0, p5}, Lcom/facebook/widget/text/span/BetterImageSpan;->calculateLineWidthAndFontHeight(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    return v0
.end method

.method public updateBounds()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mBounds:Landroid/graphics/Rect;

    .line 127
    iget-object v0, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mMargin:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mMargin:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mWidth:I

    .line 128
    iget-object v0, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mHeight:I

    .line 129
    return-void
.end method

.method protected updateFontHeight(Landroid/graphics/Paint$FontMetricsInt;II)V
    .locals 1
    .param p1, "fontMetrics"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p2, "offsetAbove"    # I
    .param p3, "offsetBelow"    # I

    .line 169
    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    if-ge p2, v0, :cond_0

    .line 170
    iput p2, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 173
    :cond_0
    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    if-ge p2, v0, :cond_1

    .line 174
    iput p2, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 177
    :cond_1
    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    if-le p3, v0, :cond_2

    .line 178
    iput p3, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 181
    :cond_2
    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    if-le p3, v0, :cond_3

    .line 182
    iput p3, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 184
    :cond_3
    return-void
.end method
