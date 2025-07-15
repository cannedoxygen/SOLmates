.class Lcom/horcrux/svg/TextView;
.super Lcom/horcrux/svg/GroupView;
.source "TextView.java"


# instance fields
.field cachedAdvance:D

.field private mAlignmentBaseline:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

.field private mBaselineShift:Ljava/lang/String;

.field private mDeltaX:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/horcrux/svg/SVGLength;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mDeltaY:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/horcrux/svg/SVGLength;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mInlineSize:Lcom/horcrux/svg/SVGLength;

.field mLengthAdjust:Lcom/horcrux/svg/TextProperties$TextLengthAdjust;

.field private mPositionX:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/horcrux/svg/SVGLength;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mPositionY:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/horcrux/svg/SVGLength;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mRotate:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/horcrux/svg/SVGLength;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mTextLength:Lcom/horcrux/svg/SVGLength;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 2
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;

    .line 41
    invoke-direct {p0, p1}, Lcom/horcrux/svg/GroupView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/horcrux/svg/TextView;->mInlineSize:Lcom/horcrux/svg/SVGLength;

    .line 29
    iput-object v0, p0, Lcom/horcrux/svg/TextView;->mTextLength:Lcom/horcrux/svg/SVGLength;

    .line 30
    iput-object v0, p0, Lcom/horcrux/svg/TextView;->mBaselineShift:Ljava/lang/String;

    .line 31
    sget-object v0, Lcom/horcrux/svg/TextProperties$TextLengthAdjust;->spacing:Lcom/horcrux/svg/TextProperties$TextLengthAdjust;

    iput-object v0, p0, Lcom/horcrux/svg/TextView;->mLengthAdjust:Lcom/horcrux/svg/TextProperties$TextLengthAdjust;

    .line 38
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lcom/horcrux/svg/TextView;->cachedAdvance:D

    .line 42
    return-void
.end method


# virtual methods
.method clearCache()V
    .locals 2

    .line 54
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lcom/horcrux/svg/TextView;->cachedAdvance:D

    .line 55
    invoke-super {p0}, Lcom/horcrux/svg/GroupView;->clearCache()V

    .line 56
    return-void
.end method

