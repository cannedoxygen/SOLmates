.class public Lcom/facebook/react/viewmanagers/AndroidDrawerLayoutManagerDelegate;
.super Lcom/facebook/react/uimanager/BaseViewManagerDelegate;
.source "AndroidDrawerLayoutManagerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "U::",
        "Lcom/facebook/react/uimanager/BaseViewManagerInterface<",
        "TT;>;:",
        "Lcom/facebook/react/viewmanagers/AndroidDrawerLayoutManagerInterface<",
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
    .local p0, "this":Lcom/facebook/react/viewmanagers/AndroidDrawerLayoutManagerDelegate;, "Lcom/facebook/react/viewmanagers/AndroidDrawerLayoutManagerDelegate<TT;TU;>;"
    .local p1, "viewManager":Lcom/facebook/react/uimanager/BaseViewManagerInterface;, "TU;"
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;-><init>(Lcom/facebook/react/uimanager/BaseViewManagerInterface;)V

    .line 22
    return-void
.end method


# virtual methods
.method public receiveCommand(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1
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
    .local p0, "this":Lcom/facebook/react/viewmanagers/AndroidDrawerLayoutManagerDelegate;, "Lcom/facebook/react/viewmanagers/AndroidDrawerLayoutManagerDelegate<TT;TU;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "openDrawer"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "closeDrawer"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 56
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/AndroidDrawerLayoutManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/AndroidDrawerLayoutManagerInterface;

    invoke-interface {v0, p1}, Lcom/facebook/react/viewmanagers/AndroidDrawerLayoutManagerInterface;->closeDrawer(Landroid/view/View;)V

    goto :goto_2

    .line 53
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/AndroidDrawerLayoutManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/AndroidDrawerLayoutManagerInterface;

    invoke-interface {v0, p1}, Lcom/facebook/react/viewmanagers/AndroidDrawerLayoutManagerInterface;->openDrawer(Landroid/view/View;)V

    .line 54
    nop

    .line 59
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0xf6c96f7 -> :sswitch_1
        -0x4f55425 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setProperty(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
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
    .local p0, "this":Lcom/facebook/react/viewmanagers/AndroidDrawerLayoutManagerDelegate;, "Lcom/facebook/react/viewmanagers/AndroidDrawerLayoutManagerDelegate<TT;TU;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "drawerLockMode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "drawerPosition"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "drawerWidth"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "keyboardDismissMode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_4
    const-string v0, "drawerBackgroundColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_5
    const-string/jumbo v0, "statusBarBackgroundColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 45
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->setProperty(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 42
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/AndroidDrawerLayoutManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/AndroidDrawerLayoutManagerInterface;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/AndroidDrawerLayoutManagerInterface;->setStatusBarBackgroundColor(Landroid/view/View;Ljava/lang/Integer;)V

    .line 43
    goto :goto_3

    .line 39
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/AndroidDrawerLayoutManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/AndroidDrawerLayoutManagerInterface;

    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/AndroidDrawerLayoutManagerInterface;->setDrawerLockMode(Landroid/view/View;Ljava/lang/String;)V

    .line 40
    goto :goto_3

    .line 36
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/AndroidDrawerLayoutManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/AndroidDrawerLayoutManagerInterface;

    if-nez p3, :cond_1

    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :goto_2
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/AndroidDrawerLayoutManagerInterface;->setDrawerWidth(Landroid/view/View;Ljava/lang/Float;)V

    .line 37
    goto :goto_3

    .line 33
    :pswitch_3
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/AndroidDrawerLayoutManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/AndroidDrawerLayoutManagerInterface;

    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/AndroidDrawerLayoutManagerInterface;->setDrawerPosition(Landroid/view/View;Ljava/lang/String;)V

    .line 34
    goto :goto_3

    .line 30
    :pswitch_4
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/AndroidDrawerLayoutManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/AndroidDrawerLayoutManagerInterface;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/AndroidDrawerLayoutManagerInterface;->setDrawerBackgroundColor(Landroid/view/View;Ljava/lang/Integer;)V

    .line 31
    goto :goto_3

    .line 27
    :pswitch_5
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/AndroidDrawerLayoutManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/AndroidDrawerLayoutManagerInterface;

    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/AndroidDrawerLayoutManagerInterface;->setKeyboardDismissMode(Landroid/view/View;Ljava/lang/String;)V

    .line 28
    nop

    .line 47
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7c1ea22c -> :sswitch_5
        -0x498b6a5c -> :sswitch_4
        -0x2d8e671a -> :sswitch_3
        0xffd3355 -> :sswitch_2
        0x297a753a -> :sswitch_1
        0x6eb2c17f -> :sswitch_0
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
