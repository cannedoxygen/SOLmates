.class Lcom/facebook/react/views/view/ReactViewManager$1;
.super Ljava/lang/Object;
.source "ReactViewManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/views/view/ReactViewManager;->setFocusable(Lcom/facebook/react/views/view/ReactViewGroup;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/views/view/ReactViewManager;

.field final synthetic val$view:Lcom/facebook/react/views/view/ReactViewGroup;


# direct methods
.method constructor <init>(Lcom/facebook/react/views/view/ReactViewManager;Lcom/facebook/react/views/view/ReactViewGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/views/view/ReactViewManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 325
    iput-object p1, p0, Lcom/facebook/react/views/view/ReactViewManager$1;->this$0:Lcom/facebook/react/views/view/ReactViewManager;

    iput-object p2, p0, Lcom/facebook/react/views/view/ReactViewManager$1;->val$view:Lcom/facebook/react/views/view/ReactViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 328
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewManager$1;->val$view:Lcom/facebook/react/views/view/ReactViewGroup;

    .line 330
    invoke-virtual {v0}, Lcom/facebook/react/views/view/ReactViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewManager$1;->val$view:Lcom/facebook/react/views/view/ReactViewGroup;

    invoke-virtual {v1}, Lcom/facebook/react/views/view/ReactViewGroup;->getId()I

    move-result v1

    .line 329
    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    .line 331
    .local v0, "mEventDispatcher":Lcom/facebook/react/uimanager/events/EventDispatcher;
    if-nez v0, :cond_0

    .line 332
    return-void

    .line 334
    :cond_0
    new-instance v1, Lcom/facebook/react/views/view/ViewGroupClickEvent;

    iget-object v2, p0, Lcom/facebook/react/views/view/ReactViewManager$1;->val$view:Lcom/facebook/react/views/view/ReactViewGroup;

    .line 336
    invoke-virtual {v2}, Lcom/facebook/react/views/view/ReactViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/facebook/react/views/view/ReactViewManager$1;->val$view:Lcom/facebook/react/views/view/ReactViewGroup;

    invoke-virtual {v3}, Lcom/facebook/react/views/view/ReactViewGroup;->getId()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/facebook/react/views/view/ViewGroupClickEvent;-><init>(II)V

    .line 334
    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 337
    return-void
.end method
