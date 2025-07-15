.class public Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderSubviewManagerDelegate;
.super Lcom/facebook/react/uimanager/BaseViewManagerDelegate;
.source "RNSScreenStackHeaderSubviewManagerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "U::",
        "Lcom/facebook/react/uimanager/BaseViewManagerInterface<",
        "TT;>;:",
        "Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderSubviewManagerInterface<",
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

    .line 19
    .local p0, "this":Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderSubviewManagerDelegate;, "Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderSubviewManagerDelegate<TT;TU;>;"
    .local p1, "viewManager":Lcom/facebook/react/uimanager/BaseViewManagerInterface;, "TU;"
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;-><init>(Lcom/facebook/react/uimanager/BaseViewManagerInterface;)V

    .line 20
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

    .line 23
    .local p0, "this":Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderSubviewManagerDelegate;, "Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderSubviewManagerDelegate<TT;TU;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    goto :goto_0

    :pswitch_0
    const-string v0, "type"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 28
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->setProperty(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 25
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderSubviewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast v0, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderSubviewManagerInterface;

    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/viewmanagers/RNSScreenStackHeaderSubviewManagerInterface;->setType(Landroid/view/View;Ljava/lang/String;)V

    .line 26
    nop

    .line 30
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x368f3a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
