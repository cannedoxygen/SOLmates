.class Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper$1;
.super Ljava/lang/Object;
.source "ViewGroupDrawingOrderHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->getChildDrawingOrder(II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;


# direct methods
.method constructor <init>(Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    .line 91
    iput-object p1, p0, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper$1;->this$0:Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .locals 4
    .param p1, "view1"    # Landroid/view/View;
    .param p2, "view2"    # Landroid/view/View;

    .line 94
    invoke-static {p1}, Lcom/facebook/react/uimanager/ViewGroupManager;->getViewZIndex(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object v0

    .line 95
    .local v0, "view1ZIndex":Ljava/lang/Integer;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 96
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 99
    :cond_0
    invoke-static {p2}, Lcom/facebook/react/uimanager/ViewGroupManager;->getViewZIndex(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object v2

    .line 100
    .local v2, "view2ZIndex":Ljava/lang/Integer;
    if-nez v2, :cond_1

    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 104
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v1, v3

    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 91
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper$1;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result p1

    return p1
.end method
