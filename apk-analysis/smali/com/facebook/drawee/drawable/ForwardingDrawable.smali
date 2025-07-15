.class public Lcom/facebook/drawee/drawable/ForwardingDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ForwardingDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Lcom/facebook/drawee/drawable/TransformCallback;
.implements Lcom/facebook/drawee/drawable/TransformAwareDrawable;
.implements Lcom/facebook/drawee/drawable/DrawableParent;


# static fields
.field private static final sTempTransform:Landroid/graphics/Matrix;


# instance fields
.field private mCurrentDelegate:Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mDrawableProperties:Lcom/facebook/drawee/drawable/DrawableProperties;

.field protected mTransformCallback:Lcom/facebook/drawee/drawable/TransformCallback;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->sTempTransform:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 53
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 38
    new-instance v0, Lcom/facebook/drawee/drawable/DrawableProperties;

    invoke-direct {v0}, Lcom/facebook/drawee/drawable/DrawableProperties;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mDrawableProperties:Lcom/facebook/drawee/drawable/DrawableProperties;

    .line 54
    iput-object p1, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mCurrentDelegate:Landroid/graphics/drawable/Drawable;

    .line 55
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mCurrentDelegate:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p0, p0}, Lcom/facebook/drawee/drawable/DrawableUtils;->setCallbacks(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable$Callback;Lcom/facebook/drawee/drawable/TransformCallback;)V

    .line 56
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 186
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mCurrentDelegate:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mCurrentDelegate:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 189
    :cond_0
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mCurrentDelegate:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 151
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    return-object v0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mCurrentDelegate:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    return-object v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mCurrentDelegate:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 242
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/ForwardingDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mCurrentDelegate:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 203
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mCurrentDelegate:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mCurrentDelegate:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 194
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mCurrentDelegate:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mCurrentDelegate:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x0

    return v0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mCurrentDelegate:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "padding"    # Landroid/graphics/Rect;

    .line 211
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mCurrentDelegate:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 212
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mCurrentDelegate:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method protected getParentTransform(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "transform"    # Landroid/graphics/Matrix;

    .line 272
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mTransformCallback:Lcom/facebook/drawee/drawable/TransformCallback;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mTransformCallback:Lcom/facebook/drawee/drawable/TransformCallback;

    invoke-interface {v0, p1}, Lcom/facebook/drawee/drawable/TransformCallback;->getTransform(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 275
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 277
    :goto_0
    return-void
.end method

.method public getRootBounds(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/RectF;

    .line 286
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mTransformCallback:Lcom/facebook/drawee/drawable/TransformCallback;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mTransformCallback:Lcom/facebook/drawee/drawable/TransformCallback;

    invoke-interface {v0, p1}, Lcom/facebook/drawee/drawable/TransformCallback;->getRootBounds(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/ForwardingDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 291
    :goto_0
    return-void
.end method

.method public getTransform(Landroid/graphics/Matrix;)V
    .locals 0
    .param p1, "transform"    # Landroid/graphics/Matrix;

    .line 281
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/drawable/ForwardingDrawable;->getParentTransform(Landroid/graphics/Matrix;)V

    .line 282
    return-void
.end method

.method public getTransformedBounds(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "outBounds"    # Landroid/graphics/RectF;

    .line 300
    sget-object v0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->sTempTransform:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/facebook/drawee/drawable/ForwardingDrawable;->getParentTransform(Landroid/graphics/Matrix;)V

    .line 303
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/ForwardingDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 304
    sget-object v0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->sTempTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 305
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 249
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/ForwardingDrawable;->invalidateSelf()V

    .line 250
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mCurrentDelegate:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 160
    const/4 v0, 0x0

    return v0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mCurrentDelegate:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mCurrentDelegate:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mCurrentDelegate:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 224
    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 143
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mCurrentDelegate:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mCurrentDelegate:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 146
    :cond_0
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .line 177
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mCurrentDelegate:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 178
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    move-result v0

    return v0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mCurrentDelegate:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 1
    .param p1, "state"    # [I

    .line 168
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mCurrentDelegate:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 169
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    return v0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mCurrentDelegate:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .line 254
    invoke-virtual {p0, p2, p3, p4}, Lcom/facebook/drawee/drawable/ForwardingDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 255
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 101
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mDrawableProperties:Lcom/facebook/drawee/drawable/DrawableProperties;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/drawable/DrawableProperties;->setAlpha(I)V

    .line 102
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mCurrentDelegate:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mCurrentDelegate:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 105
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 109
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mDrawableProperties:Lcom/facebook/drawee/drawable/DrawableProperties;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/drawable/DrawableProperties;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 110
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mCurrentDelegate:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mCurrentDelegate:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 113
    :cond_0
    return-void
.end method

.method public setCurrent(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "newDelegate"    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 67
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/drawable/ForwardingDrawable;->setCurrentWithoutInvalidate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 68
    .local v0, "previousDelegate":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/ForwardingDrawable;->invalidateSelf()V

    .line 69
    return-object v0
.end method

.method protected setCurrentWithoutInvalidate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "newDelegate"    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mCurrentDelegate:Landroid/graphics/drawable/Drawable;

    .line 81
    .local v0, "previousDelegate":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/facebook/drawee/drawable/DrawableUtils;->setCallbacks(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable$Callback;Lcom/facebook/drawee/drawable/TransformCallback;)V

    .line 82
    invoke-static {p1, v1, v1}, Lcom/facebook/drawee/drawable/DrawableUtils;->setCallbacks(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable$Callback;Lcom/facebook/drawee/drawable/TransformCallback;)V

    .line 83
    iget-object v1, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mDrawableProperties:Lcom/facebook/drawee/drawable/DrawableProperties;

    invoke-static {p1, v1}, Lcom/facebook/drawee/drawable/DrawableUtils;->setDrawableProperties(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/DrawableProperties;)V

    .line 84
    invoke-static {p1, p0}, Lcom/facebook/drawee/drawable/DrawableUtils;->copyProperties(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 85
    invoke-static {p1, p0, p0}, Lcom/facebook/drawee/drawable/DrawableUtils;->setCallbacks(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable$Callback;Lcom/facebook/drawee/drawable/TransformCallback;)V

    .line 86
    iput-object p1, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mCurrentDelegate:Landroid/graphics/drawable/Drawable;

    .line 87
    return-object v0
.end method

.method public setDither(Z)V
    .locals 1
    .param p1, "dither"    # Z

    .line 117
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mDrawableProperties:Lcom/facebook/drawee/drawable/DrawableProperties;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/drawable/DrawableProperties;->setDither(Z)V

    .line 118
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mCurrentDelegate:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mCurrentDelegate:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 121
    :cond_0
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "newDrawable"    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 237
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/drawable/ForwardingDrawable;->setCurrent(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .param p1, "filterBitmap"    # Z

    .line 125
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mDrawableProperties:Lcom/facebook/drawee/drawable/DrawableProperties;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/drawable/DrawableProperties;->setFilterBitmap(Z)V

    .line 126
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mCurrentDelegate:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mCurrentDelegate:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 129
    :cond_0
    return-void
.end method

.method public setHotspot(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 310
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mCurrentDelegate:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mCurrentDelegate:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 313
    :cond_0
    return-void
.end method

.method public setTransformCallback(Lcom/facebook/drawee/drawable/TransformCallback;)V
    .locals 0
    .param p1, "transformCallback"    # Lcom/facebook/drawee/drawable/TransformCallback;

    .line 266
    iput-object p1, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mTransformCallback:Lcom/facebook/drawee/drawable/TransformCallback;

    .line 267
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .line 133
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 134
    .local v0, "superResult":Z
    iget-object v1, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mCurrentDelegate:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 135
    return v0

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mCurrentDelegate:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    return v1
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .line 259
    invoke-virtual {p0, p2}, Lcom/facebook/drawee/drawable/ForwardingDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 260
    return-void
.end method
