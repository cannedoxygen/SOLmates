.class public Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerDelegate;
.super Lcom/facebook/react/uimanager/BaseViewManagerDelegate;
.source "RNSScreenStackHeaderConfigManagerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "U::",
        "Lcom/facebook/react/uimanager/BaseViewManagerInterface<",
        "TT;>;:",
        "Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface<",
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
    .local p0, "this":Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerDelegate;, "Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerDelegate<TT;TU;>;"
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
    .local p0, "this":Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerDelegate;, "Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerDelegate<TT;TU;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v0, "topInsetEnabled"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "largeTitle"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "largeTitleHideShadow"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "titleFontSize"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "backTitle"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "backgroundColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "hideBackButton"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "largeTitleFontWeight"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "hideShadow"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "backTitleFontFamily"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "backTitleFontSize"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "title"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "color"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "largeTitleFontFamily"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "backButtonInCustomView"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "largeTitleBackgroundColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "direction"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "backTitleVisible"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "backButtonDisplayMode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "largeTitleFontSize"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_14
    const-string v0, "hidden"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_15
    const-string v0, "titleFontWeight"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto :goto_1

    :sswitch_16
    const-string v0, "disableBackButtonMenu"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto :goto_1

    :sswitch_17
    const-string v0, "titleFontFamily"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto :goto_1

    :sswitch_18
    const-string v0, "largeTitleColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_1

    :sswitch_19
    const-string v0, "blurEffect"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto :goto_1

    :sswitch_1a
    const-string v0, "titleColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto :goto_1

    :sswitch_1b
    const-string v0, "translucent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 110
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->setProperty(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 107
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;

    if-nez p3, :cond_1

    goto :goto_2

    :cond_1
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_2
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;->setTopInsetEnabled(Landroid/view/View;Z)V

    .line 108
    goto/16 :goto_16

    .line 104
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;

    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;->setBlurEffect(Landroid/view/View;Ljava/lang/String;)V

    .line 105
    goto/16 :goto_16

    .line 101
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;

    if-nez p3, :cond_2

    goto :goto_3

    :cond_2
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_3
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;->setBackButtonInCustomView(Landroid/view/View;Z)V

    .line 102
    goto/16 :goto_16

    .line 98
    :pswitch_3
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;

    if-nez p3, :cond_3

    goto :goto_4

    :cond_3
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_4
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;->setHideBackButton(Landroid/view/View;Z)V

    .line 99
    goto/16 :goto_16

    .line 95
    :pswitch_4
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;

    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;->setBackButtonDisplayMode(Landroid/view/View;Ljava/lang/String;)V

    .line 96
    goto/16 :goto_16

    .line 92
    :pswitch_5
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;

    if-nez p3, :cond_4

    goto :goto_5

    :cond_4
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_5
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;->setDisableBackButtonMenu(Landroid/view/View;Z)V

    .line 93
    goto/16 :goto_16

    .line 89
    :pswitch_6
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;->setTitleColor(Landroid/view/View;Ljava/lang/Integer;)V

    .line 90
    goto/16 :goto_16

    .line 86
    :pswitch_7
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;

    if-nez p3, :cond_5

    goto :goto_6

    :cond_5
    move-object v3, p3

    check-cast v3, Ljava/lang/String;

    :goto_6
    invoke-interface {v0, p1, v3}, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;->setTitleFontWeight(Landroid/view/View;Ljava/lang/String;)V

    .line 87
    goto/16 :goto_16

    .line 83
    :pswitch_8
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;

    if-nez p3, :cond_6

    goto :goto_7

    :cond_6
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v2

    :goto_7
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;->setTitleFontSize(Landroid/view/View;I)V

    .line 84
    goto/16 :goto_16

    .line 80
    :pswitch_9
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;

    if-nez p3, :cond_7

    goto :goto_8

    :cond_7
    move-object v3, p3

    check-cast v3, Ljava/lang/String;

    :goto_8
    invoke-interface {v0, p1, v3}, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;->setTitleFontFamily(Landroid/view/View;Ljava/lang/String;)V

    .line 81
    goto/16 :goto_16

    .line 77
    :pswitch_a
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;

    if-nez p3, :cond_8

    goto :goto_9

    :cond_8
    move-object v3, p3

    check-cast v3, Ljava/lang/String;

    :goto_9
    invoke-interface {v0, p1, v3}, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;->setTitle(Landroid/view/View;Ljava/lang/String;)V

    .line 78
    goto/16 :goto_16

    .line 74
    :pswitch_b
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;

    if-nez p3, :cond_9

    goto :goto_a

    :cond_9
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_a
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;->setTranslucent(Landroid/view/View;Z)V

    .line 75
    goto/16 :goto_16

    .line 71
    :pswitch_c
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;->setLargeTitleColor(Landroid/view/View;Ljava/lang/Integer;)V

    .line 72
    goto/16 :goto_16

    .line 68
    :pswitch_d
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;

    if-nez p3, :cond_a

    goto :goto_b

    :cond_a
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_b
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;->setLargeTitleHideShadow(Landroid/view/View;Z)V

    .line 69
    goto/16 :goto_16

    .line 65
    :pswitch_e
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;->setLargeTitleBackgroundColor(Landroid/view/View;Ljava/lang/Integer;)V

    .line 66
    goto/16 :goto_16

    .line 62
    :pswitch_f
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;

    if-nez p3, :cond_b

    goto :goto_c

    :cond_b
    move-object v3, p3

    check-cast v3, Ljava/lang/String;

    :goto_c
    invoke-interface {v0, p1, v3}, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;->setLargeTitleFontWeight(Landroid/view/View;Ljava/lang/String;)V

    .line 63
    goto/16 :goto_16

    .line 59
    :pswitch_10
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;

    if-nez p3, :cond_c

    goto :goto_d

    :cond_c
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v2

    :goto_d
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;->setLargeTitleFontSize(Landroid/view/View;I)V

    .line 60
    goto/16 :goto_16

    .line 56
    :pswitch_11
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;

    if-nez p3, :cond_d

    goto :goto_e

    :cond_d
    move-object v3, p3

    check-cast v3, Ljava/lang/String;

    :goto_e
    invoke-interface {v0, p1, v3}, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;->setLargeTitleFontFamily(Landroid/view/View;Ljava/lang/String;)V

    .line 57
    goto/16 :goto_16

    .line 53
    :pswitch_12
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;

    if-nez p3, :cond_e

    goto :goto_f

    :cond_e
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_f
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;->setLargeTitle(Landroid/view/View;Z)V

    .line 54
    goto/16 :goto_16

    .line 50
    :pswitch_13
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;

    if-nez p3, :cond_f

    goto :goto_10

    :cond_f
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_10
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;->setHideShadow(Landroid/view/View;Z)V

    .line 51
    goto/16 :goto_16

    .line 47
    :pswitch_14
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;

    if-nez p3, :cond_10

    goto :goto_11

    :cond_10
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_11
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;->setHidden(Landroid/view/View;Z)V

    .line 48
    goto/16 :goto_16

    .line 44
    :pswitch_15
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;

    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;->setDirection(Landroid/view/View;Ljava/lang/String;)V

    .line 45
    goto :goto_16

    .line 41
    :pswitch_16
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;->setColor(Landroid/view/View;Ljava/lang/Integer;)V

    .line 42
    goto :goto_16

    .line 38
    :pswitch_17
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;

    if-nez p3, :cond_11

    goto :goto_12

    :cond_11
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_12
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;->setBackTitleVisible(Landroid/view/View;Z)V

    .line 39
    goto :goto_16

    .line 35
    :pswitch_18
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;

    if-nez p3, :cond_12

    goto :goto_13

    :cond_12
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v2

    :goto_13
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;->setBackTitleFontSize(Landroid/view/View;I)V

    .line 36
    goto :goto_16

    .line 32
    :pswitch_19
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;

    if-nez p3, :cond_13

    goto :goto_14

    :cond_13
    move-object v3, p3

    check-cast v3, Ljava/lang/String;

    :goto_14
    invoke-interface {v0, p1, v3}, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;->setBackTitleFontFamily(Landroid/view/View;Ljava/lang/String;)V

    .line 33
    goto :goto_16

    .line 29
    :pswitch_1a
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;

    if-nez p3, :cond_14

    goto :goto_15

    :cond_14
    move-object v3, p3

    check-cast v3, Ljava/lang/String;

    :goto_15
    invoke-interface {v0, p1, v3}, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;->setBackTitle(Landroid/view/View;Ljava/lang/String;)V

    .line 30
    goto :goto_16

    .line 26
    :pswitch_1b
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderConfigManagerInterface;->setBackgroundColor(Landroid/view/View;Ljava/lang/Integer;)V

    .line 27
    nop

    .line 112
    :goto_16
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6ca400a7 -> :sswitch_1b
        -0x6b402c15 -> :sswitch_1a
        -0x6b085328 -> :sswitch_19
        -0x69c7227a -> :sswitch_18
        -0x663e72f5 -> :sswitch_17
        -0x59a25300 -> :sswitch_16
        -0x49058be1 -> :sswitch_15
        -0x48916256 -> :sswitch_14
        -0x413de413 -> :sswitch_13
        -0x41273734 -> :sswitch_12
        -0x3f5e367f -> :sswitch_11
        -0x395ff881 -> :sswitch_10
        -0x17336ac8 -> :sswitch_f
        -0x85931ac -> :sswitch_e
        0x54c50 -> :sswitch_d
        0x5a72f63 -> :sswitch_c
        0x6942258 -> :sswitch_b
        0xaf5e9c1 -> :sswitch_a
        0xe7cf524 -> :sswitch_9
        0x143bc902 -> :sswitch_8
        0x1d3e3364 -> :sswitch_7
        0x3dea1ddb -> :sswitch_6
        0x4cb7f6d5 -> :sswitch_5
        0x4ef525b1 -> :sswitch_4
        0x5a7d4f68 -> :sswitch_3
        0x5d4078bf -> :sswitch_2
        0x78fc43dd -> :sswitch_1
        0x7d247559 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
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