.method draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "opacity"    # F

    .line 132
    invoke-virtual {p0, p1}, Lcom/horcrux/svg/TextView;->setupGlyphContext(Landroid/graphics/Canvas;)V

    .line 133
    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/TextView;->clip(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/TextView;->getGroupPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;

    .line 135
    invoke-virtual {p0}, Lcom/horcrux/svg/TextView;->pushGlyphContext()V

    .line 136
    invoke-virtual {p0, p1, p2, p3}, Lcom/horcrux/svg/TextView;->drawGroup(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    .line 137
    invoke-virtual {p0}, Lcom/horcrux/svg/TextView;->popGlyphContext()V

    .line 138
    return-void
.end method

.method getAlignmentBaseline()Lcom/horcrux/svg/TextProperties$AlignmentBaseline;
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/horcrux/svg/TextView;->mAlignmentBaseline:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    if-nez v0, :cond_1

    .line 156
    invoke-virtual {p0}, Lcom/horcrux/svg/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 157
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_1

    .line 158
    instance-of v1, v0, Lcom/horcrux/svg/TextView;

    if-eqz v1, :cond_0

    .line 159
    move-object v1, v0

    check-cast v1, Lcom/horcrux/svg/TextView;

    .line 160
    .local v1, "node":Lcom/horcrux/svg/TextView;
    iget-object v2, v1, Lcom/horcrux/svg/TextView;->mAlignmentBaseline:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    .line 161
    .local v2, "baseline":Lcom/horcrux/svg/TextProperties$AlignmentBaseline;
    if-eqz v2, :cond_0

    .line 162
    iput-object v2, p0, Lcom/horcrux/svg/TextView;->mAlignmentBaseline:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    .line 163
    return-object v2

    .line 166
    .end local v1    # "node":Lcom/horcrux/svg/TextView;
    .end local v2    # "baseline":Lcom/horcrux/svg/TextProperties$AlignmentBaseline;
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 169
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_1
    iget-object v0, p0, Lcom/horcrux/svg/TextView;->mAlignmentBaseline:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    if-nez v0, :cond_2

    .line 170
    sget-object v0, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->baseline:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    iput-object v0, p0, Lcom/horcrux/svg/TextView;->mAlignmentBaseline:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/horcrux/svg/TextView;->mAlignmentBaseline:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    return-object v0
.end method

.method getBaselineShift()Ljava/lang/String;
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/horcrux/svg/TextView;->mBaselineShift:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 177
    invoke-virtual {p0}, Lcom/horcrux/svg/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 178
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_1

    .line 179
    instance-of v1, v0, Lcom/horcrux/svg/TextView;

    if-eqz v1, :cond_0

    .line 180
    move-object v1, v0

    check-cast v1, Lcom/horcrux/svg/TextView;

    .line 181
    .local v1, "node":Lcom/horcrux/svg/TextView;
    iget-object v2, v1, Lcom/horcrux/svg/TextView;->mBaselineShift:Ljava/lang/String;

    .line 182
    .local v2, "baselineShift":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 183
    iput-object v2, p0, Lcom/horcrux/svg/TextView;->mBaselineShift:Ljava/lang/String;

    .line 184
    return-object v2

    .line 187
    .end local v1    # "node":Lcom/horcrux/svg/TextView;
    .end local v2    # "baselineShift":Ljava/lang/String;
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 190
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_1
    iget-object v0, p0, Lcom/horcrux/svg/TextView;->mBaselineShift:Ljava/lang/String;

    return-object v0
.end method

.method getGroupPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 194
    iget-object v0, p0, Lcom/horcrux/svg/TextView;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/horcrux/svg/TextView;->mPath:Landroid/graphics/Path;

    return-object v0

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/horcrux/svg/TextView;->pushGlyphContext()V

    .line 198
    invoke-super {p0, p1, p2}, Lcom/horcrux/svg/GroupView;->getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/TextView;->mPath:Landroid/graphics/Path;

    .line 199
    invoke-virtual {p0}, Lcom/horcrux/svg/TextView;->popGlyphContext()V

    .line 201
    iget-object v0, p0, Lcom/horcrux/svg/TextView;->mPath:Landroid/graphics/Path;

    return-object v0
.end method

.method getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 142
    iget-object v0, p0, Lcom/horcrux/svg/TextView;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/horcrux/svg/TextView;->mPath:Landroid/graphics/Path;

    return-object v0

    .line 145
    :cond_0
    invoke-virtual {p0, p1}, Lcom/horcrux/svg/TextView;->setupGlyphContext(Landroid/graphics/Canvas;)V

    .line 146
    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/TextView;->getGroupPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Region$Op;)Landroid/graphics/Path;
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "op"    # Landroid/graphics/Region$Op;

    .line 151
    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/TextView;->getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method getSubtreeTextChunksTotalAdvance(Landroid/graphics/Paint;)D
    .locals 7
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 229
    iget-wide v0, p0, Lcom/horcrux/svg/TextView;->cachedAdvance:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iget-wide v0, p0, Lcom/horcrux/svg/TextView;->cachedAdvance:D

    return-wide v0

    .line 232
    :cond_0
    const-wide/16 v0, 0x0

    .line 233
    .local v0, "advance":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/TextView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 234
    invoke-virtual {p0, v2}, Lcom/horcrux/svg/TextView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 235
    .local v3, "child":Landroid/view/View;
    instance-of v4, v3, Lcom/horcrux/svg/TextView;

    if-eqz v4, :cond_1

    .line 236
    move-object v4, v3

    check-cast v4, Lcom/horcrux/svg/TextView;

    .line 237
    .local v4, "text":Lcom/horcrux/svg/TextView;
    invoke-virtual {v4, p1}, Lcom/horcrux/svg/TextView;->getSubtreeTextChunksTotalAdvance(Landroid/graphics/Paint;)D

    move-result-wide v5

    add-double/2addr v0, v5

    .line 233
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "text":Lcom/horcrux/svg/TextView;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 240
    .end local v2    # "i":I
    :cond_2
    iput-wide v0, p0, Lcom/horcrux/svg/TextView;->cachedAdvance:D

    .line 241
    return-wide v0
.end method

.method getTextAnchorRoot()Lcom/horcrux/svg/TextView;
    .locals 7

    .line 212
    invoke-virtual {p0}, Lcom/horcrux/svg/TextView;->getTextRootGlyphContext()Lcom/horcrux/svg/GlyphContext;

    move-result-object v0

    .line 213
    .local v0, "gc":Lcom/horcrux/svg/GlyphContext;
    iget-object v1, v0, Lcom/horcrux/svg/GlyphContext;->mFontContext:Ljava/util/ArrayList;

    .line 214
    .local v1, "font":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/horcrux/svg/FontData;>;"
    move-object v2, p0

    .line 215
    .local v2, "node":Lcom/horcrux/svg/TextView;
    invoke-virtual {p0}, Lcom/horcrux/svg/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 216
    .local v3, "parent":Landroid/view/ViewParent;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_2

    .line 217
    instance-of v5, v3, Lcom/horcrux/svg/TextView;

    if-eqz v5, :cond_1

    .line 218
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/horcrux/svg/FontData;

    iget-object v5, v5, Lcom/horcrux/svg/FontData;->textAnchor:Lcom/horcrux/svg/TextProperties$TextAnchor;

    sget-object v6, Lcom/horcrux/svg/TextProperties$TextAnchor;->start:Lcom/horcrux/svg/TextProperties$TextAnchor;

    if-eq v5, v6, :cond_1

    iget-object v5, v2, Lcom/horcrux/svg/TextView;->mPositionX:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    goto :goto_1

    .line 222
    :cond_0
    move-object v2, v3

    check-cast v2, Lcom/horcrux/svg/TextView;

    .line 223
    invoke-virtual {v2}, Lcom/horcrux/svg/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 216
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 220
    :cond_1
    :goto_1
    return-object v2

    .line 225
    .end local v4    # "i":I
    :cond_2
    return-object v2
.end method

.method getTextContainer()Lcom/horcrux/svg/TextView;
    .locals 3

    .line 245
    move-object v0, p0

    .line 246
    .local v0, "node":Lcom/horcrux/svg/TextView;
    invoke-virtual {p0}, Lcom/horcrux/svg/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 247
    .local v1, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v1, Lcom/horcrux/svg/TextView;

    if-eqz v2, :cond_0

    .line 248
    move-object v0, v1

    check-cast v0, Lcom/horcrux/svg/TextView;

    .line 249
    invoke-virtual {v0}, Lcom/horcrux/svg/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 251
    :cond_0
    return-object v0
.end method

.method public invalidate()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/horcrux/svg/TextView;->mPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 47
    return-void

    .line 49
    :cond_0
    invoke-super {p0}, Lcom/horcrux/svg/GroupView;->invalidate()V

    .line 50
    invoke-virtual {p0}, Lcom/horcrux/svg/TextView;->getTextContainer()Lcom/horcrux/svg/TextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/horcrux/svg/TextView;->clearChildCache()V

    .line 51
    return-void
.end method

.method pushGlyphContext()V
    .locals 10

    .line 206
    instance-of v0, p0, Lcom/horcrux/svg/TextPathView;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/horcrux/svg/TSpanView;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v2, v0

    .line 207
    .local v2, "isTextNode":Z
    invoke-virtual {p0}, Lcom/horcrux/svg/TextView;->getTextRootGlyphContext()Lcom/horcrux/svg/GlyphContext;

    move-result-object v1

    iget-object v4, p0, Lcom/horcrux/svg/TextView;->mFont:Lcom/facebook/react/bridge/ReadableMap;

    iget-object v5, p0, Lcom/horcrux/svg/TextView;->mPositionX:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/horcrux/svg/TextView;->mPositionY:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/horcrux/svg/TextView;->mDeltaX:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/horcrux/svg/TextView;->mDeltaY:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/horcrux/svg/TextView;->mRotate:Ljava/util/ArrayList;

    .line 208
    move-object v3, p0

    invoke-virtual/range {v1 .. v9}, Lcom/horcrux/svg/GlyphContext;->pushContext(ZLcom/horcrux/svg/TextView;Lcom/facebook/react/bridge/ReadableMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 209
    return-void
.end method

.method public setBaselineShift(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "baselineShift"    # Lcom/facebook/react/bridge/Dynamic;

    .line 79
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->toString(Lcom/facebook/react/bridge/Dynamic;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/TextView;->mBaselineShift:Ljava/lang/String;

    .line 80
    invoke-virtual {p0}, Lcom/horcrux/svg/TextView;->invalidate()V

    .line 81
    return-void
.end method

.method public setDeltaX(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "deltaX"    # Lcom/facebook/react/bridge/Dynamic;

    .line 111
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->arrayFrom(Lcom/facebook/react/bridge/Dynamic;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/TextView;->mDeltaX:Ljava/util/ArrayList;

    .line 112
    invoke-virtual {p0}, Lcom/horcrux/svg/TextView;->invalidate()V

    .line 113
    return-void
.end method

.method public setDeltaY(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "deltaY"    # Lcom/facebook/react/bridge/Dynamic;

    .line 116
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->arrayFrom(Lcom/facebook/react/bridge/Dynamic;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/TextView;->mDeltaY:Ljava/util/ArrayList;

    .line 117
    invoke-virtual {p0}, Lcom/horcrux/svg/TextView;->invalidate()V

    .line 118
    return-void
.end method

.method public setInlineSize(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "inlineSize"    # Lcom/facebook/react/bridge/Dynamic;

    .line 59
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/TextView;->mInlineSize:Lcom/horcrux/svg/SVGLength;

    .line 60
    invoke-virtual {p0}, Lcom/horcrux/svg/TextView;->invalidate()V

    .line 61
    return-void
.end method

.method public setLengthAdjust(Ljava/lang/String;)V
    .locals 1
    .param p1, "adjustment"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 69
    invoke-static {p1}, Lcom/horcrux/svg/TextProperties$TextLengthAdjust;->valueOf(Ljava/lang/String;)Lcom/horcrux/svg/TextProperties$TextLengthAdjust;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/TextView;->mLengthAdjust:Lcom/horcrux/svg/TextProperties$TextLengthAdjust;

    .line 70
    invoke-virtual {p0}, Lcom/horcrux/svg/TextView;->invalidate()V

    .line 71
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 1
    .param p1, "alignment"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 74
    invoke-static {p1}, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->getEnum(Ljava/lang/String;)Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/TextView;->mAlignmentBaseline:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    .line 75
    invoke-virtual {p0}, Lcom/horcrux/svg/TextView;->invalidate()V

    .line 76
    return-void
.end method

.method public setPositionX(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "positionX"    # Lcom/facebook/react/bridge/Dynamic;

    .line 121
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->arrayFrom(Lcom/facebook/react/bridge/Dynamic;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/TextView;->mPositionX:Ljava/util/ArrayList;

    .line 122
    invoke-virtual {p0}, Lcom/horcrux/svg/TextView;->invalidate()V

    .line 123
    return-void
.end method

.method public setPositionY(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "positionY"    # Lcom/facebook/react/bridge/Dynamic;

    .line 126
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->arrayFrom(Lcom/facebook/react/bridge/Dynamic;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/TextView;->mPositionY:Ljava/util/ArrayList;

    .line 127
    invoke-virtual {p0}, Lcom/horcrux/svg/TextView;->invalidate()V

    .line 128
    return-void
.end method

.method public setRotate(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "rotate"    # Lcom/facebook/react/bridge/Dynamic;

    .line 106
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->arrayFrom(Lcom/facebook/react/bridge/Dynamic;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/TextView;->mRotate:Ljava/util/ArrayList;

    .line 107
    invoke-virtual {p0}, Lcom/horcrux/svg/TextView;->invalidate()V

    .line 108
    return-void
.end method

.method public setTextLength(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "length"    # Lcom/facebook/react/bridge/Dynamic;

    .line 64
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/TextView;->mTextLength:Lcom/horcrux/svg/SVGLength;

    .line 65
    invoke-virtual {p0}, Lcom/horcrux/svg/TextView;->invalidate()V

    .line 66
    return-void
.end method

.method public setVerticalAlign(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 5
    .param p1, "dynamicVerticalAlign"    # Lcom/facebook/react/bridge/Dynamic;

    .line 84
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->toString(Lcom/facebook/react/bridge/Dynamic;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "verticalAlign":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 87
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 89
    .local v2, "i":I
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->getEnum(Ljava/lang/String;)Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    move-result-object v3

    iput-object v3, p0, Lcom/horcrux/svg/TextView;->mAlignmentBaseline:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    goto :goto_0

    .line 90
    :catch_0
    move-exception v3

    .line 91
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    sget-object v4, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->baseline:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    iput-object v4, p0, Lcom/horcrux/svg/TextView;->mAlignmentBaseline:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    .line 94
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/horcrux/svg/TextView;->mBaselineShift:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 97
    goto :goto_1

    .line 95
    :catch_1
    move-exception v3

    .line 96
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    iput-object v1, p0, Lcom/horcrux/svg/TextView;->mBaselineShift:Ljava/lang/String;

    .line 98
    .end local v2    # "i":I
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_1
    goto :goto_2

    .line 99
    :cond_0
    sget-object v2, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->baseline:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    iput-object v2, p0, Lcom/horcrux/svg/TextView;->mAlignmentBaseline:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    .line 100
    iput-object v1, p0, Lcom/horcrux/svg/TextView;->mBaselineShift:Ljava/lang/String;

    .line 102
    :goto_2
    invoke-virtual {p0}, Lcom/horcrux/svg/TextView;->invalidate()V

    .line 103
    return-void
.end method
