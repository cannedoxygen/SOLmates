.class Lcom/horcrux/svg/VirtualViewManager$1;
.super Ljava/lang/Object;
.source "RenderableViewManager.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/horcrux/svg/VirtualViewManager;->addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/horcrux/svg/VirtualView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/horcrux/svg/VirtualViewManager;


# direct methods
.method constructor <init>(Lcom/horcrux/svg/VirtualViewManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/horcrux/svg/VirtualViewManager;

    .line 434
    .local p0, "this":Lcom/horcrux/svg/VirtualViewManager$1;, "Lcom/horcrux/svg/VirtualViewManager$1;"
    iput-object p1, p0, Lcom/horcrux/svg/VirtualViewManager$1;->this$0:Lcom/horcrux/svg/VirtualViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "view1"    # Landroid/view/View;

    .line 437
    .local p0, "this":Lcom/horcrux/svg/VirtualViewManager$1;, "Lcom/horcrux/svg/VirtualViewManager$1;"
    instance-of v0, p1, Lcom/horcrux/svg/VirtualView;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/horcrux/svg/VirtualViewManager$1;->this$0:Lcom/horcrux/svg/VirtualViewManager;

    move-object v1, p1

    check-cast v1, Lcom/horcrux/svg/VirtualView;

    invoke-static {v0, v1}, Lcom/horcrux/svg/VirtualViewManager;->-$$Nest$minvalidateSvgView(Lcom/horcrux/svg/VirtualViewManager;Lcom/horcrux/svg/VirtualView;)V

    .line 440
    :cond_0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "view1"    # Landroid/view/View;

    .line 444
    .local p0, "this":Lcom/horcrux/svg/VirtualViewManager$1;, "Lcom/horcrux/svg/VirtualViewManager$1;"
    instance-of v0, p1, Lcom/horcrux/svg/VirtualView;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/horcrux/svg/VirtualViewManager$1;->this$0:Lcom/horcrux/svg/VirtualViewManager;

    move-object v1, p1

    check-cast v1, Lcom/horcrux/svg/VirtualView;

    invoke-static {v0, v1}, Lcom/horcrux/svg/VirtualViewManager;->-$$Nest$minvalidateSvgView(Lcom/horcrux/svg/VirtualViewManager;Lcom/horcrux/svg/VirtualView;)V

    .line 447
    :cond_0
    return-void
.end method
