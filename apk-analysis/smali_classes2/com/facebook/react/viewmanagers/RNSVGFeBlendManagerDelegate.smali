.class public Lcom/facebook/react/viewmanagers/RNSVGFeBlendManagerDelegate;
.super Lcom/facebook/react/uimanager/BaseViewManagerDelegate;
.source "RNSVGFeBlendManagerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "U:",
        "Lcom/facebook/react/uimanager/BaseViewManager<",
        "TT;+",
        "Lcom/facebook/react/uimanager/LayoutShadowNode;",
        ">;:",
        "Lcom/facebook/react/viewmanagers/RNSVGFeBlendManagerInterface<",
        "TT;>;>",
        "Lcom/facebook/react/uimanager/BaseViewManagerDelegate<",
        "TT;TU;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/react/uimanager/BaseViewManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 21
    .local p0, "this":Lcom/facebook/react/viewmanagers/RNSVGFeBlendManagerDelegate;, "Lcom/facebook/react/viewmanagers/RNSVGFeBlendManagerDelegate<TT;TU;>;"
    .local p1, "viewManager":Lcom/facebook/react/uimanager/BaseViewManager;, "TU;"
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;-><init>(Lcom/facebook/react/uimanager/BaseViewManagerInterface;)V

    .line 22
    return-void
.end method


# virtual methods
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
    .local p0, "this":Lcom/facebook/react/viewmanagers/RNSVGFeBlendManagerDelegate;, "Lcom/facebook/react/viewmanagers/RNSVGFeBlendManagerDelegate<TT;TU;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "width"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "mode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_2
    const-string v0, "in2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_3
    const-string v0, "in1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_4
    const-string v0, "y"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_5
    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_6
    const-string v0, "result"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_7
    const-string v0, "height"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 51
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->setProperty(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 48
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGFeBlendManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGFeBlendManagerInterface;

    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGFeBlendManagerInterface;->setMode(Landroid/view/View;Ljava/lang/String;)V

    .line 49
    goto/16 :goto_5

    .line 45
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGFeBlendManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGFeBlendManagerInterface;

    if-nez p3, :cond_1

    goto :goto_2

    :cond_1
    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    :goto_2
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGFeBlendManagerInterface;->setIn2(Landroid/view/View;Ljava/lang/String;)V

    .line 46
    goto :goto_5

    .line 42
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGFeBlendManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGFeBlendManagerInterface;

    if-nez p3, :cond_2

    goto :goto_3

    :cond_2
    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    :goto_3
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGFeBlendManagerInterface;->setIn1(Landroid/view/View;Ljava/lang/String;)V

    .line 43
    goto :goto_5

    .line 39
    :pswitch_3
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGFeBlendManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGFeBlendManagerInterface;

    if-nez p3, :cond_3

    goto :goto_4

    :cond_3
    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    :goto_4
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGFeBlendManagerInterface;->setResult(Landroid/view/View;Ljava/lang/String;)V

    .line 40
    goto :goto_5

    .line 36
    :pswitch_4
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGFeBlendManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGFeBlendManagerInterface;

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGFeBlendManagerInterface;->setHeight(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    .line 37
    goto :goto_5

    .line 33
    :pswitch_5
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGFeBlendManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGFeBlendManagerInterface;

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGFeBlendManagerInterface;->setWidth(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    .line 34
    goto :goto_5

    .line 30
    :pswitch_6
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGFeBlendManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGFeBlendManagerInterface;

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGFeBlendManagerInterface;->setY(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    .line 31
    goto :goto_5

    .line 27
    :pswitch_7
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGFeBlendManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGFeBlendManagerInterface;

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGFeBlendManagerInterface;->setX(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    .line 28
    nop

    .line 53
    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x48c76ed9 -> :sswitch_7
        -0x37b237e3 -> :sswitch_6
        0x78 -> :sswitch_5
        0x79 -> :sswitch_4
        0x197ac -> :sswitch_3
        0x197ad -> :sswitch_2
        0x3339a3 -> :sswitch_1
        0x6be2dc6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
