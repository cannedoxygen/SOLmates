.class Lcom/horcrux/svg/RenderableViewManager;
.super Lcom/horcrux/svg/VirtualViewManager;
.source "RenderableViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/horcrux/svg/RenderableViewManager$FeOffsetManager;,
        Lcom/horcrux/svg/RenderableViewManager$FeMergeManager;,
        Lcom/horcrux/svg/RenderableViewManager$FeGaussianBlurManager;,
        Lcom/horcrux/svg/RenderableViewManager$FeFloodManager;,
        Lcom/horcrux/svg/RenderableViewManager$FeCompositeManager;,
        Lcom/horcrux/svg/RenderableViewManager$FeColorMatrixManager;,
        Lcom/horcrux/svg/RenderableViewManager$FeBlendManager;,
        Lcom/horcrux/svg/RenderableViewManager$FilterPrimitiveManager;,
        Lcom/horcrux/svg/RenderableViewManager$FilterManager;,
        Lcom/horcrux/svg/RenderableViewManager$RadialGradientManager;,
        Lcom/horcrux/svg/RenderableViewManager$LinearGradientManager;,
        Lcom/horcrux/svg/RenderableViewManager$MarkerManager;,
        Lcom/horcrux/svg/RenderableViewManager$ForeignObjectManager;,
        Lcom/horcrux/svg/RenderableViewManager$MaskManager;,
        Lcom/horcrux/svg/RenderableViewManager$PatternManager;,
        Lcom/horcrux/svg/RenderableViewManager$SymbolManager;,
        Lcom/horcrux/svg/RenderableViewManager$UseViewManager;,
        Lcom/horcrux/svg/RenderableViewManager$DefsViewManager;,
        Lcom/horcrux/svg/RenderableViewManager$ClipPathViewManager;,
        Lcom/horcrux/svg/RenderableViewManager$RectViewManager;,
        Lcom/horcrux/svg/RenderableViewManager$LineViewManager;,
        Lcom/horcrux/svg/RenderableViewManager$EllipseViewManager;,
        Lcom/horcrux/svg/RenderableViewManager$CircleViewManager;,
        Lcom/horcrux/svg/RenderableViewManager$ImageViewManager;,
        Lcom/horcrux/svg/RenderableViewManager$TextPathViewManager;,
        Lcom/horcrux/svg/RenderableViewManager$TSpanViewManager;,
        Lcom/horcrux/svg/RenderableViewManager$TextViewManager;,
        Lcom/horcrux/svg/RenderableViewManager$TextViewManagerAbstract;,
        Lcom/horcrux/svg/RenderableViewManager$PathViewManager;,
        Lcom/horcrux/svg/RenderableViewManager$GroupViewManager;,
        Lcom/horcrux/svg/RenderableViewManager$GroupViewManagerAbstract;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/horcrux/svg/RenderableView;",
        ">",
        "Lcom/horcrux/svg/VirtualViewManager<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/horcrux/svg/VirtualViewManager$SVGClass;)V
    .locals 0
    .param p1, "svgclass"    # Lcom/horcrux/svg/VirtualViewManager$SVGClass;

    .line 589
    .local p0, "this":Lcom/horcrux/svg/RenderableViewManager;, "Lcom/horcrux/svg/RenderableViewManager<TT;>;"
    invoke-direct {p0, p1}, Lcom/horcrux/svg/VirtualViewManager;-><init>(Lcom/horcrux/svg/VirtualViewManager$SVGClass;)V

    .line 590
    return-void
.end method


# virtual methods
.method public setColor(Lcom/horcrux/svg/RenderableView;Ljava/lang/Integer;)V
    .locals 0
    .param p2, "color"    # Ljava/lang/Integer;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "color"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 1679
    .local p0, "this":Lcom/horcrux/svg/RenderableViewManager;, "Lcom/horcrux/svg/RenderableViewManager<TT;>;"
    .local p1, "node":Lcom/horcrux/svg/RenderableView;, "TT;"
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/RenderableView;->setCurrentColor(Ljava/lang/Integer;)V

    .line 1680
    return-void
.end method

.method public setFill(Lcom/horcrux/svg/RenderableView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .param p2, "fill"    # Lcom/facebook/react/bridge/Dynamic;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "fill"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/react/bridge/Dynamic;",
            ")V"
        }
    .end annotation

    .line 1684
    .local p0, "this":Lcom/horcrux/svg/RenderableViewManager;, "Lcom/horcrux/svg/RenderableViewManager<TT;>;"
    .local p1, "node":Lcom/horcrux/svg/RenderableView;, "TT;"
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/RenderableView;->setFill(Lcom/facebook/react/bridge/Dynamic;)V

    .line 1685
    return-void
