.class Lcom/facebook/react/uimanager/layoutanimation/OpacityAnimation$OpacityAnimationListener;
.super Ljava/lang/Object;
.source "OpacityAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/uimanager/layoutanimation/OpacityAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OpacityAnimationListener"
.end annotation


# instance fields
.field private mLayerTypeChanged:Z

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/uimanager/layoutanimation/OpacityAnimation$OpacityAnimationListener;->mLayerTypeChanged:Z

    .line 28
    iput-object p1, p0, Lcom/facebook/react/uimanager/layoutanimation/OpacityAnimation$OpacityAnimationListener;->mView:Landroid/view/View;

    .line 29
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 41
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/layoutanimation/OpacityAnimation$OpacityAnimationListener;->mLayerTypeChanged:Z

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/facebook/react/uimanager/layoutanimation/OpacityAnimation$OpacityAnimationListener;->mView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 44
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 49
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 33
    iget-object v0, p0, Lcom/facebook/react/uimanager/layoutanimation/OpacityAnimation$OpacityAnimationListener;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/uimanager/layoutanimation/OpacityAnimation$OpacityAnimationListener;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayerType()I

    move-result v0

    if-nez v0, :cond_0

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/uimanager/layoutanimation/OpacityAnimation$OpacityAnimationListener;->mLayerTypeChanged:Z

    .line 35
    iget-object v0, p0, Lcom/facebook/react/uimanager/layoutanimation/OpacityAnimation$OpacityAnimationListener;->mView:Landroid/view/View;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 37
    :cond_0
    return-void
.end method
