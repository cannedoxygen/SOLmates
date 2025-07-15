.class public Lcom/facebook/react/viewmanagers/RNSVGDefsManagerDelegate;
.super Lcom/facebook/react/uimanager/BaseViewManagerDelegate;
.source "RNSVGDefsManagerDelegate.java"


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
        "Lcom/facebook/react/viewmanagers/RNSVGDefsManagerInterface<",
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
    .local p0, "this":Lcom/facebook/react/viewmanagers/RNSVGDefsManagerDelegate;, "Lcom/facebook/react/viewmanagers/RNSVGDefsManagerDelegate<TT;TU;>;"
    .local p1, "viewManager":Lcom/facebook/react/uimanager/BaseViewManager;, "TU;"
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;-><init>(Lcom/facebook/react/uimanager/BaseViewManagerInterface;)V

    .line 22
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

    .line 25
    .local p0, "this":Lcom/facebook/react/viewmanagers/RNSVGDefsManagerDelegate;, "Lcom/facebook/react/viewmanagers/RNSVGDefsManagerDelegate<TT;TU;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v0, "responsible"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "display"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "clipRule"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_3
    const-string v0, "clipPath"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_4
    const-string v0, "markerStart"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v0, "name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_6
    const-string v0, "mask"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_7
    const-string v0, "pointerEvents"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_8
    const-string v0, "markerMid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_9
    const-string v0, "markerEnd"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_a
    const-string v0, "matrix"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_b
    const-string v0, "opacity"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 63
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->setProperty(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_d

    .line 60
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGDefsManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGDefsManagerInterface;

    if-nez p3, :cond_1

    goto :goto_2

    :cond_1
    move-object v2, p3

    check-cast v2, Ljava/lang/String;

    :goto_2
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSVGDefsManagerInterface;->setPointerEvents(Landroid/view/View;Ljava/lang/String;)V

    .line 61
    goto/16 :goto_d

    .line 57
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGDefsManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGDefsManagerInterface;

    if-nez p3, :cond_2

    goto :goto_3

    :cond_2
    move-object v2, p3

    check-cast v2, Ljava/lang/String;

    :goto_3
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSVGDefsManagerInterface;->setDisplay(Landroid/view/View;Ljava/lang/String;)V

    .line 58
    goto/16 :goto_d

    .line 54
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGDefsManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGDefsManagerInterface;

    if-nez p3, :cond_3

    goto :goto_4

    :cond_3
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_4
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGDefsManagerInterface;->setResponsible(Landroid/view/View;Z)V

    .line 55
    goto/16 :goto_d

    .line 51
    :pswitch_3
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGDefsManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGDefsManagerInterface;

    if-nez p3, :cond_4

    goto :goto_5

    :cond_4
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    :goto_5
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGDefsManagerInterface;->setClipRule(Landroid/view/View;I)V

    .line 52
    goto/16 :goto_d

    .line 48
    :pswitch_4
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGDefsManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGDefsManagerInterface;

    if-nez p3, :cond_5

    goto :goto_6

    :cond_5
    move-object v2, p3

    check-cast v2, Ljava/lang/String;

    :goto_6
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSVGDefsManagerInterface;->setClipPath(Landroid/view/View;Ljava/lang/String;)V

    .line 49
    goto/16 :goto_d

    .line 45
    :pswitch_5
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGDefsManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGDefsManagerInterface;

    if-nez p3, :cond_6

    goto :goto_7

    :cond_6
    move-object v2, p3

    check-cast v2, Ljava/lang/String;

    :goto_7
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSVGDefsManagerInterface;->setMarkerEnd(Landroid/view/View;Ljava/lang/String;)V

    .line 46
    goto :goto_d

    .line 42
    :pswitch_6
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGDefsManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGDefsManagerInterface;

    if-nez p3, :cond_7

    goto :goto_8

    :cond_7
    move-object v2, p3

    check-cast v2, Ljava/lang/String;

    :goto_8
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSVGDefsManagerInterface;->setMarkerMid(Landroid/view/View;Ljava/lang/String;)V

    .line 43
    goto :goto_d

    .line 39
    :pswitch_7
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGDefsManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGDefsManagerInterface;

    if-nez p3, :cond_8

    goto :goto_9

    :cond_8
    move-object v2, p3

    check-cast v2, Ljava/lang/String;

    :goto_9
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSVGDefsManagerInterface;->setMarkerStart(Landroid/view/View;Ljava/lang/String;)V

    .line 40
    goto :goto_d

    .line 36
    :pswitch_8
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGDefsManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGDefsManagerInterface;

    if-nez p3, :cond_9

    goto :goto_a

    :cond_9
    move-object v2, p3

    check-cast v2, Ljava/lang/String;

    :goto_a
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSVGDefsManagerInterface;->setMask(Landroid/view/View;Ljava/lang/String;)V

    .line 37
    goto :goto_d

    .line 33
    :pswitch_9
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGDefsManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGDefsManagerInterface;

    move-object v1, p3

    check-cast v1, Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGDefsManagerInterface;->setMatrix(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 34
    goto :goto_d

    .line 30
    :pswitch_a
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGDefsManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    if-nez p3, :cond_a

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_b

    :cond_a
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    :goto_b
    invoke-virtual {v0, p1, v1}, Lcom/facebook/react/uimanager/BaseViewManager;->setOpacity(Landroid/view/View;F)V

    .line 31
    goto :goto_d

    .line 27
    :pswitch_b
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGDefsManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGDefsManagerInterface;

    if-nez p3, :cond_b

    goto :goto_c

    :cond_b
    move-object v2, p3

    check-cast v2, Ljava/lang/String;

    :goto_c
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSVGDefsManagerInterface;->setName(Landroid/view/View;Ljava/lang/String;)V

    .line 28
    nop

    .line 65
    :goto_d
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4b8807f5 -> :sswitch_b
        -0x4072683f -> :sswitch_a
        -0x37a9a5bf -> :sswitch_9
        -0x37a98852 -> :sswitch_8
        -0x117e564a -> :sswitch_7
        0x3306ec -> :sswitch_6
        0x337a8b -> :sswitch_5
        0xcf0d448 -> :sswitch_4
        0x36b25395 -> :sswitch_3
        0x36b3866c -> :sswitch_2
        0x63a518c2 -> :sswitch_1
        0x6e2146f6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
