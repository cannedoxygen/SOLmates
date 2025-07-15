.class public Lcom/facebook/react/viewmanagers/AndroidSwipeRefreshLayoutManagerDelegate;
.super Lcom/facebook/react/uimanager/BaseViewManagerDelegate;
.source "AndroidSwipeRefreshLayoutManagerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "U::",
        "Lcom/facebook/react/uimanager/BaseViewManagerInterface<",
        "TT;>;:",
        "Lcom/facebook/react/viewmanagers/AndroidSwipeRefreshLayoutManagerInterface<",
        "TT;>;>",
        "Lcom/facebook/react/uimanager/BaseViewManagerDelegate<",
        "TT;TU;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/react/uimanager/BaseViewManagerInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 21
    .local p0, "this":Lcom/facebook/react/viewmanagers/AndroidSwipeRefreshLayoutManagerDelegate;, "Lcom/facebook/react/viewmanagers/AndroidSwipeRefreshLayoutManagerDelegate<TT;TU;>;"
    .local p1, "viewManager":Lcom/facebook/react/uimanager/BaseViewManagerInterface;, "TU;"
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;-><init>(Lcom/facebook/react/uimanager/BaseViewManagerInterface;)V

    .line 22
    return-void
.end method


# virtual methods
.method public receiveCommand(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 2
    .param p2, "commandName"    # Ljava/lang/String;
    .param p3, "args"    # Lcom/facebook/react/bridge/ReadableArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Lcom/facebook/react/bridge/ReadableArray;",
            ")V"
        }
    .end annotation

    .line 51
    .local p0, "this":Lcom/facebook/react/viewmanagers/AndroidSwipeRefreshLayoutManagerDelegate;, "Lcom/facebook/react/viewmanagers/AndroidSwipeRefreshLayoutManagerDelegate<TT;TU;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :cond_0
    goto :goto_0

    :pswitch_0
    const-string/jumbo v0, "setNativeRefreshing"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_2

    .line 53
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/AndroidSwipeRefreshLayoutManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/AndroidSwipeRefreshLayoutManagerInterface;

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableArray;->getBoolean(I)Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/AndroidSwipeRefreshLayoutManagerInterface;->setNativeRefreshing(Landroid/view/View;Z)V

    .line 56
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1ea28b20
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public setProperty(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p2, "propName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 25
    .local p0, "this":Lcom/facebook/react/viewmanagers/AndroidSwipeRefreshLayoutManagerDelegate;, "Lcom/facebook/react/viewmanagers/AndroidSwipeRefreshLayoutManagerDelegate<TT;TU;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "size"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "refreshing"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_2
    const-string/jumbo v0, "progressViewOffset"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_3
    const-string/jumbo v0, "progressBackgroundColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_4
    const-string v0, "colors"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_5
    const-string v0, "enabled"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 45
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->setProperty(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    .line 42
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/AndroidSwipeRefreshLayoutManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/AndroidSwipeRefreshLayoutManagerInterface;

    if-nez p3, :cond_1

    goto :goto_2

    :cond_1
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_2
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/AndroidSwipeRefreshLayoutManagerInterface;->setRefreshing(Landroid/view/View;Z)V

    .line 43
    goto :goto_5

    .line 39
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/AndroidSwipeRefreshLayoutManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/AndroidSwipeRefreshLayoutManagerInterface;

    if-nez p3, :cond_2

    const/4 v1, 0x0

    goto :goto_3

    :cond_2
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    :goto_3
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/AndroidSwipeRefreshLayoutManagerInterface;->setProgressViewOffset(Landroid/view/View;F)V

    .line 40
    goto :goto_5

    .line 36
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/AndroidSwipeRefreshLayoutManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/AndroidSwipeRefreshLayoutManagerInterface;

    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/AndroidSwipeRefreshLayoutManagerInterface;->setSize(Landroid/view/View;Ljava/lang/String;)V

    .line 37
    goto :goto_5

    .line 33
    :pswitch_3
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/AndroidSwipeRefreshLayoutManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/AndroidSwipeRefreshLayoutManagerInterface;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/AndroidSwipeRefreshLayoutManagerInterface;->setProgressBackgroundColor(Landroid/view/View;Ljava/lang/Integer;)V

    .line 34
    goto :goto_5

    .line 30
    :pswitch_4
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/AndroidSwipeRefreshLayoutManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/AndroidSwipeRefreshLayoutManagerInterface;

    move-object v1, p3

    check-cast v1, Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/AndroidSwipeRefreshLayoutManagerInterface;->setColors(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 31
    goto :goto_5

    .line 27
    :pswitch_5
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/AndroidSwipeRefreshLayoutManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/AndroidSwipeRefreshLayoutManagerInterface;

    if-nez p3, :cond_3

    goto :goto_4

    :cond_3
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_4
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/AndroidSwipeRefreshLayoutManagerInterface;->setEnabled(Landroid/view/View;Z)V

    .line 28
    nop

    .line 47
    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5ff074bf -> :sswitch_5
        -0x50c14290 -> :sswitch_4
        -0x34c25318 -> :sswitch_3
        -0x18cc3a5b -> :sswitch_2
        -0x132eacd9 -> :sswitch_1
        0x35e001 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
