.class public Lcom/facebook/react/viewmanagers/ModalHostViewManagerDelegate;
.super Lcom/facebook/react/uimanager/BaseViewManagerDelegate;
.source "ModalHostViewManagerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "U::",
        "Lcom/facebook/react/uimanager/BaseViewManagerInterface<",
        "TT;>;:",
        "Lcom/facebook/react/viewmanagers/ModalHostViewManagerInterface<",
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
    .local p0, "this":Lcom/facebook/react/viewmanagers/ModalHostViewManagerDelegate;, "Lcom/facebook/react/viewmanagers/ModalHostViewManagerDelegate<TT;TU;>;"
    .local p1, "viewManager":Lcom/facebook/react/uimanager/BaseViewManagerInterface;, "TU;"
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;-><init>(Lcom/facebook/react/uimanager/BaseViewManagerInterface;)V

    .line 21
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

    .line 24
    .local p0, "this":Lcom/facebook/react/viewmanagers/ModalHostViewManagerDelegate;, "Lcom/facebook/react/viewmanagers/ModalHostViewManagerDelegate<TT;TU;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "animationType"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v0, "hardwareAccelerated"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    const-string/jumbo v0, "visible"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_3
    const-string v0, "animated"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_4
    const-string/jumbo v0, "statusBarTranslucent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_5
    const-string v0, "identifier"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_6
    const-string/jumbo v0, "transparent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_7
    const-string/jumbo v0, "supportedOrientations"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_8
    const-string/jumbo v0, "presentationStyle"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 53
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->setProperty(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 50
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/ModalHostViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/ModalHostViewManagerInterface;

    if-nez p3, :cond_1

    goto :goto_2

    :cond_1
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    :goto_2
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/ModalHostViewManagerInterface;->setIdentifier(Landroid/view/View;I)V

    .line 51
    goto/16 :goto_8

    .line 47
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/ModalHostViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/ModalHostViewManagerInterface;

    move-object v1, p3

    check-cast v1, Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/ModalHostViewManagerInterface;->setSupportedOrientations(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 48
    goto/16 :goto_8

    .line 44
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/ModalHostViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/ModalHostViewManagerInterface;

    if-nez p3, :cond_2

    goto :goto_3

    :cond_2
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_3
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/ModalHostViewManagerInterface;->setAnimated(Landroid/view/View;Z)V

    .line 45
    goto :goto_8

    .line 41
    :pswitch_3
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/ModalHostViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/ModalHostViewManagerInterface;

    if-nez p3, :cond_3

    goto :goto_4

    :cond_3
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_4
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/ModalHostViewManagerInterface;->setVisible(Landroid/view/View;Z)V

    .line 42
    goto :goto_8

    .line 38
    :pswitch_4
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/ModalHostViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/ModalHostViewManagerInterface;

    if-nez p3, :cond_4

    goto :goto_5

    :cond_4
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_5
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/ModalHostViewManagerInterface;->setHardwareAccelerated(Landroid/view/View;Z)V

    .line 39
    goto :goto_8

    .line 35
    :pswitch_5
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/ModalHostViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/ModalHostViewManagerInterface;

    if-nez p3, :cond_5

    goto :goto_6

    :cond_5
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_6
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/ModalHostViewManagerInterface;->setStatusBarTranslucent(Landroid/view/View;Z)V

    .line 36
    goto :goto_8

    .line 32
    :pswitch_6
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/ModalHostViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/ModalHostViewManagerInterface;

    if-nez p3, :cond_6

    goto :goto_7

    :cond_6
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_7
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/ModalHostViewManagerInterface;->setTransparent(Landroid/view/View;Z)V

    .line 33
    goto :goto_8

    .line 29
    :pswitch_7
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/ModalHostViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/ModalHostViewManagerInterface;

    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/ModalHostViewManagerInterface;->setPresentationStyle(Landroid/view/View;Ljava/lang/String;)V

    .line 30
    goto :goto_8

    .line 26
    :pswitch_8
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/ModalHostViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/ModalHostViewManagerInterface;

    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/ModalHostViewManagerInterface;->setAnimationType(Landroid/view/View;Ljava/lang/String;)V

    .line 27
    nop

    .line 55
    :goto_8
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6e5d7149 -> :sswitch_8
        -0x6e46a78f -> :sswitch_7
        -0x66e3a2ae -> :sswitch_6
        -0x60775357 -> :sswitch_5
        -0x44e94228 -> :sswitch_4
        -0x2f65d65d -> :sswitch_3
        0x1bd1f072 -> :sswitch_2
        0x4749621f -> :sswitch_1
        0x7911bcde -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
