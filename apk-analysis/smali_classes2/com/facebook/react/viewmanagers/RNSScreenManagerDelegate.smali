.class public Lcom/facebook/react/viewmanagers/RNSScreenManagerDelegate;
.super Lcom/facebook/react/uimanager/BaseViewManagerDelegate;
.source "RNSScreenManagerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "U::",
        "Lcom/facebook/react/uimanager/BaseViewManagerInterface<",
        "TT;>;:",
        "Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface<",
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

    .line 22
    .local p0, "this":Lcom/facebook/react/viewmanagers/RNSScreenManagerDelegate;, "Lcom/facebook/react/viewmanagers/RNSScreenManagerDelegate<TT;TU;>;"
    .local p1, "viewManager":Lcom/facebook/react/uimanager/BaseViewManagerInterface;, "TU;"
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;-><init>(Lcom/facebook/react/uimanager/BaseViewManagerInterface;)V

    .line 23
    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
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

    .line 26
    .local p0, "this":Lcom/facebook/react/viewmanagers/RNSScreenManagerDelegate;, "Lcom/facebook/react/viewmanagers/RNSScreenManagerDelegate<TT;TU;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x18

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v0, "sheetExpandsWhenScrolledToEdge"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "nativeBackButtonDismissalEnabled"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "statusBarAnimation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "sheetGrabberVisible"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "sheetElevation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "navigationBarTranslucent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "customAnimationOnSwipe"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "swipeDirection"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "transitionDuration"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "sheetLargestUndimmedDetent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "screenOrientation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "gestureResponseDistance"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "fullScreenSwipeEnabled"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "statusBarHidden"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "preventNativeDismiss"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "replaceAnimation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "sheetAllowedDetents"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "sheetInitialDetent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "navigationBarColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "stackAnimation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_14
    const-string v0, "fullScreenSwipeShadowEnabled"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_15
    const-string v0, "statusBarStyle"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_16
    const-string v0, "statusBarColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_17
    const-string v0, "activityState"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto :goto_1

    :sswitch_18
    const-string v0, "stackPresentation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto :goto_1

    :sswitch_19
    const-string v0, "statusBarTranslucent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto :goto_1

    :sswitch_1a
    const-string v0, "navigationBarHidden"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto :goto_1

    :sswitch_1b
    const-string v0, "sheetCornerRadius"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1c
    const-string v0, "hideKeyboardOnSwipe"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto :goto_1

    :sswitch_1d
    const-string v0, "gestureEnabled"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_1e
    const-string v0, "homeIndicatorHidden"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :goto_0
    move v0, v4

    :goto_1
    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    .line 121
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->setProperty(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_19

    .line 118
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;

    if-nez p3, :cond_1

    goto :goto_2

    :cond_1
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_2
    invoke-interface {v0, p1, v3}, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;->setNativeBackButtonDismissalEnabled(Landroid/view/View;Z)V

    .line 119
    goto/16 :goto_19

    .line 115
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;

    if-nez p3, :cond_2

    goto :goto_3

    :cond_2
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_3
    invoke-interface {v0, p1, v3}, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;->setNavigationBarHidden(Landroid/view/View;Z)V

    .line 116
    goto/16 :goto_19

    .line 112
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;

    if-nez p3, :cond_3

    goto :goto_4

    :cond_3
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_4
    invoke-interface {v0, p1, v3}, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;->setNavigationBarTranslucent(Landroid/view/View;Z)V

    .line 113
    goto/16 :goto_19

    .line 109
    :pswitch_3
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;->setNavigationBarColor(Landroid/view/View;Ljava/lang/Integer;)V

    .line 110
    goto/16 :goto_19

    .line 106
    :pswitch_4
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;

    if-nez p3, :cond_4

    goto :goto_5

    :cond_4
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v5

    :goto_5
    invoke-interface {v0, p1, v5}, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;->setActivityState(Landroid/view/View;F)V

    .line 107
    goto/16 :goto_19

    .line 103
    :pswitch_5
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;

    if-nez p3, :cond_5

    goto :goto_6

    :cond_5
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_6
    invoke-interface {v0, p1, v3}, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;->setHideKeyboardOnSwipe(Landroid/view/View;Z)V

    .line 104
    goto/16 :goto_19

    .line 100
    :pswitch_6
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;

    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;->setSwipeDirection(Landroid/view/View;Ljava/lang/String;)V

    .line 101
    goto/16 :goto_19

    .line 97
    :pswitch_7
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;

    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;->setReplaceAnimation(Landroid/view/View;Ljava/lang/String;)V

    .line 98
    goto/16 :goto_19

    .line 94
    :pswitch_8
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;

    if-nez p3, :cond_6

    const/16 v1, 0x1f4

    goto :goto_7

    :cond_6
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    :goto_7
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;->setTransitionDuration(Landroid/view/View;I)V

    .line 95
    goto/16 :goto_19

    .line 91
    :pswitch_9
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;

    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;->setStackAnimation(Landroid/view/View;Ljava/lang/String;)V

    .line 92
    goto/16 :goto_19

    .line 88
    :pswitch_a
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;

    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;->setStackPresentation(Landroid/view/View;Ljava/lang/String;)V

    .line 89
    goto/16 :goto_19

    .line 85
    :pswitch_b
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;

    move-object v1, p3

    check-cast v1, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;->setGestureResponseDistance(Landroid/view/View;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 86
    goto/16 :goto_19

    .line 82
    :pswitch_c
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;

    if-nez p3, :cond_7

    goto :goto_8

    :cond_7
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_8
    invoke-interface {v0, p1, v3}, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;->setStatusBarTranslucent(Landroid/view/View;Z)V

    .line 83
    goto/16 :goto_19

    .line 79
    :pswitch_d
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;

    if-nez p3, :cond_8

    goto :goto_9

    :cond_8
    move-object v6, p3

    check-cast v6, Ljava/lang/String;

    :goto_9
    invoke-interface {v0, p1, v6}, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;->setStatusBarStyle(Landroid/view/View;Ljava/lang/String;)V

    .line 80
    goto/16 :goto_19

    .line 76
    :pswitch_e
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;

    if-nez p3, :cond_9

    goto :goto_a

    :cond_9
    move-object v6, p3

    check-cast v6, Ljava/lang/String;

    :goto_a
    invoke-interface {v0, p1, v6}, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;->setStatusBarAnimation(Landroid/view/View;Ljava/lang/String;)V

    .line 77
    goto/16 :goto_19

    .line 73
    :pswitch_f
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;

    if-nez p3, :cond_a

    goto :goto_b

    :cond_a
    move-object v6, p3

    check-cast v6, Ljava/lang/String;

    :goto_b
    invoke-interface {v0, p1, v6}, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;->setScreenOrientation(Landroid/view/View;Ljava/lang/String;)V

    .line 74
    goto/16 :goto_19

    .line 70
    :pswitch_10
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;

    if-nez p3, :cond_b

    goto :goto_c

    :cond_b
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_c
    invoke-interface {v0, p1, v3}, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;->setStatusBarHidden(Landroid/view/View;Z)V

    .line 71
    goto/16 :goto_19

    .line 67
    :pswitch_11
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;->setStatusBarColor(Landroid/view/View;Ljava/lang/Integer;)V

    .line 68
    goto/16 :goto_19

    .line 64
    :pswitch_12
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;

    if-nez p3, :cond_c

    goto :goto_d

    :cond_c
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_d
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;->setGestureEnabled(Landroid/view/View;Z)V

    .line 65
    goto/16 :goto_19

    .line 61
    :pswitch_13
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;

    if-nez p3, :cond_d

    goto :goto_e

    :cond_d
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_e
    invoke-interface {v0, p1, v3}, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;->setPreventNativeDismiss(Landroid/view/View;Z)V

    .line 62
    goto/16 :goto_19

    .line 58
    :pswitch_14
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;

    if-nez p3, :cond_e

    goto :goto_f

    :cond_e
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_f
    invoke-interface {v0, p1, v3}, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;->setHomeIndicatorHidden(Landroid/view/View;Z)V

    .line 59
    goto/16 :goto_19

    .line 55
    :pswitch_15
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;

    if-nez p3, :cond_f

    goto :goto_10

    :cond_f
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_10
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;->setFullScreenSwipeShadowEnabled(Landroid/view/View;Z)V

    .line 56
    goto/16 :goto_19

    .line 52
    :pswitch_16
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;

    if-nez p3, :cond_10

    goto :goto_11

    :cond_10
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_11
    invoke-interface {v0, p1, v3}, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;->setFullScreenSwipeEnabled(Landroid/view/View;Z)V

    .line 53
    goto/16 :goto_19

    .line 49
    :pswitch_17
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;

    if-nez p3, :cond_11

    goto :goto_12

    :cond_11
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_12
    invoke-interface {v0, p1, v3}, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;->setCustomAnimationOnSwipe(Landroid/view/View;Z)V

    .line 50
    goto/16 :goto_19

    .line 46
    :pswitch_18
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;

    if-nez p3, :cond_12

    goto :goto_13

    :cond_12
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    :goto_13
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;->setSheetElevation(Landroid/view/View;I)V

    .line 47
    goto/16 :goto_19

    .line 43
    :pswitch_19
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;

    if-nez p3, :cond_13

    goto :goto_14

    :cond_13
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v3

    :goto_14
    invoke-interface {v0, p1, v3}, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;->setSheetInitialDetent(Landroid/view/View;I)V

    .line 44
    goto :goto_19

    .line 40
    :pswitch_1a
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;

    if-nez p3, :cond_14

    goto :goto_15

    :cond_14
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_15
    invoke-interface {v0, p1, v3}, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;->setSheetExpandsWhenScrolledToEdge(Landroid/view/View;Z)V

    .line 41
    goto :goto_19

    .line 37
    :pswitch_1b
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;

    if-nez p3, :cond_15

    goto :goto_16

    :cond_15
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v5

    :goto_16
    invoke-interface {v0, p1, v5}, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;->setSheetCornerRadius(Landroid/view/View;F)V

    .line 38
    goto :goto_19

    .line 34
    :pswitch_1c
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;

    if-nez p3, :cond_16

    goto :goto_17

    :cond_16
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_17
    invoke-interface {v0, p1, v3}, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;->setSheetGrabberVisible(Landroid/view/View;Z)V

    .line 35
    goto :goto_19

    .line 31
    :pswitch_1d
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;

    if-nez p3, :cond_17

    goto :goto_18

    :cond_17
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v4

    :goto_18
    invoke-interface {v0, p1, v4}, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;->setSheetLargestUndimmedDetent(Landroid/view/View;I)V

    .line 32
    goto :goto_19

    .line 28
    :pswitch_1e
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;

    move-object v1, p3

    check-cast v1, Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;->setSheetAllowedDetents(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 29
    nop

    .line 123
    :goto_19
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x737a3646 -> :sswitch_1e
        -0x6e7b0e48 -> :sswitch_1d
        -0x675c3aee -> :sswitch_1c
        -0x506a6dba -> :sswitch_1b
        -0x4ecd6817 -> :sswitch_1a
        -0x44e94228 -> :sswitch_19
        -0x4496763e -> :sswitch_18
        -0x3e6b8d3e -> :sswitch_17
        -0x3a0986de -> :sswitch_16
        -0x39259890 -> :sswitch_15
        -0x38c1d7de -> :sswitch_14
        -0x226f2e24 -> :sswitch_13
        -0x1b948ebc -> :sswitch_12
        -0x16be52c3 -> :sswitch_11
        -0x1056680e -> :sswitch_10
        -0xf53acd0 -> :sswitch_f
        -0x9ea6485 -> :sswitch_e
        0x1088bcb -> :sswitch_d
        0x7befa22 -> :sswitch_c
        0xb3022bf -> :sswitch_b
        0xd90a1c4 -> :sswitch_a
        0xe6b0c52 -> :sswitch_9
        0x1955fa09 -> :sswitch_8
        0x40806965 -> :sswitch_7
        0x42362208 -> :sswitch_6
        0x4285947a -> :sswitch_5
        0x4ba38bbe -> :sswitch_4
        0x50f08f6e -> :sswitch_3
        0x52b16dc3 -> :sswitch_2
        0x670fd7dc -> :sswitch_1
        0x7d048c58 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
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
