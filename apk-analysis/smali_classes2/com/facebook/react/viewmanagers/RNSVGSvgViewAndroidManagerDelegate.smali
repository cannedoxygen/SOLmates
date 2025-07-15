.class public Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;
.super Lcom/facebook/react/uimanager/BaseViewManagerDelegate;
.source "RNSVGSvgViewAndroidManagerDelegate.java"


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
        "Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface<",
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
    .local p0, "this":Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;, "Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate<TT;TU;>;"
    .local p1, "viewManager":Lcom/facebook/react/uimanager/BaseViewManager;, "TU;"
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;-><init>(Lcom/facebook/react/uimanager/BaseViewManagerInterface;)V

    .line 24
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

    .line 27
    .local p0, "this":Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;, "Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate<TT;TU;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v0, "borderStartColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "nextFocusRight"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "meetOrSlice"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "nativeBackgroundAndroid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "borderEndEndRadius"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2c

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "needsOffscreenAlphaCompositing"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "focusable"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "borderRadius"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x23

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "borderEndColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "hitSlop"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "borderEndStartRadius"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2d

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "borderBlockEndColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x21

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "borderStyle"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "borderColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "borderBlockColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "nextFocusUp"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "borderBottomRightRadius"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x26

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "borderBottomLeftRadius"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x27

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "nextFocusForward"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "borderTopRightRadius"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x25

    goto/16 :goto_1

    :sswitch_14
    const-string v0, "borderBlockStartColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x22

    goto/16 :goto_1

    :sswitch_15
    const-string v0, "vbWidth"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_16
    const-string v0, "color"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_17
    const-string v0, "align"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_18
    const-string v0, "minY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_19
    const-string v0, "minX"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_1a
    const-string v0, "borderStartStartRadius"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2f

    goto/16 :goto_1

    :sswitch_1b
    const-string v0, "nativeForegroundAndroid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_1c
    const-string v0, "borderBottomEndRadius"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2b

    goto/16 :goto_1

    :sswitch_1d
    const-string v0, "borderStartEndRadius"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2e

    goto/16 :goto_1

    :sswitch_1e
    const-string v0, "borderLeftColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_1f
    const-string v0, "removeClippedSubviews"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_20
    const-string v0, "pointerEvents"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_21
    const-string v0, "bbWidth"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto/16 :goto_1

    :sswitch_22
    const-string v0, "borderTopEndRadius"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x29

    goto/16 :goto_1

    :sswitch_23
    const-string v0, "nextFocusLeft"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    goto/16 :goto_1

    :sswitch_24
    const-string v0, "nextFocusDown"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_25
    const-string v0, "hasTVPreferredFocus"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_26
    const-string v0, "borderBottomStartRadius"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2a

    goto/16 :goto_1

    :sswitch_27
    const-string v0, "borderTopStartRadius"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x28

    goto :goto_1

    :sswitch_28
    const-string v0, "accessible"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto :goto_1

    :sswitch_29
    const-string v0, "borderTopLeftRadius"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x24

    goto :goto_1

    :sswitch_2a
    const-string v0, "borderBottomColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_2b
    const-string v0, "borderTopColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto :goto_1

    :sswitch_2c
    const-string v0, "vbHeight"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_2d
    const-string v0, "backfaceVisibility"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto :goto_1

    :sswitch_2e
    const-string v0, "borderRightColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_2f
    const-string v0, "bbHeight"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 173
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->setProperty(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_15

    .line 170
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;->setBorderStartStartRadius(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    .line 171
    goto/16 :goto_15

    .line 167
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;->setBorderStartEndRadius(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    .line 168
    goto/16 :goto_15

    .line 164
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;->setBorderEndStartRadius(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    .line 165
    goto/16 :goto_15

    .line 161
    :pswitch_3
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;->setBorderEndEndRadius(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    .line 162
    goto/16 :goto_15

    .line 158
    :pswitch_4
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;->setBorderBottomEndRadius(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    .line 159
    goto/16 :goto_15

    .line 155
    :pswitch_5
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;->setBorderBottomStartRadius(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    .line 156
    goto/16 :goto_15

    .line 152
    :pswitch_6
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;->setBorderTopEndRadius(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    .line 153
    goto/16 :goto_15

    .line 149
    :pswitch_7
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;->setBorderTopStartRadius(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    .line 150
    goto/16 :goto_15

    .line 146
    :pswitch_8
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;->setBorderBottomLeftRadius(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    .line 147
    goto/16 :goto_15

    .line 143
    :pswitch_9
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;->setBorderBottomRightRadius(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    .line 144
    goto/16 :goto_15

    .line 140
    :pswitch_a
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;->setBorderTopRightRadius(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    .line 141
    goto/16 :goto_15

    .line 137
    :pswitch_b
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;->setBorderTopLeftRadius(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    .line 138
    goto/16 :goto_15

    .line 134
    :pswitch_c
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;->setBorderRadius(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    .line 135
    goto/16 :goto_15

    .line 131
    :pswitch_d
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;->setBorderBlockStartColor(Landroid/view/View;Ljava/lang/Integer;)V

    .line 132
    goto/16 :goto_15

    .line 128
    :pswitch_e
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;->setBorderBlockEndColor(Landroid/view/View;Ljava/lang/Integer;)V

    .line 129
    goto/16 :goto_15

    .line 125
    :pswitch_f
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;->setBorderBlockColor(Landroid/view/View;Ljava/lang/Integer;)V

    .line 126
    goto/16 :goto_15

    .line 122
    :pswitch_10
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;

    if-nez p3, :cond_1

    goto :goto_2

    :cond_1
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    :goto_2
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;->setNextFocusLeft(Landroid/view/View;I)V

    .line 123
    goto/16 :goto_15

    .line 119
    :pswitch_11
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;->setBorderTopColor(Landroid/view/View;Ljava/lang/Integer;)V

    .line 120
    goto/16 :goto_15

    .line 116
    :pswitch_12
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;->setHitSlop(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    .line 117
    goto/16 :goto_15

    .line 113
    :pswitch_13
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;

    if-nez p3, :cond_2

    goto :goto_3

    :cond_2
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_3
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;->setNeedsOffscreenAlphaCompositing(Landroid/view/View;Z)V

    .line 114
    goto/16 :goto_15

    .line 110
    :pswitch_14
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;

    if-nez p3, :cond_3

    goto :goto_4

    :cond_3
    move-object v2, p3

    check-cast v2, Ljava/lang/String;

    :goto_4
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;->setBorderStyle(Landroid/view/View;Ljava/lang/String;)V

    .line 111
    goto/16 :goto_15

    .line 107
    :pswitch_15
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;

    if-nez p3, :cond_4

    goto :goto_5

    :cond_4
    move-object v2, p3

    check-cast v2, Ljava/lang/String;

    :goto_5
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;->setBackfaceVisibility(Landroid/view/View;Ljava/lang/String;)V

    .line 108
    goto/16 :goto_15

    .line 104
    :pswitch_16
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;

    move-object v1, p3

    check-cast v1, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;->setNativeForegroundAndroid(Landroid/view/View;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 105
    goto/16 :goto_15

    .line 101
    :pswitch_17
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;

    move-object v1, p3

    check-cast v1, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;->setNativeBackgroundAndroid(Landroid/view/View;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 102
    goto/16 :goto_15

    .line 98
    :pswitch_18
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;

    if-nez p3, :cond_5

    goto :goto_6

    :cond_5
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_6
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;->setFocusable(Landroid/view/View;Z)V

    .line 99
    goto/16 :goto_15

    .line 95
    :pswitch_19
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;->setBorderEndColor(Landroid/view/View;Ljava/lang/Integer;)V

    .line 96
    goto/16 :goto_15

    .line 92
    :pswitch_1a
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;->setBorderStartColor(Landroid/view/View;Ljava/lang/Integer;)V

    .line 93
    goto/16 :goto_15

    .line 89
    :pswitch_1b
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;

    if-nez p3, :cond_6

    goto :goto_7

    :cond_6
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_7
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;->setAccessible(Landroid/view/View;Z)V

    .line 90
    goto/16 :goto_15

    .line 86
    :pswitch_1c
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;

    if-nez p3, :cond_7

    goto :goto_8

    :cond_7
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    :goto_8
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;->setNextFocusUp(Landroid/view/View;I)V

    .line 87
    goto/16 :goto_15

    .line 83
    :pswitch_1d
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;

    if-nez p3, :cond_8

    goto :goto_9

    :cond_8
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    :goto_9
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;->setNextFocusForward(Landroid/view/View;I)V

    .line 84
    goto/16 :goto_15

    .line 80
    :pswitch_1e
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;

    if-nez p3, :cond_9

    goto :goto_a

    :cond_9
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_a
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;->setRemoveClippedSubviews(Landroid/view/View;Z)V

    .line 81
    goto/16 :goto_15

    .line 77
    :pswitch_1f
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;->setBorderColor(Landroid/view/View;Ljava/lang/Integer;)V

    .line 78
    goto/16 :goto_15

    .line 74
    :pswitch_20
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;->setBorderLeftColor(Landroid/view/View;Ljava/lang/Integer;)V

    .line 75
    goto/16 :goto_15

    .line 71
    :pswitch_21
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;

    if-nez p3, :cond_a

    goto :goto_b

    :cond_a
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    :goto_b
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;->setNextFocusRight(Landroid/view/View;I)V

    .line 72
    goto/16 :goto_15

    .line 68
    :pswitch_22
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;->setBorderRightColor(Landroid/view/View;Ljava/lang/Integer;)V

    .line 69
    goto/16 :goto_15

    .line 65
    :pswitch_23
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;

    if-nez p3, :cond_b

    goto :goto_c

    :cond_b
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    :goto_c
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;->setNextFocusDown(Landroid/view/View;I)V

    .line 66
    goto/16 :goto_15

    .line 62
    :pswitch_24
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;->setBorderBottomColor(Landroid/view/View;Ljava/lang/Integer;)V

    .line 63
    goto/16 :goto_15

    .line 59
    :pswitch_25
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;

    if-nez p3, :cond_c

    goto :goto_d

    :cond_c
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_d
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;->setHasTVPreferredFocus(Landroid/view/View;Z)V

    .line 60
    goto/16 :goto_15

    .line 56
    :pswitch_26
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;

    if-nez p3, :cond_d

    goto :goto_e

    :cond_d
    move-object v2, p3

    check-cast v2, Ljava/lang/String;

    :goto_e
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;->setPointerEvents(Landroid/view/View;Ljava/lang/String;)V

    .line 57
    goto/16 :goto_15

    .line 53
    :pswitch_27
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;->setColor(Landroid/view/View;Ljava/lang/Integer;)V

    .line 54
    goto/16 :goto_15

    .line 50
    :pswitch_28
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;

    if-nez p3, :cond_e

    goto :goto_f

    :cond_e
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    :goto_f
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;->setMeetOrSlice(Landroid/view/View;I)V

    .line 51
    goto/16 :goto_15

    .line 47
    :pswitch_29
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;

    if-nez p3, :cond_f

    goto :goto_10

    :cond_f
    move-object v2, p3

    check-cast v2, Ljava/lang/String;

    :goto_10
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;->setAlign(Landroid/view/View;Ljava/lang/String;)V

    .line 48
    goto/16 :goto_15

    .line 44
    :pswitch_2a
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;

    if-nez p3, :cond_10

    goto :goto_11

    :cond_10
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v3

    :goto_11
    invoke-interface {v0, p1, v3}, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;->setVbHeight(Landroid/view/View;F)V

    .line 45
    goto :goto_15

    .line 41
    :pswitch_2b
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;

    if-nez p3, :cond_11

    goto :goto_12

    :cond_11
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v3

    :goto_12
    invoke-interface {v0, p1, v3}, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;->setVbWidth(Landroid/view/View;F)V

    .line 42
    goto :goto_15

    .line 38
    :pswitch_2c
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;

    if-nez p3, :cond_12

    goto :goto_13

    :cond_12
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v3

    :goto_13
    invoke-interface {v0, p1, v3}, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;->setMinY(Landroid/view/View;F)V

    .line 39
    goto :goto_15

    .line 35
    :pswitch_2d
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;

    if-nez p3, :cond_13

    goto :goto_14

    :cond_13
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v3

    :goto_14
    invoke-interface {v0, p1, v3}, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;->setMinX(Landroid/view/View;F)V

    .line 36
    goto :goto_15

    .line 32
    :pswitch_2e
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;->setBbHeight(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    .line 33
    goto :goto_15

    .line 29
    :pswitch_2f
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;->setBbWidth(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    .line 30
    nop

    .line 175
    :goto_15
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7b0ca679 -> :sswitch_2f
        -0x7696880d -> :sswitch_2e
        -0x6532960a -> :sswitch_2d
        -0x5d75250d -> :sswitch_2c
        -0x57ab08a6 -> :sswitch_2b
        -0x4e0397d4 -> :sswitch_2a
        -0x4932ce1e -> :sswitch_29
        -0x4408644a -> :sswitch_28
        -0x42e281b5 -> :sswitch_27
        -0x33b27663 -> :sswitch_26
        -0x2881956d -> :sswitch_25
        -0x25a40819 -> :sswitch_24
        -0x25a08cb4 -> :sswitch_23
        -0x1cd17a3c -> :sswitch_22
        -0x13a7269a -> :sswitch_21
        -0x117e564a -> :sswitch_20
        -0xf06d417 -> :sswitch_1f
        -0xe70d730 -> :sswitch_1e
        -0xd4cc1a9 -> :sswitch_1d
        -0x8d2c26a -> :sswitch_1c
        -0x689bbab -> :sswitch_1b
        -0x1a9a1e2 -> :sswitch_1a
        0x332446 -> :sswitch_19
        0x332447 -> :sswitch_18
        0x5899705 -> :sswitch_17
        0x5a72f63 -> :sswitch_16
        0xe557a7a -> :sswitch_15
        0x124be2c2 -> :sswitch_14
        0x13dfc885 -> :sswitch_13
        0x1e013d60 -> :sswitch_12
        0x22a57450 -> :sswitch_11
        0x230fd3d7 -> :sswitch_10
        0x2762ef20 -> :sswitch_f
        0x28ce5422 -> :sswitch_e
        0x2b158697 -> :sswitch_d
        0x2bf974e5 -> :sswitch_c
        0x2d7a3629 -> :sswitch_b
        0x3647e705 -> :sswitch_a
        0x373ef02d -> :sswitch_9
        0x48c2f394 -> :sswitch_8
        0x506afbde -> :sswitch_7
        0x6118be32 -> :sswitch_6
        0x636835e4 -> :sswitch_5
        0x676fd4fe -> :sswitch_4
        0x682c2a0a -> :sswitch_3
        0x71baeb28 -> :sswitch_2
        0x71e55777 -> :sswitch_1
        0x7e5af16d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
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
