.class public Lcom/facebook/react/viewmanagers/RNSVGPatternManagerDelegate;
.super Lcom/facebook/react/uimanager/BaseViewManagerDelegate;
.source "RNSVGPatternManagerDelegate.java"


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
        "Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface<",
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
    .local p0, "this":Lcom/facebook/react/viewmanagers/RNSVGPatternManagerDelegate;, "Lcom/facebook/react/viewmanagers/RNSVGPatternManagerDelegate<TT;TU;>;"
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
    .local p0, "this":Lcom/facebook/react/viewmanagers/RNSVGPatternManagerDelegate;, "Lcom/facebook/react/viewmanagers/RNSVGPatternManagerDelegate<TT;TU;>;"
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
    const-string v0, "meetOrSlice"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2a

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "responsible"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "strokeLinejoin"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "display"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "strokeLinecap"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "clipRule"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "clipPath"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "patternTransform"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x24

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "strokeDasharray"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "fontSize"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "vbWidth"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x27

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "markerStart"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "width"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x21

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "vectorEffect"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "color"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "align"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x29

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "strokeMiterlimit"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "minY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x26

    goto/16 :goto_1

    :sswitch_14
    const-string v0, "minX"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x25

    goto/16 :goto_1

    :sswitch_15
    const-string v0, "mask"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_16
    const-string v0, "font"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto/16 :goto_1

    :sswitch_17
    const-string v0, "fill"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_18
    const-string v0, "y"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    goto/16 :goto_1

    :sswitch_19
    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto/16 :goto_1

    :sswitch_1a
    const-string v0, "strokeDashoffset"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_1b
    const-string v0, "fillOpacity"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_1c
    const-string v0, "patternContentUnits"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x23

    goto/16 :goto_1

    :sswitch_1d
    const-string v0, "patternUnits"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x22

    goto/16 :goto_1

    :sswitch_1e
    const-string v0, "pointerEvents"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_1f
    const-string v0, "strokeOpacity"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_20
    const-string v0, "fillRule"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_21
    const-string v0, "fontWeight"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    goto/16 :goto_1

    :sswitch_22
    const-string v0, "stroke"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_1

    :sswitch_23
    const-string v0, "markerMid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_24
    const-string v0, "markerEnd"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_25
    const-string v0, "propList"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto :goto_1

    :sswitch_26
    const-string v0, "matrix"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_27
    const-string v0, "height"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto :goto_1

    :sswitch_28
    const-string v0, "opacity"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_29
    const-string v0, "filter"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto :goto_1

    :sswitch_2a
    const-string v0, "vbHeight"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x28

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    .line 158
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->setProperty(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1e

    .line 155
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;

    if-nez p3, :cond_1

    goto :goto_2

    :cond_1
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v2

    :goto_2
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;->setMeetOrSlice(Landroid/view/View;I)V

    .line 156
    goto/16 :goto_1e

    .line 152
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;

    if-nez p3, :cond_2

    goto :goto_3

    :cond_2
    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    :goto_3
    invoke-interface {v0, p1, v5}, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;->setAlign(Landroid/view/View;Ljava/lang/String;)V

    .line 153
    goto/16 :goto_1e

    .line 149
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;

    if-nez p3, :cond_3

    goto :goto_4

    :cond_3
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v4

    :goto_4
    invoke-interface {v0, p1, v4}, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;->setVbHeight(Landroid/view/View;F)V

    .line 150
    goto/16 :goto_1e

    .line 146
    :pswitch_3
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;

    if-nez p3, :cond_4

    goto :goto_5

    :cond_4
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v4

    :goto_5
    invoke-interface {v0, p1, v4}, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;->setVbWidth(Landroid/view/View;F)V

    .line 147
    goto/16 :goto_1e

    .line 143
    :pswitch_4
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;

    if-nez p3, :cond_5

    goto :goto_6

    :cond_5
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v4

    :goto_6
    invoke-interface {v0, p1, v4}, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;->setMinY(Landroid/view/View;F)V

    .line 144
    goto/16 :goto_1e

    .line 140
    :pswitch_5
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;

    if-nez p3, :cond_6

    goto :goto_7

    :cond_6
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v4

    :goto_7
    invoke-interface {v0, p1, v4}, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;->setMinX(Landroid/view/View;F)V

    .line 141
    goto/16 :goto_1e

    .line 137
    :pswitch_6
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;

    move-object v1, p3

    check-cast v1, Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;->setPatternTransform(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 138
    goto/16 :goto_1e

    .line 134
    :pswitch_7
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;

    if-nez p3, :cond_7

    goto :goto_8

    :cond_7
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v2

    :goto_8
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;->setPatternContentUnits(Landroid/view/View;I)V

    .line 135
    goto/16 :goto_1e

    .line 131
    :pswitch_8
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;

    if-nez p3, :cond_8

    goto :goto_9

    :cond_8
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v2

    :goto_9
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;->setPatternUnits(Landroid/view/View;I)V

    .line 132
    goto/16 :goto_1e

    .line 128
    :pswitch_9
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;->setWidth(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    .line 129
    goto/16 :goto_1e

    .line 125
    :pswitch_a
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;->setHeight(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    .line 126
    goto/16 :goto_1e

    .line 122
    :pswitch_b
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;->setY(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    .line 123
    goto/16 :goto_1e

    .line 119
    :pswitch_c
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;->setX(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    .line 120
    goto/16 :goto_1e

    .line 116
    :pswitch_d
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;->setFont(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    .line 117
    goto/16 :goto_1e

    .line 113
    :pswitch_e
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;->setFontWeight(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    .line 114
    goto/16 :goto_1e

    .line 110
    :pswitch_f
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;->setFontSize(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    .line 111
    goto/16 :goto_1e

    .line 107
    :pswitch_10
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;

    if-nez p3, :cond_9

    goto :goto_a

    :cond_9
    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    :goto_a
    invoke-interface {v0, p1, v5}, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;->setFilter(Landroid/view/View;Ljava/lang/String;)V

    .line 108
    goto/16 :goto_1e

    .line 104
    :pswitch_11
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;

    move-object v1, p3

    check-cast v1, Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;->setPropList(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 105
    goto/16 :goto_1e

    .line 101
    :pswitch_12
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;

    if-nez p3, :cond_a

    goto :goto_b

    :cond_a
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v2

    :goto_b
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;->setVectorEffect(Landroid/view/View;I)V

    .line 102
    goto/16 :goto_1e

    .line 98
    :pswitch_13
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;

    if-nez p3, :cond_b

    goto :goto_c

    :cond_b
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v4

    :goto_c
    invoke-interface {v0, p1, v4}, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;->setStrokeMiterlimit(Landroid/view/View;F)V

    .line 99
    goto/16 :goto_1e

    .line 95
    :pswitch_14
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;

    if-nez p3, :cond_c

    goto :goto_d

    :cond_c
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v4

    :goto_d
    invoke-interface {v0, p1, v4}, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;->setStrokeDashoffset(Landroid/view/View;F)V

    .line 96
    goto/16 :goto_1e

    .line 92
    :pswitch_15
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;->setStrokeDasharray(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    .line 93
    goto/16 :goto_1e

    .line 89
    :pswitch_16
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;

    if-nez p3, :cond_d

    goto :goto_e

    :cond_d
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v2

    :goto_e
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;->setStrokeLinejoin(Landroid/view/View;I)V

    .line 90
    goto/16 :goto_1e

    .line 86
    :pswitch_17
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;

    if-nez p3, :cond_e

    goto :goto_f

    :cond_e
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v2

    :goto_f
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;->setStrokeLinecap(Landroid/view/View;I)V

    .line 87
    goto/16 :goto_1e

    .line 83
    :pswitch_18
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;->setStrokeWidth(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    .line 84
    goto/16 :goto_1e

    .line 80
    :pswitch_19
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;

    if-nez p3, :cond_f

    goto :goto_10

    :cond_f
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v3

    :goto_10
    invoke-interface {v0, p1, v3}, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;->setStrokeOpacity(Landroid/view/View;F)V

    .line 81
    goto/16 :goto_1e

    .line 77
    :pswitch_1a
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;->setStroke(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    .line 78
    goto/16 :goto_1e

    .line 74
    :pswitch_1b
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;

    if-nez p3, :cond_10

    goto :goto_11

    :cond_10
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    :goto_11
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;->setFillRule(Landroid/view/View;I)V

    .line 75
    goto/16 :goto_1e

    .line 71
    :pswitch_1c
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;

    if-nez p3, :cond_11

    goto :goto_12

    :cond_11
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v3

    :goto_12
    invoke-interface {v0, p1, v3}, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;->setFillOpacity(Landroid/view/View;F)V

    .line 72
    goto/16 :goto_1e

    .line 68
    :pswitch_1d
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;->setFill(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    .line 69
    goto/16 :goto_1e

    .line 65
    :pswitch_1e
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;->setColor(Landroid/view/View;Ljava/lang/Integer;)V

    .line 66
    goto/16 :goto_1e

    .line 62
    :pswitch_1f
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;

    if-nez p3, :cond_12

    goto :goto_13

    :cond_12
    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    :goto_13
    invoke-interface {v0, p1, v5}, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;->setPointerEvents(Landroid/view/View;Ljava/lang/String;)V

    .line 63
    goto/16 :goto_1e

    .line 59
    :pswitch_20
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;

    if-nez p3, :cond_13

    goto :goto_14

    :cond_13
    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    :goto_14
    invoke-interface {v0, p1, v5}, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;->setDisplay(Landroid/view/View;Ljava/lang/String;)V

    .line 60
    goto/16 :goto_1e

    .line 56
    :pswitch_21
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;

    if-nez p3, :cond_14

    goto :goto_15

    :cond_14
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_15
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;->setResponsible(Landroid/view/View;Z)V

    .line 57
    goto/16 :goto_1e

    .line 53
    :pswitch_22
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;

    if-nez p3, :cond_15

    goto :goto_16

    :cond_15
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v2

    :goto_16
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;->setClipRule(Landroid/view/View;I)V

    .line 54
    goto/16 :goto_1e

    .line 50
    :pswitch_23
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;

    if-nez p3, :cond_16

    goto :goto_17

    :cond_16
    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    :goto_17
    invoke-interface {v0, p1, v5}, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;->setClipPath(Landroid/view/View;Ljava/lang/String;)V

    .line 51
    goto/16 :goto_1e

    .line 47
    :pswitch_24
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;

    if-nez p3, :cond_17

    goto :goto_18

    :cond_17
    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    :goto_18
    invoke-interface {v0, p1, v5}, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;->setMarkerEnd(Landroid/view/View;Ljava/lang/String;)V

    .line 48
    goto :goto_1e

    .line 44
    :pswitch_25
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;

    if-nez p3, :cond_18

    goto :goto_19

    :cond_18
    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    :goto_19
    invoke-interface {v0, p1, v5}, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;->setMarkerMid(Landroid/view/View;Ljava/lang/String;)V

    .line 45
    goto :goto_1e

    .line 41
    :pswitch_26
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;

    if-nez p3, :cond_19

    goto :goto_1a

    :cond_19
    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    :goto_1a
    invoke-interface {v0, p1, v5}, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;->setMarkerStart(Landroid/view/View;Ljava/lang/String;)V

    .line 42
    goto :goto_1e

    .line 38
    :pswitch_27
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;

    if-nez p3, :cond_1a

    goto :goto_1b

    :cond_1a
    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    :goto_1b
    invoke-interface {v0, p1, v5}, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;->setMask(Landroid/view/View;Ljava/lang/String;)V

    .line 39
    goto :goto_1e

    .line 35
    :pswitch_28
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;

    move-object v1, p3

    check-cast v1, Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;->setMatrix(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 36
    goto :goto_1e

    .line 32
    :pswitch_29
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    if-nez p3, :cond_1b

    goto :goto_1c

    :cond_1b
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v3

    :goto_1c
    invoke-virtual {v0, p1, v3}, Lcom/facebook/react/uimanager/BaseViewManager;->setOpacity(Landroid/view/View;F)V

    .line 33
    goto :goto_1e

    .line 29
    :pswitch_2a
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;

    if-nez p3, :cond_1c

    goto :goto_1d

    :cond_1c
    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    :goto_1d
    invoke-interface {v0, p1, v5}, Lcom/facebook/react/viewmanagers/RNSVGPatternManagerInterface;->setName(Landroid/view/View;Ljava/lang/String;)V

    .line 30
    nop

    .line 160
    :goto_1e
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5d75250d -> :sswitch_2a
        -0x4bf73488 -> :sswitch_29
        -0x4b8807f5 -> :sswitch_28
        -0x48c76ed9 -> :sswitch_27
        -0x4072683f -> :sswitch_26
        -0x3b3da15f -> :sswitch_25
        -0x37a9a5bf -> :sswitch_24
        -0x37a98852 -> :sswitch_23
        -0x352a89c8 -> :sswitch_22
        -0x2bc67c59 -> :sswitch_21
        -0x2b7578e1 -> :sswitch_20
        -0x18d3d54d -> :sswitch_1f
        -0x117e564a -> :sswitch_1e
        -0xc62ca41 -> :sswitch_1d
        -0x7ab81da -> :sswitch_1c
        -0x3330ef8 -> :sswitch_1b
        -0x2a83503 -> :sswitch_1a
        0x78 -> :sswitch_19
        0x79 -> :sswitch_18
        0x2ff583 -> :sswitch_17
        0x300c4f -> :sswitch_16
        0x3306ec -> :sswitch_15
        0x332446 -> :sswitch_14
        0x332447 -> :sswitch_13
        0x337a8b -> :sswitch_12
        0x4b3162e -> :sswitch_11
        0x5899705 -> :sswitch_10
        0x5a72f63 -> :sswitch_f
        0x63a48b4 -> :sswitch_e
        0x6be2dc6 -> :sswitch_d
        0xcf0d448 -> :sswitch_c
        0xe557a7a -> :sswitch_b
        0x15caa0f0 -> :sswitch_a
        0x17f096af -> :sswitch_9
        0x2c7fa1bc -> :sswitch_8
        0x36b25395 -> :sswitch_7
        0x36b3866c -> :sswitch_6
        0x3d3f8e06 -> :sswitch_5
        0x63a518c2 -> :sswitch_4
        0x6ab59576 -> :sswitch_3
        0x6e2146f6 -> :sswitch_2
        0x71baeb28 -> :sswitch_1
        0x72aeea6e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
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
