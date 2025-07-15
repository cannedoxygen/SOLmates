.class public Lcom/facebook/react/viewmanagers/RNSSearchBarManagerDelegate;
.super Lcom/facebook/react/uimanager/BaseViewManagerDelegate;
.source "RNSSearchBarManagerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "U::",
        "Lcom/facebook/react/uimanager/BaseViewManagerInterface<",
        "TT;>;:",
        "Lcom/facebook/react/viewmanagers/RNSSearchBarManagerInterface<",
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
    .local p0, "this":Lcom/facebook/react/viewmanagers/RNSSearchBarManagerDelegate;, "Lcom/facebook/react/viewmanagers/RNSSearchBarManagerDelegate<TT;TU;>;"
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

    .line 78
    .local p0, "this":Lcom/facebook/react/viewmanagers/RNSSearchBarManagerDelegate;, "Lcom/facebook/react/viewmanagers/RNSSearchBarManagerDelegate<TT;TU;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "setText"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "focus"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "blur"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_3
    const-string v0, "toggleCancelButton"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "clearText"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_5
    const-string v0, "cancelSearch"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 95
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerInterface;

    invoke-interface {v0, p1}, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerInterface;->cancelSearch(Landroid/view/View;)V

    goto :goto_2

    .line 92
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerInterface;

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerInterface;->setText(Landroid/view/View;Ljava/lang/String;)V

    .line 93
    goto :goto_2

    .line 89
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerInterface;

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableArray;->getBoolean(I)Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerInterface;->toggleCancelButton(Landroid/view/View;Z)V

    .line 90
    goto :goto_2

    .line 86
    :pswitch_3
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerInterface;

    invoke-interface {v0, p1}, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerInterface;->clearText(Landroid/view/View;)V

    .line 87
    goto :goto_2

    .line 83
    :pswitch_4
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerInterface;

    invoke-interface {v0, p1}, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerInterface;->focus(Landroid/view/View;)V

    .line 84
    goto :goto_2

    .line 80
    :pswitch_5
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerInterface;

    invoke-interface {v0, p1}, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerInterface;->blur(Landroid/view/View;)V

    .line 81
    nop

    .line 98
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6d48c33e -> :sswitch_5
        -0x4bc07ee6 -> :sswitch_4
        -0x27995040 -> :sswitch_3
        0x2e3067 -> :sswitch_2
        0x5d154d8 -> :sswitch_1
        0x765074af -> :sswitch_0
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

    .line 25
    .local p0, "this":Lcom/facebook/react/viewmanagers/RNSSearchBarManagerDelegate;, "Lcom/facebook/react/viewmanagers/RNSSearchBarManagerDelegate<TT;TU;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v0, "placement"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "inputType"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "obscureBackground"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "tintColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "placeholder"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "shouldShowHintSearchIcon"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "disableBackButtonOverride"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_7
    const-string v0, "cancelButtonText"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_8
    const-string v0, "hideWhenScrolling"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_9
    const-string v0, "hintTextColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_a
    const-string v0, "barTintColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_b
    const-string v0, "textColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_c
    const-string v0, "autoCapitalize"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_d
    const-string v0, "headerIconColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_e
    const-string v0, "hideNavigationBar"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 72
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->setProperty(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 69
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerInterface;

    if-nez p3, :cond_1

    goto :goto_2

    :cond_1
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_2
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerInterface;->setShouldShowHintSearchIcon(Landroid/view/View;Z)V

    .line 70
    goto/16 :goto_a

    .line 66
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerInterface;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerInterface;->setHeaderIconColor(Landroid/view/View;Ljava/lang/Integer;)V

    .line 67
    goto/16 :goto_a

    .line 63
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerInterface;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerInterface;->setHintTextColor(Landroid/view/View;Ljava/lang/Integer;)V

    .line 64
    goto/16 :goto_a

    .line 60
    :pswitch_3
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerInterface;

    if-nez p3, :cond_2

    goto :goto_3

    :cond_2
    move-object v3, p3

    check-cast v3, Ljava/lang/String;

    :goto_3
    invoke-interface {v0, p1, v3}, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerInterface;->setInputType(Landroid/view/View;Ljava/lang/String;)V

    .line 61
    goto/16 :goto_a

    .line 57
    :pswitch_4
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerInterface;

    if-nez p3, :cond_3

    goto :goto_4

    :cond_3
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_4
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerInterface;->setDisableBackButtonOverride(Landroid/view/View;Z)V

    .line 58
    goto/16 :goto_a

    .line 54
    :pswitch_5
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerInterface;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerInterface;->setTextColor(Landroid/view/View;Ljava/lang/Integer;)V

    .line 55
    goto/16 :goto_a

    .line 51
    :pswitch_6
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerInterface;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerInterface;->setTintColor(Landroid/view/View;Ljava/lang/Integer;)V

    .line 52
    goto/16 :goto_a

    .line 48
    :pswitch_7
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerInterface;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerInterface;->setBarTintColor(Landroid/view/View;Ljava/lang/Integer;)V

    .line 49
    goto/16 :goto_a

    .line 45
    :pswitch_8
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerInterface;

    if-nez p3, :cond_4

    goto :goto_5

    :cond_4
    move-object v3, p3

    check-cast v3, Ljava/lang/String;

    :goto_5
    invoke-interface {v0, p1, v3}, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerInterface;->setCancelButtonText(Landroid/view/View;Ljava/lang/String;)V

    .line 46
    goto :goto_a

    .line 42
    :pswitch_9
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerInterface;

    if-nez p3, :cond_5

    goto :goto_6

    :cond_5
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_6
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerInterface;->setHideNavigationBar(Landroid/view/View;Z)V

    .line 43
    goto :goto_a

    .line 39
    :pswitch_a
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerInterface;

    if-nez p3, :cond_6

    goto :goto_7

    :cond_6
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_7
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerInterface;->setObscureBackground(Landroid/view/View;Z)V

    .line 40
    goto :goto_a

    .line 36
    :pswitch_b
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerInterface;

    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerInterface;->setPlacement(Landroid/view/View;Ljava/lang/String;)V

    .line 37
    goto :goto_a

    .line 33
    :pswitch_c
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerInterface;

    if-nez p3, :cond_7

    goto :goto_8

    :cond_7
    move-object v3, p3

    check-cast v3, Ljava/lang/String;

    :goto_8
    invoke-interface {v0, p1, v3}, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerInterface;->setPlaceholder(Landroid/view/View;Ljava/lang/String;)V

    .line 34
    goto :goto_a

    .line 30
    :pswitch_d
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerInterface;

    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerInterface;->setAutoCapitalize(Landroid/view/View;Ljava/lang/String;)V

    .line 31
    goto :goto_a

    .line 27
    :pswitch_e
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerInterface;

    if-nez p3, :cond_8

    goto :goto_9

    :cond_8
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_9
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSSearchBarManagerInterface;->setHideWhenScrolling(Landroid/view/View;Z)V

    .line 28
    nop

    .line 74
    :goto_a
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6084c0c3 -> :sswitch_e
        -0x575e4da3 -> :sswitch_d
        -0x4fd7d605 -> :sswitch_c
        -0x3f64d1ca -> :sswitch_b
        -0x140ee5ab -> :sswitch_a
        -0xf4f2891 -> :sswitch_9
        -0xb1efa47 -> :sswitch_8
        -0x8b94e67 -> :sswitch_7
        -0x6850513 -> :sswitch_6
        -0x2596c68 -> :sswitch_5
        0x23a88573 -> :sswitch_4
        0x4f219128 -> :sswitch_3
        0x5e763a33 -> :sswitch_2
        0x65be6624 -> :sswitch_1
        0x6ade12e5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
