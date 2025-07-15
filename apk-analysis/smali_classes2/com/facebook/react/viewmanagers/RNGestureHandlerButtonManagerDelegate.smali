.class public Lcom/facebook/react/viewmanagers/RNGestureHandlerButtonManagerDelegate;
.super Lcom/facebook/react/uimanager/BaseViewManagerDelegate;
.source "RNGestureHandlerButtonManagerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "U::",
        "Lcom/facebook/react/uimanager/BaseViewManagerInterface<",
        "TT;>;:",
        "Lcom/facebook/react/viewmanagers/RNGestureHandlerButtonManagerInterface<",
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
    .local p0, "this":Lcom/facebook/react/viewmanagers/RNGestureHandlerButtonManagerDelegate;, "Lcom/facebook/react/viewmanagers/RNGestureHandlerButtonManagerDelegate<TT;TU;>;"
    .local p1, "viewManager":Lcom/facebook/react/uimanager/BaseViewManagerInterface;, "TU;"
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;-><init>(Lcom/facebook/react/uimanager/BaseViewManagerInterface;)V

    .line 21
    return-void
.end method


# virtual methods
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

    .line 24
    .local p0, "this":Lcom/facebook/react/viewmanagers/RNGestureHandlerButtonManagerDelegate;, "Lcom/facebook/react/viewmanagers/RNGestureHandlerButtonManagerDelegate<TT;TU;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v0, "foreground"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v0, "borderless"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "exclusive"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_3
    const-string v0, "touchSoundDisabled"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_4
    const-string v0, "borderWidth"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_5
    const-string v0, "borderStyle"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_6
    const-string v0, "borderColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_7
    const-string v0, "rippleColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_8
    const-string v0, "enabled"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_9
    const-string v0, "rippleRadius"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 56
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->setProperty(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 53
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNGestureHandlerButtonManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNGestureHandlerButtonManagerInterface;

    if-nez p3, :cond_1

    const-string v1, "solid"

    goto :goto_2

    :cond_1
    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    :goto_2
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNGestureHandlerButtonManagerInterface;->setBorderStyle(Landroid/view/View;Ljava/lang/String;)V

    .line 54
    goto/16 :goto_a

    .line 50
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNGestureHandlerButtonManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNGestureHandlerButtonManagerInterface;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNGestureHandlerButtonManagerInterface;->setBorderColor(Landroid/view/View;Ljava/lang/Integer;)V

    .line 51
    goto/16 :goto_a

    .line 47
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNGestureHandlerButtonManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNGestureHandlerButtonManagerInterface;

    if-nez p3, :cond_2

    const/4 v1, 0x0

    goto :goto_3

    :cond_2
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    :goto_3
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNGestureHandlerButtonManagerInterface;->setBorderWidth(Landroid/view/View;F)V

    .line 48
    goto/16 :goto_a

    .line 44
    :pswitch_3
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNGestureHandlerButtonManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNGestureHandlerButtonManagerInterface;

    if-nez p3, :cond_3

    goto :goto_4

    :cond_3
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_4
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNGestureHandlerButtonManagerInterface;->setTouchSoundDisabled(Landroid/view/View;Z)V

    .line 45
    goto/16 :goto_a

    .line 41
    :pswitch_4
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNGestureHandlerButtonManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNGestureHandlerButtonManagerInterface;

    if-nez p3, :cond_4

    goto :goto_5

    :cond_4
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v2

    :goto_5
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNGestureHandlerButtonManagerInterface;->setRippleRadius(Landroid/view/View;I)V

    .line 42
    goto :goto_a

    .line 38
    :pswitch_5
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNGestureHandlerButtonManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNGestureHandlerButtonManagerInterface;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNGestureHandlerButtonManagerInterface;->setRippleColor(Landroid/view/View;Ljava/lang/Integer;)V

    .line 39
    goto :goto_a

    .line 35
    :pswitch_6
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNGestureHandlerButtonManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNGestureHandlerButtonManagerInterface;

    if-nez p3, :cond_5

    goto :goto_6

    :cond_5
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_6
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNGestureHandlerButtonManagerInterface;->setEnabled(Landroid/view/View;Z)V

    .line 36
    goto :goto_a

    .line 32
    :pswitch_7
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNGestureHandlerButtonManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNGestureHandlerButtonManagerInterface;

    if-nez p3, :cond_6

    goto :goto_7

    :cond_6
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_7
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNGestureHandlerButtonManagerInterface;->setBorderless(Landroid/view/View;Z)V

    .line 33
    goto :goto_a

    .line 29
    :pswitch_8
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNGestureHandlerButtonManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNGestureHandlerButtonManagerInterface;

    if-nez p3, :cond_7

    goto :goto_8

    :cond_7
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_8
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNGestureHandlerButtonManagerInterface;->setForeground(Landroid/view/View;Z)V

    .line 30
    goto :goto_a

    .line 26
    :pswitch_9
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNGestureHandlerButtonManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNGestureHandlerButtonManagerInterface;

    if-nez p3, :cond_8

    goto :goto_9

    :cond_8
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_9
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNGestureHandlerButtonManagerInterface;->setExclusive(Landroid/view/View;Z)V

    .line 27
    nop

    .line 58
    :goto_a
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7fbd551e -> :sswitch_9
        -0x5ff074bf -> :sswitch_8
        -0x2e3618ed -> :sswitch_7
        0x2b158697 -> :sswitch_6
        0x2bf974e5 -> :sswitch_5
        0x2c2c84fa -> :sswitch_4
        0x52b237ac -> :sswitch_3
        0x6487be9e -> :sswitch_2
        0x6cd11fc5 -> :sswitch_1
        0x76486943 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
