.class public abstract Lcom/facebook/react/views/view/ReactClippingViewManager;
.super Lcom/facebook/react/uimanager/ViewGroupManager;
.source "ReactClippingViewManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/facebook/react/views/view/ReactViewGroup;",
        ">",
        "Lcom/facebook/react/uimanager/ViewGroupManager<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    .local p0, "this":Lcom/facebook/react/views/view/ReactClippingViewManager;, "Lcom/facebook/react/views/view/ReactClippingViewManager<TT;>;"
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ViewGroupManager;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic addView(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 21
    .local p0, "this":Lcom/facebook/react/views/view/ReactClippingViewManager;, "Lcom/facebook/react/views/view/ReactClippingViewManager<TT;>;"
    check-cast p1, Lcom/facebook/react/views/view/ReactViewGroup;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/react/views/view/ReactClippingViewManager;->addView(Lcom/facebook/react/views/view/ReactViewGroup;Landroid/view/View;I)V

    return-void
.end method

.method public bridge synthetic addView(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    .line 21
    .local p0, "this":Lcom/facebook/react/views/view/ReactClippingViewManager;, "Lcom/facebook/react/views/view/ReactClippingViewManager<TT;>;"
    check-cast p1, Lcom/facebook/react/views/view/ReactViewGroup;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/react/views/view/ReactClippingViewManager;->addView(Lcom/facebook/react/views/view/ReactViewGroup;Landroid/view/View;I)V

    return-void
.end method

.method public addView(Lcom/facebook/react/views/view/ReactViewGroup;Landroid/view/View;I)V
    .locals 1
    .param p2, "child"    # Landroid/view/View;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .line 35
    .local p0, "this":Lcom/facebook/react/views/view/ReactClippingViewManager;, "Lcom/facebook/react/views/view/ReactClippingViewManager<TT;>;"
    .local p1, "parent":Lcom/facebook/react/views/view/ReactViewGroup;, "TT;"
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 37
    invoke-virtual {p1}, Lcom/facebook/react/views/view/ReactViewGroup;->getRemoveClippedSubviews()Z

    move-result v0

    .line 38
    .local v0, "removeClippedSubviews":Z
    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p1, p2, p3}, Lcom/facebook/react/views/view/ReactViewGroup;->addViewWithSubviewClippingEnabled(Landroid/view/View;I)V

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/facebook/react/views/view/ReactViewGroup;->addView(Landroid/view/View;I)V

    .line 43
    :goto_0
    return-void
.end method

.method public bridge synthetic getChildAt(Landroid/view/View;I)Landroid/view/View;
    .locals 0

    .line 21
    .local p0, "this":Lcom/facebook/react/views/view/ReactClippingViewManager;, "Lcom/facebook/react/views/view/ReactClippingViewManager<TT;>;"
    check-cast p1, Lcom/facebook/react/views/view/ReactViewGroup;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/view/ReactClippingViewManager;->getChildAt(Lcom/facebook/react/views/view/ReactViewGroup;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getChildAt(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 0

    .line 21
    .local p0, "this":Lcom/facebook/react/views/view/ReactClippingViewManager;, "Lcom/facebook/react/views/view/ReactClippingViewManager<TT;>;"
    check-cast p1, Lcom/facebook/react/views/view/ReactViewGroup;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/view/ReactClippingViewManager;->getChildAt(Lcom/facebook/react/views/view/ReactViewGroup;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getChildAt(Lcom/facebook/react/views/view/ReactViewGroup;I)Landroid/view/View;
    .locals 2
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 58
    .local p0, "this":Lcom/facebook/react/views/view/ReactClippingViewManager;, "Lcom/facebook/react/views/view/ReactClippingViewManager<TT;>;"
    .local p1, "parent":Lcom/facebook/react/views/view/ReactViewGroup;, "TT;"
    invoke-virtual {p1}, Lcom/facebook/react/views/view/ReactViewGroup;->getRemoveClippedSubviews()Z

    move-result v0

    .line 59
    .local v0, "removeClippedSubviews":Z
    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/view/ReactViewGroup;->getChildAtWithSubviewClippingEnabled(I)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 62
    :cond_0
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/view/ReactViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic getChildCount(Landroid/view/View;)I
    .locals 0

    .line 21
    .local p0, "this":Lcom/facebook/react/views/view/ReactClippingViewManager;, "Lcom/facebook/react/views/view/ReactClippingViewManager<TT;>;"
    check-cast p1, Lcom/facebook/react/views/view/ReactViewGroup;

    invoke-virtual {p0, p1}, Lcom/facebook/react/views/view/ReactClippingViewManager;->getChildCount(Lcom/facebook/react/views/view/ReactViewGroup;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getChildCount(Landroid/view/ViewGroup;)I
    .locals 0

    .line 21
    .local p0, "this":Lcom/facebook/react/views/view/ReactClippingViewManager;, "Lcom/facebook/react/views/view/ReactClippingViewManager<TT;>;"
    check-cast p1, Lcom/facebook/react/views/view/ReactViewGroup;

    invoke-virtual {p0, p1}, Lcom/facebook/react/views/view/ReactClippingViewManager;->getChildCount(Lcom/facebook/react/views/view/ReactViewGroup;)I

    move-result p1

    return p1
.end method

.method public getChildCount(Lcom/facebook/react/views/view/ReactViewGroup;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 47
    .local p0, "this":Lcom/facebook/react/views/view/ReactClippingViewManager;, "Lcom/facebook/react/views/view/ReactClippingViewManager<TT;>;"
    .local p1, "parent":Lcom/facebook/react/views/view/ReactViewGroup;, "TT;"
    invoke-virtual {p1}, Lcom/facebook/react/views/view/ReactViewGroup;->getRemoveClippedSubviews()Z

    move-result v0

    .line 48
    .local v0, "removeClippedSubviews":Z
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p1}, Lcom/facebook/react/views/view/ReactViewGroup;->getAllChildrenCount()I

    move-result v1

    return v1

    .line 51
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/react/views/view/ReactViewGroup;->getChildCount()I

    move-result v1

    return v1
.end method

.method public bridge synthetic removeAllViews(Landroid/view/View;)V
    .locals 0

    .line 21
    .local p0, "this":Lcom/facebook/react/views/view/ReactClippingViewManager;, "Lcom/facebook/react/views/view/ReactClippingViewManager<TT;>;"
    check-cast p1, Lcom/facebook/react/views/view/ReactViewGroup;

    invoke-virtual {p0, p1}, Lcom/facebook/react/views/view/ReactClippingViewManager;->removeAllViews(Lcom/facebook/react/views/view/ReactViewGroup;)V

    return-void
.end method

.method public removeAllViews(Lcom/facebook/react/views/view/ReactViewGroup;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 86
    .local p0, "this":Lcom/facebook/react/views/view/ReactClippingViewManager;, "Lcom/facebook/react/views/view/ReactClippingViewManager<TT;>;"
    .local p1, "parent":Lcom/facebook/react/views/view/ReactViewGroup;, "TT;"
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 88
    invoke-virtual {p1}, Lcom/facebook/react/views/view/ReactViewGroup;->getRemoveClippedSubviews()Z

    move-result v0

    .line 89
    .local v0, "removeClippedSubviews":Z
    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p1}, Lcom/facebook/react/views/view/ReactViewGroup;->removeAllViewsWithSubviewClippingEnabled()V

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/react/views/view/ReactViewGroup;->removeAllViews()V

    .line 94
    :goto_0
    return-void
.end method

.method public bridge synthetic removeViewAt(Landroid/view/View;I)V
    .locals 0

    .line 21
    .local p0, "this":Lcom/facebook/react/views/view/ReactClippingViewManager;, "Lcom/facebook/react/views/view/ReactClippingViewManager<TT;>;"
    check-cast p1, Lcom/facebook/react/views/view/ReactViewGroup;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/view/ReactClippingViewManager;->removeViewAt(Lcom/facebook/react/views/view/ReactViewGroup;I)V

    return-void
.end method

.method public bridge synthetic removeViewAt(Landroid/view/ViewGroup;I)V
    .locals 0

    .line 21
    .local p0, "this":Lcom/facebook/react/views/view/ReactClippingViewManager;, "Lcom/facebook/react/views/view/ReactClippingViewManager<TT;>;"
    check-cast p1, Lcom/facebook/react/views/view/ReactViewGroup;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/view/ReactClippingViewManager;->removeViewAt(Lcom/facebook/react/views/view/ReactViewGroup;I)V

    return-void
.end method

.method public removeViewAt(Lcom/facebook/react/views/view/ReactViewGroup;I)V
    .locals 3
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 68
    .local p0, "this":Lcom/facebook/react/views/view/ReactClippingViewManager;, "Lcom/facebook/react/views/view/ReactClippingViewManager<TT;>;"
    .local p1, "parent":Lcom/facebook/react/views/view/ReactViewGroup;, "TT;"
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 70
    invoke-virtual {p1}, Lcom/facebook/react/views/view/ReactViewGroup;->getRemoveClippedSubviews()Z

    move-result v0

    .line 71
    .local v0, "removeClippedSubviews":Z
    if-eqz v0, :cond_2

    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/view/ReactClippingViewManager;->getChildAt(Lcom/facebook/react/views/view/ReactViewGroup;I)Landroid/view/View;

    move-result-object v1

    .line 73
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 74
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 75
    invoke-virtual {p1, v1}, Lcom/facebook/react/views/view/ReactViewGroup;->removeView(Landroid/view/View;)V

    .line 77
    :cond_0
    invoke-virtual {p1, v1}, Lcom/facebook/react/views/view/ReactViewGroup;->removeViewWithSubviewClippingEnabled(Landroid/view/View;)V

    .line 79
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/view/ReactViewGroup;->removeViewAt(I)V

    .line 82
    :goto_0
    return-void
.end method

.method public setRemoveClippedSubviews(Lcom/facebook/react/views/view/ReactViewGroup;Z)V
    .locals 0
    .param p2, "removeClippedSubviews"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "removeClippedSubviews"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 28
    .local p0, "this":Lcom/facebook/react/views/view/ReactClippingViewManager;, "Lcom/facebook/react/views/view/ReactClippingViewManager<TT;>;"
    .local p1, "view":Lcom/facebook/react/views/view/ReactViewGroup;, "TT;"
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 30
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/view/ReactViewGroup;->setRemoveClippedSubviews(Z)V

    .line 31
    return-void
.end method
