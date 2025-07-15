.class public Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerDelegate;
.super Lcom/facebook/react/uimanager/BaseViewManagerDelegate;
.source "RNSVGRadialGradientManagerDelegate.java"


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
        "Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerInterface<",
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

    .line 22
    .local p0, "this":Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerDelegate;, "Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerDelegate<TT;TU;>;"
    .local p1, "viewManager":Lcom/facebook/react/uimanager/BaseViewManager;, "TU;"
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;-><init>(Lcom/facebook/react/uimanager/BaseViewManagerInterface;)V

    .line 23
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

    .line 26
    .local p0, "this":Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerDelegate;, "Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerDelegate<TT;TU;>;"
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
    const-string v0, "gradientTransform"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "display"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "clipRule"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "clipPath"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "markerStart"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "gradient"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "mask"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "ry"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "rx"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "fy"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_c
    const-string v0, "fx"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_d
    const-string v0, "cy"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_1

    :sswitch_e
    const-string v0, "cx"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :sswitch_f
    const-string v0, "pointerEvents"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_10
    const-string v0, "markerMid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_11
    const-string v0, "markerEnd"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_12
    const-string v0, "matrix"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_13
    const-string v0, "opacity"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_14
    const-string v0, "gradientUnits"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->setProperty(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_e

    .line 88
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerInterface;

    move-object v1, p3

    check-cast v1, Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerInterface;->setGradientTransform(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 89
    goto/16 :goto_e

    .line 85
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerInterface;

    if-nez p3, :cond_1

    goto :goto_2

    :cond_1
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    :goto_2
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerInterface;->setGradientUnits(Landroid/view/View;I)V

    .line 86
    goto/16 :goto_e

    .line 82
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerInterface;

    move-object v1, p3

    check-cast v1, Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerInterface;->setGradient(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 83
    goto/16 :goto_e

    .line 79
    :pswitch_3
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerInterface;

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerInterface;->setRy(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    .line 80
    goto/16 :goto_e

    .line 76
    :pswitch_4
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerInterface;

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerInterface;->setRx(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    .line 77
    goto/16 :goto_e

    .line 73
    :pswitch_5
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerInterface;

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerInterface;->setCy(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    .line 74
    goto/16 :goto_e

    .line 70
    :pswitch_6
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerInterface;

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerInterface;->setCx(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    .line 71
    goto/16 :goto_e

    .line 67
    :pswitch_7
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerInterface;

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerInterface;->setFy(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    .line 68
    goto/16 :goto_e

    .line 64
    :pswitch_8
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerInterface;

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerInterface;->setFx(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    .line 65
    goto/16 :goto_e

    .line 61
    :pswitch_9
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerInterface;

    if-nez p3, :cond_2

    goto :goto_3

    :cond_2
    move-object v2, p3

    check-cast v2, Ljava/lang/String;

    :goto_3
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerInterface;->setPointerEvents(Landroid/view/View;Ljava/lang/String;)V

    .line 62
    goto/16 :goto_e

    .line 58
    :pswitch_a
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerInterface;

    if-nez p3, :cond_3

    goto :goto_4

    :cond_3
    move-object v2, p3

    check-cast v2, Ljava/lang/String;

    :goto_4
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerInterface;->setDisplay(Landroid/view/View;Ljava/lang/String;)V

    .line 59
    goto/16 :goto_e

    .line 55
    :pswitch_b
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerInterface;

    if-nez p3, :cond_4

    goto :goto_5

    :cond_4
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_5
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerInterface;->setResponsible(Landroid/view/View;Z)V

    .line 56
    goto/16 :goto_e

    .line 52
    :pswitch_c
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerInterface;

    if-nez p3, :cond_5

    goto :goto_6

    :cond_5
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    :goto_6
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerInterface;->setClipRule(Landroid/view/View;I)V

    .line 53
    goto/16 :goto_e

    .line 49
    :pswitch_d
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerInterface;

    if-nez p3, :cond_6

    goto :goto_7

    :cond_6
    move-object v2, p3

    check-cast v2, Ljava/lang/String;

    :goto_7
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerInterface;->setClipPath(Landroid/view/View;Ljava/lang/String;)V

    .line 50
    goto/16 :goto_e

    .line 46
    :pswitch_e
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerInterface;

    if-nez p3, :cond_7

    goto :goto_8

    :cond_7
    move-object v2, p3

    check-cast v2, Ljava/lang/String;

    :goto_8
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerInterface;->setMarkerEnd(Landroid/view/View;Ljava/lang/String;)V

    .line 47
    goto :goto_e

    .line 43
    :pswitch_f
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerInterface;

    if-nez p3, :cond_8

    goto :goto_9

    :cond_8
    move-object v2, p3

    check-cast v2, Ljava/lang/String;

    :goto_9
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerInterface;->setMarkerMid(Landroid/view/View;Ljava/lang/String;)V

    .line 44
    goto :goto_e

    .line 40
    :pswitch_10
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerInterface;

    if-nez p3, :cond_9

    goto :goto_a

    :cond_9
    move-object v2, p3

    check-cast v2, Ljava/lang/String;

    :goto_a
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerInterface;->setMarkerStart(Landroid/view/View;Ljava/lang/String;)V

    .line 41
    goto :goto_e

    .line 37
    :pswitch_11
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerInterface;

    if-nez p3, :cond_a

    goto :goto_b

    :cond_a
    move-object v2, p3

    check-cast v2, Ljava/lang/String;

    :goto_b
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerInterface;->setMask(Landroid/view/View;Ljava/lang/String;)V

    .line 38
    goto :goto_e

    .line 34
    :pswitch_12
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerInterface;

    move-object v1, p3

    check-cast v1, Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerInterface;->setMatrix(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 35
    goto :goto_e

    .line 31
    :pswitch_13
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    if-nez p3, :cond_b

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_c

    :cond_b
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    :goto_c
    invoke-virtual {v0, p1, v1}, Lcom/facebook/react/uimanager/BaseViewManager;->setOpacity(Landroid/view/View;F)V

    .line 32
    goto :goto_e

    .line 28
    :pswitch_14
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerInterface;

    if-nez p3, :cond_c

    goto :goto_d

    :cond_c
    move-object v2, p3

    check-cast v2, Ljava/lang/String;

    :goto_d
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSVGRadialGradientManagerInterface;->setName(Landroid/view/View;Ljava/lang/String;)V

    .line 29
    nop

    .line 93
    :goto_e
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x732b91e1 -> :sswitch_14
        -0x4b8807f5 -> :sswitch_13
        -0x4072683f -> :sswitch_12
        -0x37a9a5bf -> :sswitch_11
        -0x37a98852 -> :sswitch_10
        -0x117e564a -> :sswitch_f
        0xc75 -> :sswitch_e
        0xc76 -> :sswitch_d
        0xcd2 -> :sswitch_c
        0xcd3 -> :sswitch_b
        0xe46 -> :sswitch_a
        0xe47 -> :sswitch_9
        0x3306ec -> :sswitch_8
        0x337a8b -> :sswitch_7
        0x557f730 -> :sswitch_6
        0xcf0d448 -> :sswitch_5
        0x36b25395 -> :sswitch_4
        0x36b3866c -> :sswitch_3
        0x63a518c2 -> :sswitch_2
        0x6ca3aa1c -> :sswitch_1
        0x6e2146f6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
