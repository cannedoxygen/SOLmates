.class Lcom/horcrux/svg/GroupView;
.super Lcom/horcrux/svg/RenderableView;
.source "GroupView.java"


# instance fields
.field mFont:Lcom/facebook/react/bridge/ReadableMap;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mGlyphContext:Lcom/horcrux/svg/GlyphContext;

.field private mLayerBitmap:Landroid/graphics/Bitmap;

.field private mLayerCanvas:Landroid/graphics/Canvas;

.field private final mLayerPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 2
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;

    .line 38
    invoke-direct {p0, p1}, Lcom/horcrux/svg/RenderableView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/horcrux/svg/GroupView;->mLayerPaint:Landroid/graphics/Paint;

    .line 40
    return-void
.end method

.method private static requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 69
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 70
    return-object p0

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "opacity"    # F

    .line 86
    invoke-virtual {p0, p1}, Lcom/horcrux/svg/GroupView;->setupGlyphContext(Landroid/graphics/Canvas;)V

    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/GroupView;->clip(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 88
    invoke-virtual {p0, p1, p2, p3}, Lcom/horcrux/svg/GroupView;->drawGroup(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    .line 89
    invoke-virtual {p0, p1, p2, p3}, Lcom/horcrux/svg/GroupView;->renderMarkers(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    .line 90
    return-void
.end method

.method drawGroup(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "opacity"    # F

    .line 93
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->pushGlyphContext()V

    .line 94
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v0

    .line 95
    .local v0, "svg":Lcom/horcrux/svg/SvgView;
    move-object v1, p0

    .line 96
    .local v1, "self":Lcom/horcrux/svg/GroupView;
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 98
    .local v2, "groupRect":Landroid/graphics/RectF;
    iget v3, p0, Lcom/horcrux/svg/GroupView;->mOpacity:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    .line 99
    iget-object v3, p0, Lcom/horcrux/svg/GroupView;->mLayerBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    .line 100
    nop

    .line 101
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/horcrux/svg/GroupView;->mLayerBitmap:Landroid/graphics/Bitmap;

    .line 102
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/horcrux/svg/GroupView;->mLayerBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/horcrux/svg/GroupView;->mLayerCanvas:Landroid/graphics/Canvas;

    goto :goto_0

    .line 104
    :cond_0
    iget-object v3, p0, Lcom/horcrux/svg/GroupView;->mLayerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 105
    nop

    .line 106
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/horcrux/svg/GroupView;->mLayerBitmap:Landroid/graphics/Bitmap;

    .line 107
    iget-object v3, p0, Lcom/horcrux/svg/GroupView;->mLayerCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/horcrux/svg/GroupView;->mLayerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 110
    :goto_0
    iget-object v3, p0, Lcom/horcrux/svg/GroupView;->mLayerCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 111
    iget-object v3, p0, Lcom/horcrux/svg/GroupView;->mLayerCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    goto :goto_1

    .line 113
    :cond_1
    iput-object p1, p0, Lcom/horcrux/svg/GroupView;->mLayerCanvas:Landroid/graphics/Canvas;

    .line 116
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/horcrux/svg/GroupView;->elements:Ljava/util/ArrayList;

    .line 117
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_b

    .line 118
    invoke-virtual {p0, v3}, Lcom/horcrux/svg/GroupView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 119
    .local v5, "child":Landroid/view/View;
    instance-of v6, v5, Lcom/horcrux/svg/MaskView;

    if-eqz v6, :cond_2

    .line 120
    goto :goto_4

    .line 122
    :cond_2
    instance-of v6, v5, Lcom/horcrux/svg/VirtualView;

    if-eqz v6, :cond_8

    .line 123
    move-object v6, v5

    check-cast v6, Lcom/horcrux/svg/VirtualView;

    .line 124
    .local v6, "node":Lcom/horcrux/svg/VirtualView;
    const-string v7, "none"

    iget-object v8, v6, Lcom/horcrux/svg/VirtualView;->mDisplay:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 125
    goto :goto_4

    .line 127
    :cond_3
    instance-of v7, v6, Lcom/horcrux/svg/RenderableView;

    if-eqz v7, :cond_4

    .line 128
    move-object v7, v6

    check-cast v7, Lcom/horcrux/svg/RenderableView;

    invoke-virtual {v7, v1}, Lcom/horcrux/svg/RenderableView;->mergeProperties(Lcom/horcrux/svg/RenderableView;)V

    .line 131
    :cond_4
    iget-object v7, p0, Lcom/horcrux/svg/GroupView;->mLayerCanvas:Landroid/graphics/Canvas;

    iget-object v8, p0, Lcom/horcrux/svg/GroupView;->mCTM:Landroid/graphics/Matrix;

    invoke-virtual {v6, v7, v8}, Lcom/horcrux/svg/VirtualView;->saveAndSetupCanvas(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)I

    move-result v7

    .line 132
    .local v7, "count":I
    iget-object v8, p0, Lcom/horcrux/svg/GroupView;->mLayerCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v8, p2, p3}, Lcom/horcrux/svg/VirtualView;->render(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    .line 133
    invoke-virtual {v6}, Lcom/horcrux/svg/VirtualView;->getClientRect()Landroid/graphics/RectF;

    move-result-object v8

    .line 135
    .local v8, "r":Landroid/graphics/RectF;
    if-eqz v8, :cond_5

    .line 136
    invoke-virtual {v2, v8}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 139
    :cond_5
    iget-object v9, p0, Lcom/horcrux/svg/GroupView;->mLayerCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v9, v7}, Lcom/horcrux/svg/VirtualView;->restoreCanvas(Landroid/graphics/Canvas;I)V

    .line 141
    instance-of v9, v6, Lcom/horcrux/svg/RenderableView;

    if-eqz v9, :cond_6

    .line 142
    move-object v9, v6

    check-cast v9, Lcom/horcrux/svg/RenderableView;

    invoke-virtual {v9}, Lcom/horcrux/svg/RenderableView;->resetProperties()V

    .line 145
    :cond_6
    invoke-virtual {v6}, Lcom/horcrux/svg/VirtualView;->isResponsible()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 146
    invoke-virtual {v0}, Lcom/horcrux/svg/SvgView;->enableTouchEvents()V

    .line 149
    :cond_7
    iget-object v9, v6, Lcom/horcrux/svg/VirtualView;->elements:Ljava/util/ArrayList;

    if-eqz v9, :cond_9

    .line 150
    iget-object v9, p0, Lcom/horcrux/svg/GroupView;->elements:Ljava/util/ArrayList;

    iget-object v10, v6, Lcom/horcrux/svg/VirtualView;->elements:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 153
    .end local v6    # "node":Lcom/horcrux/svg/VirtualView;
    .end local v7    # "count":I
    .end local v8    # "r":Landroid/graphics/RectF;
    :cond_8
    instance-of v6, v5, Lcom/horcrux/svg/SvgView;

    if-eqz v6, :cond_9

    .line 154
    move-object v6, v5

    check-cast v6, Lcom/horcrux/svg/SvgView;

    .line 155
    .local v6, "svgView":Lcom/horcrux/svg/SvgView;
    invoke-virtual {v6, p1}, Lcom/horcrux/svg/SvgView;->drawChildren(Landroid/graphics/Canvas;)V

    .line 156
    invoke-virtual {v6}, Lcom/horcrux/svg/SvgView;->isResponsible()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 157
    invoke-virtual {v0}, Lcom/horcrux/svg/SvgView;->enableTouchEvents()V

    goto :goto_4

    .line 153
    .end local v6    # "svgView":Lcom/horcrux/svg/SvgView;
    :cond_9
    :goto_3
    nop

    .line 117
    .end local v5    # "child":Landroid/view/View;
    :cond_a
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 162
    .end local v3    # "i":I
    :cond_b
    iget v3, p0, Lcom/horcrux/svg/GroupView;->mOpacity:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_c

    .line 164
    iget-object v3, p0, Lcom/horcrux/svg/GroupView;->mLayerCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 165
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 166
    .local v3, "saveCount":I
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 167
    iget-object v4, p0, Lcom/horcrux/svg/GroupView;->mLayerPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/horcrux/svg/GroupView;->mOpacity:F

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 168
    iget-object v4, p0, Lcom/horcrux/svg/GroupView;->mLayerBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/horcrux/svg/GroupView;->mLayerPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v6, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 169
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 171
    .end local v3    # "saveCount":I
    :cond_c
    invoke-virtual {p0, v2}, Lcom/horcrux/svg/GroupView;->setClientRect(Landroid/graphics/RectF;)V

    .line 172
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->popGlyphContext()V

    .line 173
    return-void
.end method

.method drawPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "opacity"    # F

    .line 176
    invoke-super {p0, p1, p2, p3}, Lcom/horcrux/svg/RenderableView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    .line 177
    return-void
.end method

.method getGlyphContext()Lcom/horcrux/svg/GlyphContext;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/horcrux/svg/GroupView;->mGlyphContext:Lcom/horcrux/svg/GlyphContext;

    return-object v0
.end method

.method getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 181
    iget-object v0, p0, Lcom/horcrux/svg/GroupView;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/horcrux/svg/GroupView;->mPath:Landroid/graphics/Path;

    return-object v0

    .line 184
    :cond_0
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/GroupView;->mPath:Landroid/graphics/Path;

    .line 186
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 187
    invoke-virtual {p0, v0}, Lcom/horcrux/svg/GroupView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 188
    .local v1, "node":Landroid/view/View;
    instance-of v2, v1, Lcom/horcrux/svg/MaskView;

    if-eqz v2, :cond_1

    .line 189
    goto :goto_1

    .line 191
    :cond_1
    instance-of v2, v1, Lcom/horcrux/svg/VirtualView;

    if-eqz v2, :cond_2

    .line 192
    move-object v2, v1

    check-cast v2, Lcom/horcrux/svg/VirtualView;

    .line 193
    .local v2, "n":Lcom/horcrux/svg/VirtualView;
    iget-object v3, v2, Lcom/horcrux/svg/VirtualView;->mMatrix:Landroid/graphics/Matrix;

    .line 194
    .local v3, "transform":Landroid/graphics/Matrix;
    iget-object v4, p0, Lcom/horcrux/svg/GroupView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2, p1, p2}, Lcom/horcrux/svg/VirtualView;->getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 186
    .end local v1    # "node":Landroid/view/View;
    .end local v2    # "n":Lcom/horcrux/svg/VirtualView;
    .end local v3    # "transform":Landroid/graphics/Matrix;
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    .end local v0    # "i":I
    :cond_3
    iget-object v0, p0, Lcom/horcrux/svg/GroupView;->mPath:Landroid/graphics/Path;

    return-object v0
.end method

.method getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Region$Op;)Landroid/graphics/Path;
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "op"    # Landroid/graphics/Region$Op;

    .line 202
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 204
    .local v0, "path":Landroid/graphics/Path;
    nop

    .line 205
    invoke-virtual {p3}, Landroid/graphics/Region$Op;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Path$Op;->valueOf(Ljava/lang/String;)Landroid/graphics/Path$Op;

    move-result-object v1

    .line 206
    .local v1, "pop":Landroid/graphics/Path$Op;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 207
    invoke-virtual {p0, v2}, Lcom/horcrux/svg/GroupView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 208
    .local v3, "node":Landroid/view/View;
    instance-of v4, v3, Lcom/horcrux/svg/MaskView;

    if-eqz v4, :cond_0

    .line 209
    goto :goto_2

    .line 211
    :cond_0
    instance-of v4, v3, Lcom/horcrux/svg/VirtualView;

    if-eqz v4, :cond_2

    .line 212
    move-object v4, v3

    check-cast v4, Lcom/horcrux/svg/VirtualView;

    .line 213
    .local v4, "n":Lcom/horcrux/svg/VirtualView;
    iget-object v5, v4, Lcom/horcrux/svg/VirtualView;->mMatrix:Landroid/graphics/Matrix;

    .line 215
    .local v5, "transform":Landroid/graphics/Matrix;
    instance-of v6, v4, Lcom/horcrux/svg/GroupView;

    if-eqz v6, :cond_1

    .line 216
    move-object v6, v4

    check-cast v6, Lcom/horcrux/svg/GroupView;

    invoke-virtual {v6, p1, p2, p3}, Lcom/horcrux/svg/GroupView;->getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Region$Op;)Landroid/graphics/Path;

    move-result-object v6

    .local v6, "p2":Landroid/graphics/Path;
    goto :goto_1

    .line 218
    .end local v6    # "p2":Landroid/graphics/Path;
    :cond_1
    invoke-virtual {v4, p1, p2}, Lcom/horcrux/svg/VirtualView;->getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;

    move-result-object v6

    .line 220
    .restart local v6    # "p2":Landroid/graphics/Path;
    :goto_1
    invoke-virtual {v6, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 221
    invoke-virtual {v0, v6, v1}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 206
    .end local v3    # "node":Landroid/view/View;
    .end local v4    # "n":Lcom/horcrux/svg/VirtualView;
    .end local v5    # "transform":Landroid/graphics/Matrix;
    .end local v6    # "p2":Landroid/graphics/Path;
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 224
    .end local v1    # "pop":Landroid/graphics/Path$Op;
    .end local v2    # "i":I
    :cond_3
    nop

    .line 253
    return-object v0
.end method

.method getTextRootGlyphContext()Lcom/horcrux/svg/GlyphContext;
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->getTextRoot()Lcom/horcrux/svg/GroupView;

    move-result-object v0

    invoke-static {v0}, Lcom/horcrux/svg/GroupView;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/horcrux/svg/GroupView;

    invoke-virtual {v0}, Lcom/horcrux/svg/GroupView;->getGlyphContext()Lcom/horcrux/svg/GlyphContext;

    move-result-object v0

    return-object v0
.end method

.method hitTest([F)I
    .locals 12
    .param p1, "src"    # [F

    .line 258
    iget-boolean v0, p0, Lcom/horcrux/svg/GroupView;->mInvertible:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 259
    return v1

    .line 262
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 263
    .local v0, "dst":[F
    iget-object v2, p0, Lcom/horcrux/svg/GroupView;->mInvMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, p1}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 264
    iget-object v2, p0, Lcom/horcrux/svg/GroupView;->mInvTransform:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 266
    const/4 v2, 0x0

    aget v3, v0, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 267
    .local v3, "x":I
    const/4 v4, 0x1

    aget v5, v0, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 269
    .local v5, "y":I
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->getClipPath()Landroid/graphics/Path;

    move-result-object v6

    .line 270
    .local v6, "clipPath":Landroid/graphics/Path;
    if-eqz v6, :cond_2

    .line 271
    iget-object v7, p0, Lcom/horcrux/svg/GroupView;->mClipRegionPath:Landroid/graphics/Path;

    if-eq v7, v6, :cond_1

    .line 272
    iput-object v6, p0, Lcom/horcrux/svg/GroupView;->mClipRegionPath:Landroid/graphics/Path;

    .line 273
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iput-object v7, p0, Lcom/horcrux/svg/GroupView;->mClipBounds:Landroid/graphics/RectF;

    .line 274
    iget-object v7, p0, Lcom/horcrux/svg/GroupView;->mClipBounds:Landroid/graphics/RectF;

    invoke-virtual {v6, v7, v4}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 275
    iget-object v7, p0, Lcom/horcrux/svg/GroupView;->mClipBounds:Landroid/graphics/RectF;

    invoke-virtual {p0, v6, v7}, Lcom/horcrux/svg/GroupView;->getRegion(Landroid/graphics/Path;Landroid/graphics/RectF;)Landroid/graphics/Region;

    move-result-object v7

    iput-object v7, p0, Lcom/horcrux/svg/GroupView;->mClipRegion:Landroid/graphics/Region;

    .line 277
    :cond_1
    iget-object v7, p0, Lcom/horcrux/svg/GroupView;->mClipRegion:Landroid/graphics/Region;

    invoke-virtual {v7, v3, v5}, Landroid/graphics/Region;->contains(II)Z

    move-result v7

    if-nez v7, :cond_2

    .line 278
    return v1

    .line 282
    :cond_2
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->getChildCount()I

    move-result v7

    sub-int/2addr v7, v4

    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_a

    .line 283
    invoke-virtual {p0, v7}, Lcom/horcrux/svg/GroupView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 284
    .local v8, "child":Landroid/view/View;
    instance-of v9, v8, Lcom/horcrux/svg/VirtualView;

    if-eqz v9, :cond_7

    .line 285
    instance-of v9, v8, Lcom/horcrux/svg/MaskView;

    if-eqz v9, :cond_3

    .line 286
    goto :goto_4

    .line 289
    :cond_3
    move-object v9, v8

    check-cast v9, Lcom/horcrux/svg/VirtualView;

    .line 291
    .local v9, "node":Lcom/horcrux/svg/VirtualView;
    invoke-virtual {v9, v0}, Lcom/horcrux/svg/VirtualView;->hitTest([F)I

    move-result v10

    .line 292
    .local v10, "hitChild":I
    if-eq v10, v1, :cond_6

    .line 293
    invoke-virtual {v9}, Lcom/horcrux/svg/VirtualView;->isResponsible()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v10, v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->getId()I

    move-result v1

    goto :goto_2

    :cond_5
    :goto_1
    move v1, v10

    :goto_2
    return v1

    .line 292
    .end local v9    # "node":Lcom/horcrux/svg/VirtualView;
    .end local v10    # "hitChild":I
    :cond_6
    goto :goto_3

    .line 295
    :cond_7
    instance-of v9, v8, Lcom/horcrux/svg/SvgView;

    if-eqz v9, :cond_8

    .line 296
    move-object v9, v8

    check-cast v9, Lcom/horcrux/svg/SvgView;

    .line 298
    .local v9, "node":Lcom/horcrux/svg/SvgView;
    aget v10, v0, v2

    aget v11, v0, v4

    invoke-virtual {v9, v10, v11}, Lcom/horcrux/svg/SvgView;->reactTagForTouch(FF)I

    move-result v10

    .line 299
    .restart local v10    # "hitChild":I
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v11

    if-eq v10, v11, :cond_9

    .line 300
    return v10

    .line 295
    .end local v9    # "node":Lcom/horcrux/svg/SvgView;
    .end local v10    # "hitChild":I
    :cond_8
    :goto_3
    nop

    .line 282
    .end local v8    # "child":Landroid/view/View;
    :cond_9
    :goto_4
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 305
    .end local v7    # "i":I
    :cond_a
    return v1
.end method

.method popGlyphContext()V
    .locals 1

    .line 82
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->getTextRootGlyphContext()Lcom/horcrux/svg/GlyphContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/horcrux/svg/GlyphContext;->popContext()V

    .line 83
    return-void
.end method

.method pushGlyphContext()V
    .locals 2

    .line 78
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->getTextRootGlyphContext()Lcom/horcrux/svg/GlyphContext;

    move-result-object v0

    iget-object v1, p0, Lcom/horcrux/svg/GroupView;->mFont:Lcom/facebook/react/bridge/ReadableMap;

    invoke-virtual {v0, p0, v1}, Lcom/horcrux/svg/GlyphContext;->pushContext(Lcom/horcrux/svg/GroupView;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 79
    return-void
.end method

.method resetProperties()V
    .locals 3

    .line 323
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 324
    invoke-virtual {p0, v0}, Lcom/horcrux/svg/GroupView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 325
    .local v1, "node":Landroid/view/View;
    instance-of v2, v1, Lcom/horcrux/svg/RenderableView;

    if-eqz v2, :cond_0

    .line 326
    move-object v2, v1

    check-cast v2, Lcom/horcrux/svg/RenderableView;

    invoke-virtual {v2}, Lcom/horcrux/svg/RenderableView;->resetProperties()V

    .line 323
    .end local v1    # "node":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method saveDefinition()V
    .locals 3

    .line 309
    iget-object v0, p0, Lcom/horcrux/svg/GroupView;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v0

    iget-object v1, p0, Lcom/horcrux/svg/GroupView;->mName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/horcrux/svg/SvgView;->defineTemplate(Lcom/horcrux/svg/VirtualView;Ljava/lang/String;)V

    .line 313
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 314
    invoke-virtual {p0, v0}, Lcom/horcrux/svg/GroupView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 315
    .local v1, "node":Landroid/view/View;
    instance-of v2, v1, Lcom/horcrux/svg/VirtualView;

    if-eqz v2, :cond_1

    .line 316
    move-object v2, v1

    check-cast v2, Lcom/horcrux/svg/VirtualView;

    invoke-virtual {v2}, Lcom/horcrux/svg/VirtualView;->saveDefinition()V

    .line 313
    .end local v1    # "node":Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 319
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public setFont(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 2
    .param p1, "dynamic"    # Lcom/facebook/react/bridge/Dynamic;

    .line 43
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v0

    sget-object v1, Lcom/facebook/react/bridge/ReadableType;->Map:Lcom/facebook/react/bridge/ReadableType;

    if-ne v0, v1, :cond_0

    .line 44
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asMap()Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/GroupView;->mFont:Lcom/facebook/react/bridge/ReadableMap;

    goto :goto_0

    .line 46
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/horcrux/svg/GroupView;->mFont:Lcom/facebook/react/bridge/ReadableMap;

    .line 48
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->invalidate()V

    .line 49
    return-void
.end method

.method public setFont(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0
    .param p1, "font"    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 52
    iput-object p1, p0, Lcom/horcrux/svg/GroupView;->mFont:Lcom/facebook/react/bridge/ReadableMap;

    .line 53
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->invalidate()V

    .line 54
    return-void
.end method

.method setupGlyphContext(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 57
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 58
    .local v0, "clipBounds":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/horcrux/svg/GroupView;->mMatrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/horcrux/svg/GroupView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 61
    :cond_0
    new-instance v1, Lcom/horcrux/svg/GlyphContext;

    iget v2, p0, Lcom/horcrux/svg/GroupView;->mScale:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/horcrux/svg/GlyphContext;-><init>(FFF)V

    iput-object v1, p0, Lcom/horcrux/svg/GroupView;->mGlyphContext:Lcom/horcrux/svg/GlyphContext;

    .line 62
    return-void
.end method
