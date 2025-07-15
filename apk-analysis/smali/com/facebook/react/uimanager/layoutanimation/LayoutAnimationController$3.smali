.class Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController$3;
.super Ljava/lang/Object;
.source "LayoutAnimationController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->deleteView(Landroid/view/View;Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

.field final synthetic val$listener:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationListener;


# direct methods
.method constructor <init>(Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 179
    iput-object p1, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController$3;->this$0:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

    iput-object p2, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController$3;->val$listener:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "anim"    # Landroid/view/animation/Animation;

    .line 188
    iget-object v0, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController$3;->val$listener:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationListener;

    invoke-interface {v0}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationListener;->onAnimationEnd()V

    .line 189
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "anim"    # Landroid/view/animation/Animation;

    .line 184
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "anim"    # Landroid/view/animation/Animation;

    .line 181
    return-void
.end method
