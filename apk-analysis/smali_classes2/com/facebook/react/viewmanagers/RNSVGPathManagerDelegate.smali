.class public Lcom/facebook/react/viewmanagers/RNSVGPathManagerDelegate;
.super Lcom/facebook/react/uimanager/BaseViewManagerDelegate;
.source "RNSVGPathManagerDelegate.java"


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
        "Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface<",
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

    .line 23
    .local p0, "this":Lcom/facebook/react/viewmanagers/RNSVGPathManagerDelegate;, "Lcom/facebook/react/viewmanagers/RNSVGPathManagerDelegate<TT;TU;>;"
    .local p1, "viewManager":Lcom/facebook/react/uimanager/BaseViewManager;, "TU;"
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;-><init>(Lcom/facebook/react/uimanager/BaseViewManagerInterface;)V

    .line 24
    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
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

    .line 27
    .local p0, "this":Lcom/facebook/react/viewmanagers/RNSVGPathManagerDelegate;, "Lcom/facebook/react/viewmanagers/RNSVGPathManagerDelegate<TT;TU;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v0, "strokeWidth"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "responsible"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "strokeLinejoin"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "display"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "strokeLinecap"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "clipRule"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "clipPath"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "strokeDasharray"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "markerStart"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "vectorEffect"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "color"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "strokeMiterlimit"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "mask"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "fill"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "d"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "strokeDashoffset"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "fillOpacity"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "pointerEvents"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "strokeOpacity"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_1

    :sswitch_14
    const-string v0, "fillRule"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_1

    :sswitch_15
    const-string v0, "stroke"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_1

    :sswitch_16
    const-string v0, "markerMid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_17
    const-string v0, "markerEnd"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_18
    const-string v0, "propList"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto :goto_1

    :sswitch_19
    const-string v0, "matrix"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1a
    const-string v0, "opacity"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_1b
    const-string v0, "filter"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    .line 113
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->setProperty(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 110
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;

    if-nez p3, :cond_1

    goto :goto_2

    :cond_1
    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    :goto_2
    invoke-interface {v0, p1, v5}, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;->setD(Landroid/view/View;Ljava/lang/String;)V

    .line 111
    goto/16 :goto_17

    .line 107
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;

    if-nez p3, :cond_2

    goto :goto_3

    :cond_2
    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    :goto_3
    invoke-interface {v0, p1, v5}, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;->setFilter(Landroid/view/View;Ljava/lang/String;)V

    .line 108
    goto/16 :goto_17

    .line 104
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;

    move-object v1, p3

    check-cast v1, Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;->setPropList(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 105
    goto/16 :goto_17

    .line 101
    :pswitch_3
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;

    if-nez p3, :cond_3

    goto :goto_4

    :cond_3
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v2

    :goto_4
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;->setVectorEffect(Landroid/view/View;I)V

    .line 102
    goto/16 :goto_17

    .line 98
    :pswitch_4
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;

    if-nez p3, :cond_4

    goto :goto_5

    :cond_4
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v3

    :goto_5
    invoke-interface {v0, p1, v3}, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;->setStrokeMiterlimit(Landroid/view/View;F)V

    .line 99
    goto/16 :goto_17

    .line 95
    :pswitch_5
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;

    if-nez p3, :cond_5

    goto :goto_6

    :cond_5
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v3

    :goto_6
    invoke-interface {v0, p1, v3}, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;->setStrokeDashoffset(Landroid/view/View;F)V

    .line 96
    goto/16 :goto_17

    .line 92
    :pswitch_6
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;->setStrokeDasharray(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    .line 93
    goto/16 :goto_17

    .line 89
    :pswitch_7
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;

    if-nez p3, :cond_6

    goto :goto_7

    :cond_6
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v2

    :goto_7
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;->setStrokeLinejoin(Landroid/view/View;I)V

    .line 90
    goto/16 :goto_17

    .line 86
    :pswitch_8
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;

    if-nez p3, :cond_7

    goto :goto_8

    :cond_7
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v2

    :goto_8
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;->setStrokeLinecap(Landroid/view/View;I)V

    .line 87
    goto/16 :goto_17

    .line 83
    :pswitch_9
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;->setStrokeWidth(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    .line 84
    goto/16 :goto_17

    .line 80
    :pswitch_a
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;

    if-nez p3, :cond_8

    goto :goto_9

    :cond_8
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v4

    :goto_9
    invoke-interface {v0, p1, v4}, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;->setStrokeOpacity(Landroid/view/View;F)V

    .line 81
    goto/16 :goto_17

    .line 77
    :pswitch_b
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;->setStroke(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    .line 78
    goto/16 :goto_17

    .line 74
    :pswitch_c
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;

    if-nez p3, :cond_9

    goto :goto_a

    :cond_9
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    :goto_a
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;->setFillRule(Landroid/view/View;I)V

    .line 75
    goto/16 :goto_17

    .line 71
    :pswitch_d
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;

    if-nez p3, :cond_a

    goto :goto_b

    :cond_a
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v4

    :goto_b
    invoke-interface {v0, p1, v4}, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;->setFillOpacity(Landroid/view/View;F)V

    .line 72
    goto/16 :goto_17

    .line 68
    :pswitch_e
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;->setFill(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    .line 69
    goto/16 :goto_17

    .line 65
    :pswitch_f
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;->setColor(Landroid/view/View;Ljava/lang/Integer;)V

    .line 66
    goto/16 :goto_17

    .line 62
    :pswitch_10
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;

    if-nez p3, :cond_b

    goto :goto_c

    :cond_b
    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    :goto_c
    invoke-interface {v0, p1, v5}, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;->setPointerEvents(Landroid/view/View;Ljava/lang/String;)V

    .line 63
    goto/16 :goto_17

    .line 59
    :pswitch_11
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;

    if-nez p3, :cond_c

    goto :goto_d

    :cond_c
    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    :goto_d
    invoke-interface {v0, p1, v5}, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;->setDisplay(Landroid/view/View;Ljava/lang/String;)V

    .line 60
    goto/16 :goto_17

    .line 56
    :pswitch_12
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;

    if-nez p3, :cond_d

    goto :goto_e

    :cond_d
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_e
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;->setResponsible(Landroid/view/View;Z)V

    .line 57
    goto/16 :goto_17

    .line 53
    :pswitch_13
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;

    if-nez p3, :cond_e

    goto :goto_f

    :cond_e
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v2

    :goto_f
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;->setClipRule(Landroid/view/View;I)V

    .line 54
    goto/16 :goto_17

    .line 50
    :pswitch_14
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;

    if-nez p3, :cond_f

    goto :goto_10

    :cond_f
    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    :goto_10
    invoke-interface {v0, p1, v5}, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;->setClipPath(Landroid/view/View;Ljava/lang/String;)V

    .line 51
    goto/16 :goto_17

    .line 47
    :pswitch_15
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;

    if-nez p3, :cond_10

    goto :goto_11

    :cond_10
    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    :goto_11
    invoke-interface {v0, p1, v5}, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;->setMarkerEnd(Landroid/view/View;Ljava/lang/String;)V

    .line 48
    goto :goto_17

    .line 44
    :pswitch_16
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;

    if-nez p3, :cond_11

    goto :goto_12

    :cond_11
    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    :goto_12
    invoke-interface {v0, p1, v5}, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;->setMarkerMid(Landroid/view/View;Ljava/lang/String;)V

    .line 45
    goto :goto_17

    .line 41
    :pswitch_17
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;

    if-nez p3, :cond_12

    goto :goto_13

    :cond_12
    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    :goto_13
    invoke-interface {v0, p1, v5}, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;->setMarkerStart(Landroid/view/View;Ljava/lang/String;)V

    .line 42
    goto :goto_17

    .line 38
    :pswitch_18
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;

    if-nez p3, :cond_13

    goto :goto_14

    :cond_13
    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    :goto_14
    invoke-interface {v0, p1, v5}, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;->setMask(Landroid/view/View;Ljava/lang/String;)V

    .line 39
    goto :goto_17

    .line 35
    :pswitch_19
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;

    move-object v1, p3

    check-cast v1, Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;->setMatrix(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 36
    goto :goto_17

    .line 32
    :pswitch_1a
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    if-nez p3, :cond_14

    goto :goto_15

    :cond_14
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v4

    :goto_15
    invoke-virtual {v0, p1, v4}, Lcom/facebook/react/uimanager/BaseViewManager;->setOpacity(Landroid/view/View;F)V

    .line 33
    goto :goto_17

    .line 29
    :pswitch_1b
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;

    if-nez p3, :cond_15

    goto :goto_16

    :cond_15
    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    :goto_16
    invoke-interface {v0, p1, v5}, Lcom/facebook/react/viewmanagers/RNSVGPathManagerInterface;->setName(Landroid/view/View;Ljava/lang/String;)V

    .line 30
    nop

    .line 115
    :goto_17
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4bf73488 -> :sswitch_1b
        -0x4b8807f5 -> :sswitch_1a
        -0x4072683f -> :sswitch_19
        -0x3b3da15f -> :sswitch_18
        -0x37a9a5bf -> :sswitch_17
        -0x37a98852 -> :sswitch_16
        -0x352a89c8 -> :sswitch_15
        -0x2b7578e1 -> :sswitch_14
        -0x18d3d54d -> :sswitch_13
        -0x117e564a -> :sswitch_12
        -0x3330ef8 -> :sswitch_11
        -0x2a83503 -> :sswitch_10
        0x64 -> :sswitch_f
        0x2ff583 -> :sswitch_e
        0x3306ec -> :sswitch_d
        0x337a8b -> :sswitch_c
        0x4b3162e -> :sswitch_b
        0x5a72f63 -> :sswitch_a
        0x63a48b4 -> :sswitch_9
        0xcf0d448 -> :sswitch_8
        0x17f096af -> :sswitch_7
        0x36b25395 -> :sswitch_6
        0x36b3866c -> :sswitch_5
        0x3d3f8e06 -> :sswitch_4
        0x63a518c2 -> :sswitch_3
        0x6ab59576 -> :sswitch_2
        0x6e2146f6 -> :sswitch_1
        0x72aeea6e -> :sswitch_0
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
