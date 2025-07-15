.class Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController$2;
.super Ljava/lang/Object;
.source "LayoutAnimationController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->applyLayoutUpdate(Landroid/view/View;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

.field final synthetic val$reactTag:I


# direct methods
.method constructor <init>(Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 131
    iput-object p1, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController$2;->this$0:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

    iput p2, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController$2;->val$reactTag:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 139
    iget-object v0, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController$2;->this$0:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

    invoke-static {v0}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->-$$Nest$fgetmLayoutHandlers(Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController$2;->val$reactTag:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 140
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 143
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 134
    iget-object v0, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController$2;->this$0:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

    invoke-static {v0}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->-$$Nest$fgetmLayoutHandlers(Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController$2;->val$reactTag:I

    move-object v2, p1

    check-cast v2, Lcom/facebook/react/uimanager/layoutanimation/LayoutHandlingAnimation;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 135
    return-void
.end method
