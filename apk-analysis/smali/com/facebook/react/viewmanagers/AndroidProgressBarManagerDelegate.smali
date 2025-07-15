.class public Lcom/facebook/react/viewmanagers/AndroidProgressBarManagerDelegate;
.super Lcom/facebook/react/uimanager/BaseViewManagerDelegate;
.source "AndroidProgressBarManagerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "U::",
        "Lcom/facebook/react/uimanager/BaseViewManagerInterface<",
        "TT;>;:",
        "Lcom/facebook/react/viewmanagers/AndroidProgressBarManagerInterface<",
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

    .line 20
    .local p0, "this":Lcom/facebook/react/viewmanagers/AndroidProgressBarManagerDelegate;, "Lcom/facebook/react/viewmanagers/AndroidProgressBarManagerDelegate<TT;TU;>;"
    .local p1, "viewManager":Lcom/facebook/react/uimanager/BaseViewManagerInterface;, "TU;"
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;-><init>(Lcom/facebook/react/uimanager/BaseViewManagerInterface;)V

    .line 21
    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
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

    .line 24
    .local p0, "this":Lcom/facebook/react/viewmanagers/AndroidProgressBarManagerDelegate;, "Lcom/facebook/react/viewmanagers/AndroidProgressBarManagerDelegate<TT;TU;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "styleAttr"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v0, "animating"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    const-string v0, "indeterminate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "color"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_4
    const-string/jumbo v0, "typeAttr"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_5
    const-string/jumbo v0, "testID"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_6
    const-string/jumbo v0, "progress"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 47
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->setProperty(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 44
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/AndroidProgressBarManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/AndroidProgressBarManagerInterface;

    if-nez p3, :cond_1

    const-string v1, ""

    goto :goto_2

    :cond_1
    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    :goto_2
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/AndroidProgressBarManagerInterface;->setTestID(Landroid/view/View;Ljava/lang/String;)V

    .line 45
    goto/16 :goto_8

    .line 41
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/AndroidProgressBarManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/AndroidProgressBarManagerInterface;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/AndroidProgressBarManagerInterface;->setColor(Landroid/view/View;Ljava/lang/Integer;)V

    .line 42
    goto :goto_8

    .line 38
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/AndroidProgressBarManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/AndroidProgressBarManagerInterface;

    if-nez p3, :cond_2

    goto :goto_3

    :cond_2
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_3
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/AndroidProgressBarManagerInterface;->setAnimating(Landroid/view/View;Z)V

    .line 39
    goto :goto_8

    .line 35
    :pswitch_3
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/AndroidProgressBarManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/AndroidProgressBarManagerInterface;

    if-nez p3, :cond_3

    const-wide/16 v1, 0x0

    goto :goto_4

    :cond_3
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    :goto_4
    invoke-interface {v0, p1, v1, v2}, Lcom/facebook/react/viewmanagers/AndroidProgressBarManagerInterface;->setProgress(Landroid/view/View;D)V

    .line 36
    goto :goto_8

    .line 32
    :pswitch_4
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/AndroidProgressBarManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/AndroidProgressBarManagerInterface;

    if-nez p3, :cond_4

    goto :goto_5

    :cond_4
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_5
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/AndroidProgressBarManagerInterface;->setIndeterminate(Landroid/view/View;Z)V

    .line 33
    goto :goto_8

    .line 29
    :pswitch_5
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/AndroidProgressBarManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/AndroidProgressBarManagerInterface;

    if-nez p3, :cond_5

    goto :goto_6

    :cond_5
    move-object v3, p3

    check-cast v3, Ljava/lang/String;

    :goto_6
    invoke-interface {v0, p1, v3}, Lcom/facebook/react/viewmanagers/AndroidProgressBarManagerInterface;->setTypeAttr(Landroid/view/View;Ljava/lang/String;)V

    .line 30
    goto :goto_8

    .line 26
    :pswitch_6
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/AndroidProgressBarManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/AndroidProgressBarManagerInterface;

    if-nez p3, :cond_6

    goto :goto_7

    :cond_6
    move-object v3, p3

    check-cast v3, Ljava/lang/String;

    :goto_7
    invoke-interface {v0, p1, v3}, Lcom/facebook/react/viewmanagers/AndroidProgressBarManagerInterface;->setStyleAttr(Landroid/view/View;Ljava/lang/String;)V

    .line 27
    nop

    .line 49
    :goto_8
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3bab3dd3 -> :sswitch_6
        -0x34488ed3 -> :sswitch_5
        -0x28584fb5 -> :sswitch_4
        0x5a72f63 -> :sswitch_3
        0x25bcecbb -> :sswitch_2
        0x42ab1b5e -> :sswitch_1
        0x6b922b42 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