.end method

.method public setFill(Lcom/horcrux/svg/RenderableView;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0
    .param p2, "value"    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/react/bridge/ReadableMap;",
            ")V"
        }
    .end annotation

    .line 1688
    .local p0, "this":Lcom/horcrux/svg/RenderableViewManager;, "Lcom/horcrux/svg/RenderableViewManager<TT;>;"
    .local p1, "view":Lcom/horcrux/svg/RenderableView;, "TT;"
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/RenderableView;->setFill(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 1689
    return-void
.end method

.method public setFillOpacity(Lcom/horcrux/svg/RenderableView;F)V
    .locals 0
    .param p2, "fillOpacity"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 1.0f
        name = "fillOpacity"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .line 1693
    .local p0, "this":Lcom/horcrux/svg/RenderableViewManager;, "Lcom/horcrux/svg/RenderableViewManager<TT;>;"
    .local p1, "node":Lcom/horcrux/svg/RenderableView;, "TT;"
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/RenderableView;->setFillOpacity(F)V

    .line 1694
    return-void
.end method

.method public setFillRule(Lcom/horcrux/svg/RenderableView;I)V
    .locals 0
    .param p2, "fillRule"    # I
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultInt = 0x1
        name = "fillRule"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 1698
    .local p0, "this":Lcom/horcrux/svg/RenderableViewManager;, "Lcom/horcrux/svg/RenderableViewManager<TT;>;"
    .local p1, "node":Lcom/horcrux/svg/RenderableView;, "TT;"
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/RenderableView;->setFillRule(I)V

    .line 1699
    return-void
.end method

.method public setFilter(Lcom/horcrux/svg/RenderableView;Ljava/lang/String;)V
    .locals 0
    .param p2, "filter"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "filter"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1674
    .local p0, "this":Lcom/horcrux/svg/RenderableViewManager;, "Lcom/horcrux/svg/RenderableViewManager<TT;>;"
    .local p1, "node":Lcom/horcrux/svg/RenderableView;, "TT;"
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/RenderableView;->setFilter(Ljava/lang/String;)V

    .line 1675
    return-void
.end method

.method public setPropList(Lcom/horcrux/svg/RenderableView;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p2, "propList"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "propList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/react/bridge/ReadableArray;",
            ")V"
        }
    .end annotation

    .line 1752
    .local p0, "this":Lcom/horcrux/svg/RenderableViewManager;, "Lcom/horcrux/svg/RenderableViewManager<TT;>;"
    .local p1, "node":Lcom/horcrux/svg/RenderableView;, "TT;"
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/RenderableView;->setPropList(Lcom/facebook/react/bridge/ReadableArray;)V

    .line 1753
    return-void
.end method

.method public setStroke(Lcom/horcrux/svg/RenderableView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .param p2, "strokeColors"    # Lcom/facebook/react/bridge/Dynamic;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "stroke"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/react/bridge/Dynamic;",
            ")V"
        }
    .end annotation

    .line 1703
    .local p0, "this":Lcom/horcrux/svg/RenderableViewManager;, "Lcom/horcrux/svg/RenderableViewManager<TT;>;"
    .local p1, "node":Lcom/horcrux/svg/RenderableView;, "TT;"
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/RenderableView;->setStroke(Lcom/facebook/react/bridge/Dynamic;)V

    .line 1704
    return-void
.end method

.method public setStroke(Lcom/horcrux/svg/RenderableView;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0
    .param p2, "value"    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/react/bridge/ReadableMap;",
            ")V"
        }
    .end annotation

    .line 1707
    .local p0, "this":Lcom/horcrux/svg/RenderableViewManager;, "Lcom/horcrux/svg/RenderableViewManager<TT;>;"
    .local p1, "view":Lcom/horcrux/svg/RenderableView;, "TT;"
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/RenderableView;->setStroke(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 1708
    return-void
.end method

.method public setStrokeDasharray(Lcom/horcrux/svg/RenderableView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .param p2, "strokeDasharray"    # Lcom/facebook/react/bridge/Dynamic;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "strokeDasharray"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/react/bridge/Dynamic;",
            ")V"
        }
    .end annotation

    .line 1717
    .local p0, "this":Lcom/horcrux/svg/RenderableViewManager;, "Lcom/horcrux/svg/RenderableViewManager<TT;>;"
    .local p1, "node":Lcom/horcrux/svg/RenderableView;, "TT;"
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/RenderableView;->setStrokeDasharray(Lcom/facebook/react/bridge/Dynamic;)V

    .line 1718
    return-void
.end method

.method public setStrokeDashoffset(Lcom/horcrux/svg/RenderableView;F)V
    .locals 0
    .param p2, "strokeDashoffset"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "strokeDashoffset"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .line 1722
    .local p0, "this":Lcom/horcrux/svg/RenderableViewManager;, "Lcom/horcrux/svg/RenderableViewManager<TT;>;"
    .local p1, "node":Lcom/horcrux/svg/RenderableView;, "TT;"
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/RenderableView;->setStrokeDashoffset(F)V

    .line 1723
    return-void
.end method

.method public setStrokeLinecap(Lcom/horcrux/svg/RenderableView;I)V
    .locals 0
    .param p2, "strokeLinecap"    # I
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultInt = 0x1
        name = "strokeLinecap"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 1737
    .local p0, "this":Lcom/horcrux/svg/RenderableViewManager;, "Lcom/horcrux/svg/RenderableViewManager<TT;>;"
    .local p1, "node":Lcom/horcrux/svg/RenderableView;, "TT;"
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/RenderableView;->setStrokeLinecap(I)V

    .line 1738
    return-void
.end method

.method public setStrokeLinejoin(Lcom/horcrux/svg/RenderableView;I)V
    .locals 0
    .param p2, "strokeLinejoin"    # I
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultInt = 0x1
        name = "strokeLinejoin"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 1742
    .local p0, "this":Lcom/horcrux/svg/RenderableViewManager;, "Lcom/horcrux/svg/RenderableViewManager<TT;>;"
    .local p1, "node":Lcom/horcrux/svg/RenderableView;, "TT;"
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/RenderableView;->setStrokeLinejoin(I)V

    .line 1743
    return-void
.end method

.method public setStrokeMiterlimit(Lcom/horcrux/svg/RenderableView;F)V
    .locals 0
    .param p2, "strokeMiterlimit"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 4.0f
        name = "strokeMiterlimit"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .line 1732
    .local p0, "this":Lcom/horcrux/svg/RenderableViewManager;, "Lcom/horcrux/svg/RenderableViewManager<TT;>;"
    .local p1, "node":Lcom/horcrux/svg/RenderableView;, "TT;"
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/RenderableView;->setStrokeMiterlimit(F)V

    .line 1733
    return-void
.end method

.method public setStrokeOpacity(Lcom/horcrux/svg/RenderableView;F)V
    .locals 0
    .param p2, "strokeOpacity"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 1.0f
        name = "strokeOpacity"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .line 1712
    .local p0, "this":Lcom/horcrux/svg/RenderableViewManager;, "Lcom/horcrux/svg/RenderableViewManager<TT;>;"
    .local p1, "node":Lcom/horcrux/svg/RenderableView;, "TT;"
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/RenderableView;->setStrokeOpacity(F)V

    .line 1713
    return-void
.end method

.method public setStrokeWidth(Lcom/horcrux/svg/RenderableView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .param p2, "strokeWidth"    # Lcom/facebook/react/bridge/Dynamic;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "strokeWidth"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/react/bridge/Dynamic;",
            ")V"
        }
    .end annotation

    .line 1727
    .local p0, "this":Lcom/horcrux/svg/RenderableViewManager;, "Lcom/horcrux/svg/RenderableViewManager<TT;>;"
    .local p1, "node":Lcom/horcrux/svg/RenderableView;, "TT;"
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/RenderableView;->setStrokeWidth(Lcom/facebook/react/bridge/Dynamic;)V

    .line 1728
    return-void
.end method

.method public setVectorEffect(Lcom/horcrux/svg/RenderableView;I)V
    .locals 0
    .param p2, "vectorEffect"    # I
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "vectorEffect"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 1747
    .local p0, "this":Lcom/horcrux/svg/RenderableViewManager;, "Lcom/horcrux/svg/RenderableViewManager<TT;>;"
    .local p1, "node":Lcom/horcrux/svg/RenderableView;, "TT;"
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/RenderableView;->setVectorEffect(I)V

    .line 1748
    return-void
.end method
