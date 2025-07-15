.class public Lcom/facebook/react/viewmanagers/AndroidSwitchManagerDelegate;
.super Lcom/facebook/react/uimanager/BaseViewManagerDelegate;
.source "AndroidSwitchManagerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "U::",
        "Lcom/facebook/react/uimanager/BaseViewManagerInterface<",
        "TT;>;:",
        "Lcom/facebook/react/viewmanagers/AndroidSwitchManagerInterface<",
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
    .local p0, "this":Lcom/facebook/react/viewmanagers/AndroidSwitchManagerDelegate;, "Lcom/facebook/react/viewmanagers/AndroidSwitchManagerDelegate<TT;TU;>;"
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

    .line 60
    .local p0, "this":Lcom/facebook/react/viewmanagers/AndroidSwitchManagerDelegate;, "Lcom/facebook/react/viewmanagers/AndroidSwitchManagerDelegate<TT;TU;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :cond_0
    goto :goto_0

    :pswitch_0
    const-string/jumbo v0, "setNativeValue"

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

    .line 62
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/AndroidSwitchManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/AndroidSwitchManagerInterface;

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableArray;->getBoolean(I)Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/AndroidSwitchManagerInterface;->setNativeValue(Landroid/view/View;Z)V

    .line 65
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x27eb7e28
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
    .local p0, "this":Lcom/facebook/react/viewmanagers/AndroidSwitchManagerDelegate;, "Lcom/facebook/react/viewmanagers/AndroidSwitchManagerDelegate<TT;TU;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "trackColorForTrue"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "thumbTintColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_2
    const-string/jumbo v0, "trackColorForFalse"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "disabled"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_4
    const-string/jumbo v0, "value"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_5
    const-string/jumbo v0, "on"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_6
    const-string/jumbo v0, "trackTintColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_7
    const-string v0, "enabled"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_8
    const-string/jumbo v0, "thumbColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 54
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->setProperty(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 51
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/AndroidSwitchManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/AndroidSwitchManagerInterface;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/AndroidSwitchManagerInterface;->setTrackTintColor(Landroid/view/View;Ljava/lang/Integer;)V

    .line 52
    goto/16 :goto_6

    .line 48
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/AndroidSwitchManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/AndroidSwitchManagerInterface;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/AndroidSwitchManagerInterface;->setThumbTintColor(Landroid/view/View;Ljava/lang/Integer;)V

    .line 49
    goto/16 :goto_6

    .line 45
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/AndroidSwitchManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/AndroidSwitchManagerInterface;

    if-nez p3, :cond_1

    goto :goto_2

    :cond_1
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_2
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/AndroidSwitchManagerInterface;->setOn(Landroid/view/View;Z)V

    .line 46
    goto :goto_6

    .line 42
    :pswitch_3
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/AndroidSwitchManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/AndroidSwitchManagerInterface;

    if-nez p3, :cond_2

    goto :goto_3

    :cond_2
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_3
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/AndroidSwitchManagerInterface;->setValue(Landroid/view/View;Z)V

    .line 43
    goto :goto_6

    .line 39
    :pswitch_4
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/AndroidSwitchManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/AndroidSwitchManagerInterface;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/AndroidSwitchManagerInterface;->setTrackColorForTrue(Landroid/view/View;Ljava/lang/Integer;)V

    .line 40
    goto :goto_6

    .line 36
    :pswitch_5
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/AndroidSwitchManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/AndroidSwitchManagerInterface;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/AndroidSwitchManagerInterface;->setTrackColorForFalse(Landroid/view/View;Ljava/lang/Integer;)V

    .line 37
    goto :goto_6

    .line 33
    :pswitch_6
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/AndroidSwitchManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/AndroidSwitchManagerInterface;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/AndroidSwitchManagerInterface;->setThumbColor(Landroid/view/View;Ljava/lang/Integer;)V

    .line 34
    goto :goto_6

    .line 30
    :pswitch_7
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/AndroidSwitchManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/AndroidSwitchManagerInterface;

    if-nez p3, :cond_3

    goto :goto_4

    :cond_3
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_4
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/AndroidSwitchManagerInterface;->setEnabled(Landroid/view/View;Z)V

    .line 31
    goto :goto_6

    .line 27
    :pswitch_8
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/AndroidSwitchManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/AndroidSwitchManagerInterface;

    if-nez p3, :cond_4

    goto :goto_5

    :cond_4
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_5
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/AndroidSwitchManagerInterface;->setDisabled(Landroid/view/View;Z)V

    .line 28
    nop

    .line 56
    :goto_6
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x67dbbcd3 -> :sswitch_8
        -0x5ff074bf -> :sswitch_7
        -0x1120fbe3 -> :sswitch_6
        0xddf -> :sswitch_5
        0x6ac9171 -> :sswitch_4
        0x10263a7c -> :sswitch_3
        0x40a6a2d2 -> :sswitch_2
        0x71fbaff2 -> :sswitch_1
        0x7dfb79ff -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
