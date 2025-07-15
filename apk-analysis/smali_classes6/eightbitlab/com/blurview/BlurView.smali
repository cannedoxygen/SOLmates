.class public Leightbitlab/com/blurview/BlurView;
.super Landroid/widget/FrameLayout;
.source "BlurView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field blurController:Leightbitlab/com/blurview/BlurController;

.field private overlayColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leightbitlab/com/blurview/BlurView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Leightbitlab/com/blurview/NoOpController;

    invoke-direct {v0}, Leightbitlab/com/blurview/NoOpController;-><init>()V

    iput-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    .line 33
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Leightbitlab/com/blurview/BlurView;->init(Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance v0, Leightbitlab/com/blurview/NoOpController;

    invoke-direct {v0}, Leightbitlab/com/blurview/NoOpController;-><init>()V

    iput-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Leightbitlab/com/blurview/BlurView;->init(Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance v0, Leightbitlab/com/blurview/NoOpController;

    invoke-direct {v0}, Leightbitlab/com/blurview/NoOpController;-><init>()V

    iput-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    .line 43
    invoke-direct {p0, p2, p3}, Leightbitlab/com/blurview/BlurView;->init(Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method private getBlurAlgorithm()Leightbitlab/com/blurview/BlurAlgorithm;
    .locals 2

    .line 146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 147
    new-instance v0, Leightbitlab/com/blurview/RenderEffectBlur;

    invoke-direct {v0}, Leightbitlab/com/blurview/RenderEffectBlur;-><init>()V

    .local v0, "algorithm":Leightbitlab/com/blurview/BlurAlgorithm;
    goto :goto_0

    .line 149
    .end local v0    # "algorithm":Leightbitlab/com/blurview/BlurAlgorithm;
    :cond_0
    new-instance v0, Leightbitlab/com/blurview/RenderScriptBlur;

    invoke-virtual {p0}, Leightbitlab/com/blurview/BlurView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Leightbitlab/com/blurview/RenderScriptBlur;-><init>(Landroid/content/Context;)V

    .line 151
    .restart local v0    # "algorithm":Leightbitlab/com/blurview/BlurAlgorithm;
    :goto_0
    return-object v0
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .line 47
    invoke-virtual {p0}, Leightbitlab/com/blurview/BlurView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Leightbitlab/com/blurview/R$styleable;->BlurView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 48
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Leightbitlab/com/blurview/R$styleable;->BlurView_blurOverlayColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Leightbitlab/com/blurview/BlurView;->overlayColor:I

    .line 49
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 54
    iget-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    invoke-interface {v0, p1}, Leightbitlab/com/blurview/BlurController;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    .line 55
    .local v0, "shouldDraw":Z
    if-eqz v0, :cond_0

    .line 56
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 58
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 74
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 75
    invoke-virtual {p0}, Leightbitlab/com/blurview/BlurView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    sget-object v0, Leightbitlab/com/blurview/BlurView;->TAG:Ljava/lang/String;

    const-string v1, "BlurView can\'t be used in not hardware-accelerated window!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Leightbitlab/com/blurview/BlurController;->setBlurAutoUpdate(Z)Leightbitlab/com/blurview/BlurViewFacade;

    .line 80
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 68
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 69
    iget-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Leightbitlab/com/blurview/BlurController;->setBlurAutoUpdate(Z)Leightbitlab/com/blurview/BlurViewFacade;

    .line 70
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 63
    iget-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    invoke-interface {v0}, Leightbitlab/com/blurview/BlurController;->updateBlurViewSize()V

    .line 64
    return-void
.end method

.method public setBlurAutoUpdate(Z)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 1
    .param p1, "enabled"    # Z

    .line 132
    iget-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    invoke-interface {v0, p1}, Leightbitlab/com/blurview/BlurController;->setBlurAutoUpdate(Z)Leightbitlab/com/blurview/BlurViewFacade;

    move-result-object v0

    return-object v0
.end method

.method public setBlurEnabled(Z)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 1
    .param p1, "enabled"    # Z

    .line 139
    iget-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    invoke-interface {v0, p1}, Leightbitlab/com/blurview/BlurController;->setBlurEnabled(Z)Leightbitlab/com/blurview/BlurViewFacade;

    move-result-object v0

    return-object v0
.end method

.method public setBlurRadius(F)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 1
    .param p1, "radius"    # F

    .line 117
    iget-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    invoke-interface {v0, p1}, Leightbitlab/com/blurview/BlurController;->setBlurRadius(F)Leightbitlab/com/blurview/BlurViewFacade;

    move-result-object v0

    return-object v0
.end method

.method public setOverlayColor(I)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 1
    .param p1, "overlayColor"    # I

    .line 124
    iput p1, p0, Leightbitlab/com/blurview/BlurView;->overlayColor:I

    .line 125
    iget-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    invoke-interface {v0, p1}, Leightbitlab/com/blurview/BlurController;->setOverlayColor(I)Leightbitlab/com/blurview/BlurViewFacade;

    move-result-object v0

    return-object v0
.end method

.method public setupWith(Landroid/view/ViewGroup;)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 1
    .param p1, "rootView"    # Landroid/view/ViewGroup;

    .line 108
    invoke-direct {p0}, Leightbitlab/com/blurview/BlurView;->getBlurAlgorithm()Leightbitlab/com/blurview/BlurAlgorithm;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Leightbitlab/com/blurview/BlurView;->setupWith(Landroid/view/ViewGroup;Leightbitlab/com/blurview/BlurAlgorithm;)Leightbitlab/com/blurview/BlurViewFacade;

    move-result-object v0

    return-object v0
.end method

.method public setupWith(Landroid/view/ViewGroup;Leightbitlab/com/blurview/BlurAlgorithm;)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 2
    .param p1, "rootView"    # Landroid/view/ViewGroup;
    .param p2, "algorithm"    # Leightbitlab/com/blurview/BlurAlgorithm;

    .line 90
    iget-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    invoke-interface {v0}, Leightbitlab/com/blurview/BlurController;->destroy()V

    .line 91
    new-instance v0, Leightbitlab/com/blurview/PreDrawBlurController;

    iget v1, p0, Leightbitlab/com/blurview/BlurView;->overlayColor:I

    invoke-direct {v0, p0, p1, v1, p2}, Leightbitlab/com/blurview/PreDrawBlurController;-><init>(Landroid/view/View;Landroid/view/ViewGroup;ILeightbitlab/com/blurview/BlurAlgorithm;)V

    .line 92
    .local v0, "blurController":Leightbitlab/com/blurview/BlurController;
    iput-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    .line 94
    return-object v0
.end method
