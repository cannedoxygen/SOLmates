.class Lcom/horcrux/svg/RenderableViewManager$GroupViewManagerAbstract;
.super Lcom/horcrux/svg/RenderableViewManager;
.source "RenderableViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/horcrux/svg/RenderableViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GroupViewManagerAbstract"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Lcom/horcrux/svg/GroupView;",
        ">",
        "Lcom/horcrux/svg/RenderableViewManager<",
        "TU;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/horcrux/svg/VirtualViewManager$SVGClass;)V
    .locals 0
    .param p1, "svgClass"    # Lcom/horcrux/svg/VirtualViewManager$SVGClass;

    .line 594
    .local p0, "this":Lcom/horcrux/svg/RenderableViewManager$GroupViewManagerAbstract;, "Lcom/horcrux/svg/RenderableViewManager$GroupViewManagerAbstract<TU;>;"
    invoke-direct {p0, p1}, Lcom/horcrux/svg/RenderableViewManager;-><init>(Lcom/horcrux/svg/VirtualViewManager$SVGClass;)V

    .line 595
    return-void
.end method


# virtual methods
.method public setFont(Lcom/horcrux/svg/GroupView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .param p2, "font"    # Lcom/facebook/react/bridge/Dynamic;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "font"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;",
            "Lcom/facebook/react/bridge/Dynamic;",
            ")V"
        }
    .end annotation

    .line 599
    .local p0, "this":Lcom/horcrux/svg/RenderableViewManager$GroupViewManagerAbstract;, "Lcom/horcrux/svg/RenderableViewManager$GroupViewManagerAbstract<TU;>;"
    .local p1, "node":Lcom/horcrux/svg/GroupView;, "TU;"
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/GroupView;->setFont(Lcom/facebook/react/bridge/Dynamic;)V

    .line 600
    return-void
.end method

.method public setFontSize(Lcom/horcrux/svg/GroupView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 5
    .param p2, "fontSize"    # Lcom/facebook/react/bridge/Dynamic;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "fontSize"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;",
            "Lcom/facebook/react/bridge/Dynamic;",
            ")V"
        }
    .end annotation

    .line 604
    .local p0, "this":Lcom/horcrux/svg/RenderableViewManager$GroupViewManagerAbstract;, "Lcom/horcrux/svg/RenderableViewManager$GroupViewManagerAbstract<TU;>;"
    .local p1, "node":Lcom/horcrux/svg/GroupView;, "TU;"
    new-instance v0, Lcom/facebook/react/bridge/JavaOnlyMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/JavaOnlyMap;-><init>()V

    .line 605
    .local v0, "map":Lcom/facebook/react/bridge/JavaOnlyMap;
    sget-object v1, Lcom/horcrux/svg/RenderableViewManager$1;->$SwitchMap$com$facebook$react$bridge$ReadableType:[I

    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/react/bridge/ReadableType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "fontSize"

    packed-switch v1, :pswitch_data_0

    .line 613
    return-void

    .line 610
    :pswitch_0
    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/facebook/react/bridge/JavaOnlyMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    goto :goto_0

    .line 607
    :pswitch_1
    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->asDouble()D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/facebook/react/bridge/JavaOnlyMap;->putDouble(Ljava/lang/String;D)V

    .line 608
    nop

    .line 615
    :goto_0
    invoke-virtual {p1, v0}, Lcom/horcrux/svg/GroupView;->setFont(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 616
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setFontWeight(Lcom/horcrux/svg/GroupView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 5
    .param p2, "fontWeight"    # Lcom/facebook/react/bridge/Dynamic;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "fontWeight"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;",
            "Lcom/facebook/react/bridge/Dynamic;",
            ")V"
        }
    .end annotation

    .line 620
    .local p0, "this":Lcom/horcrux/svg/RenderableViewManager$GroupViewManagerAbstract;, "Lcom/horcrux/svg/RenderableViewManager$GroupViewManagerAbstract<TU;>;"
    .local p1, "node":Lcom/horcrux/svg/GroupView;, "TU;"
    new-instance v0, Lcom/facebook/react/bridge/JavaOnlyMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/JavaOnlyMap;-><init>()V

    .line 621
    .local v0, "map":Lcom/facebook/react/bridge/JavaOnlyMap;
    sget-object v1, Lcom/horcrux/svg/RenderableViewManager$1;->$SwitchMap$com$facebook$react$bridge$ReadableType:[I

    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/react/bridge/ReadableType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "fontWeight"

    packed-switch v1, :pswitch_data_0

    .line 629
    return-void

    .line 626
    :pswitch_0
    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/facebook/react/bridge/JavaOnlyMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    goto :goto_0

    .line 623
    :pswitch_1
    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->asDouble()D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/facebook/react/bridge/JavaOnlyMap;->putDouble(Ljava/lang/String;D)V

    .line 624
    nop

    .line 631
    :goto_0
    invoke-virtual {p1, v0}, Lcom/horcrux/svg/GroupView;->setFont(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 632
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
