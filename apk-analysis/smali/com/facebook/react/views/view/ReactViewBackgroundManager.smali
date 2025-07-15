.class public Lcom/facebook/react/views/view/ReactViewBackgroundManager;
.super Ljava/lang/Object;
.source "ReactViewBackgroundManager.java"


# annotations
.annotation runtime Lcom/facebook/react/common/annotations/UnstableReactNativeAPI;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/view/ReactViewBackgroundManager$Overflow;
    }
.end annotation


# instance fields
.field private mCSSBackgroundDrawable:Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

.field private mColor:I

.field private mOverflow:Lcom/facebook/react/views/view/ReactViewBackgroundManager$Overflow;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->mColor:I

    .line 35
    sget-object v0, Lcom/facebook/react/views/view/ReactViewBackgroundManager$Overflow;->VISIBLE:Lcom/facebook/react/views/view/ReactViewBackgroundManager$Overflow;

    iput-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->mOverflow:Lcom/facebook/react/views/view/ReactViewBackgroundManager$Overflow;

    .line 38
    iput-object p1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->mView:Landroid/view/View;

    .line 39
    return-void
.end method

.method private getOrCreateReactViewBackground()Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;
    .locals 5

    .line 48
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->mCSSBackgroundDrawable:Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    if-nez v0, :cond_1

    .line 49
    new-instance v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->mCSSBackgroundDrawable:Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    .line 50
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 51
    .local v0, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->mView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 54
    if-nez v0, :cond_0

    .line 55
    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->mCSSBackgroundDrawable:Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 57
    :cond_0
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->mCSSBackgroundDrawable:Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 59
    .local v1, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    iget-object v2, p0, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->mView:Landroid/view/View;

    invoke-static {v2, v1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 62
    .end local v0    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->mCSSBackgroundDrawable:Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    return-object v0
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 43
    iput-object v1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->mView:Landroid/view/View;

    .line 44
    iput-object v1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->mCSSBackgroundDrawable:Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    .line 45
    return-void
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->mColor:I

    return v0
.end method

.method public getBorderColor(I)I
    .locals 1
    .param p1, "position"    # I

    .line 86
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->getOrCreateReactViewBackground()Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v0

    return v0
.end method

.method public maybeClipToPaddingBox(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 122
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->mOverflow:Lcom/facebook/react/views/view/ReactViewBackgroundManager$Overflow;

    sget-object v1, Lcom/facebook/react/views/view/ReactViewBackgroundManager$Overflow;->VISIBLE:Lcom/facebook/react/views/view/ReactViewBackgroundManager$Overflow;

    if-ne v0, v1, :cond_0

    .line 123
    return-void

    .line 127
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 128
    .local v0, "drawingRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 130
    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->mCSSBackgroundDrawable:Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    .line 131
    .local v1, "cssBackground":Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;
    if-nez v1, :cond_1

    .line 132
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 133
    return-void

    .line 136
    :cond_1
    invoke-virtual {v1}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getPaddingBoxPath()Landroid/graphics/Path;

    move-result-object v2

    .line 137
    .local v2, "paddingBoxPath":Landroid/graphics/Path;
    if-eqz v2, :cond_2

    .line 138
    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->offset(FF)V

    .line 139
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_0

    .line 141
    :cond_2
    invoke-virtual {v1}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getPaddingBoxRect()Landroid/graphics/RectF;

    move-result-object v3

    .line 142
    .local v3, "paddingBoxRect":Landroid/graphics/RectF;
    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 143
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 145
    .end local v3    # "paddingBoxRect":Landroid/graphics/RectF;
    :goto_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 66
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->mCSSBackgroundDrawable:Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    if-nez v0, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->getOrCreateReactViewBackground()Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->setColor(I)V

    .line 71
    :goto_0
    return-void
.end method

.method public setBorderColor(ILjava/lang/Integer;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "color"    # Ljava/lang/Integer;

    .line 82
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->getOrCreateReactViewBackground()Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->setBorderColor(ILjava/lang/Integer;)V

    .line 83
    return-void
.end method

.method public setBorderRadius(F)V
    .locals 1
    .param p1, "borderRadius"    # F

    .line 90
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->getOrCreateReactViewBackground()Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->setRadius(F)V

    .line 91
    return-void
.end method

.method public setBorderRadius(FI)V
    .locals 1
    .param p1, "borderRadius"    # F
    .param p2, "position"    # I

    .line 94
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->getOrCreateReactViewBackground()Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->setRadius(FI)V

    .line 95
    return-void
.end method

.method public setBorderStyle(Ljava/lang/String;)V
    .locals 1
    .param p1, "style"    # Ljava/lang/String;

    .line 98
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->getOrCreateReactViewBackground()Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->setBorderStyle(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public setBorderWidth(IF)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "width"    # F

    .line 78
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->getOrCreateReactViewBackground()Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->setBorderWidth(IF)V

    .line 79
    return-void
.end method

.method public setOverflow(Ljava/lang/String;)V
    .locals 2
    .param p1, "overflow"    # Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->mOverflow:Lcom/facebook/react/views/view/ReactViewBackgroundManager$Overflow;

    .line 104
    .local v0, "lastOverflow":Lcom/facebook/react/views/view/ReactViewBackgroundManager$Overflow;
    const-string v1, "hidden"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    sget-object v1, Lcom/facebook/react/views/view/ReactViewBackgroundManager$Overflow;->HIDDEN:Lcom/facebook/react/views/view/ReactViewBackgroundManager$Overflow;

    iput-object v1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->mOverflow:Lcom/facebook/react/views/view/ReactViewBackgroundManager$Overflow;

    goto :goto_0

    .line 106
    :cond_0
    const-string/jumbo v1, "scroll"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    sget-object v1, Lcom/facebook/react/views/view/ReactViewBackgroundManager$Overflow;->SCROLL:Lcom/facebook/react/views/view/ReactViewBackgroundManager$Overflow;

    iput-object v1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->mOverflow:Lcom/facebook/react/views/view/ReactViewBackgroundManager$Overflow;

    goto :goto_0

    .line 109
    :cond_1
    sget-object v1, Lcom/facebook/react/views/view/ReactViewBackgroundManager$Overflow;->VISIBLE:Lcom/facebook/react/views/view/ReactViewBackgroundManager$Overflow;

    iput-object v1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->mOverflow:Lcom/facebook/react/views/view/ReactViewBackgroundManager$Overflow;

    .line 112
    :goto_0
    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->mOverflow:Lcom/facebook/react/views/view/ReactViewBackgroundManager$Overflow;

    if-eq v0, v1, :cond_2

    .line 113
    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 115
    :cond_2
    return-void
.end method
