.class Lcom/horcrux/svg/RenderableViewManager$TextViewManagerAbstract;
.super Lcom/horcrux/svg/RenderableViewManager$GroupViewManagerAbstract;
.source "RenderableViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/horcrux/svg/RenderableViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextViewManagerAbstract"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Lcom/horcrux/svg/TextView;",
        ">",
        "Lcom/horcrux/svg/RenderableViewManager$GroupViewManagerAbstract<",
        "TK;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/horcrux/svg/VirtualViewManager$SVGClass;)V
    .locals 0
    .param p1, "svgClass"    # Lcom/horcrux/svg/VirtualViewManager$SVGClass;

    .line 662
    .local p0, "this":Lcom/horcrux/svg/RenderableViewManager$TextViewManagerAbstract;, "Lcom/horcrux/svg/RenderableViewManager$TextViewManagerAbstract<TK;>;"
    invoke-direct {p0, p1}, Lcom/horcrux/svg/RenderableViewManager$GroupViewManagerAbstract;-><init>(Lcom/horcrux/svg/VirtualViewManager$SVGClass;)V

    .line 663
    return-void
.end method


# virtual methods
.method public setAlignmentBaseline(Lcom/horcrux/svg/TextView;Ljava/lang/String;)V
    .locals 0
    .param p2, "value"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 726
    .local p0, "this":Lcom/horcrux/svg/RenderableViewManager$TextViewManagerAbstract;, "Lcom/horcrux/svg/RenderableViewManager$TextViewManagerAbstract<TK;>;"
    .local p1, "view":Lcom/horcrux/svg/TextView;, "TK;"
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/TextView;->setMethod(Ljava/lang/String;)V

    .line 727
    return-void
.end method

.method public setBaselineShift(Lcom/horcrux/svg/TextView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .param p2, "baselineShift"    # Lcom/facebook/react/bridge/Dynamic;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "baselineShift"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/facebook/react/bridge/Dynamic;",
            ")V"
        }
    .end annotation

    .line 687
    .local p0, "this":Lcom/horcrux/svg/RenderableViewManager$TextViewManagerAbstract;, "Lcom/horcrux/svg/RenderableViewManager$TextViewManagerAbstract<TK;>;"
    .local p1, "node":Lcom/horcrux/svg/TextView;, "TK;"
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/TextView;->setBaselineShift(Lcom/facebook/react/bridge/Dynamic;)V

    .line 688
    return-void
.end method

.method public setDx(Lcom/horcrux/svg/TextView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .param p2, "deltaX"    # Lcom/facebook/react/bridge/Dynamic;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "dx"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/facebook/react/bridge/Dynamic;",
            ")V"
        }
    .end annotation

    .line 702
    .local p0, "this":Lcom/horcrux/svg/RenderableViewManager$TextViewManagerAbstract;, "Lcom/horcrux/svg/RenderableViewManager$TextViewManagerAbstract<TK;>;"
    .local p1, "node":Lcom/horcrux/svg/TextView;, "TK;"
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/TextView;->setDeltaX(Lcom/facebook/react/bridge/Dynamic;)V

    .line 703
    return-void
.end method

.method public setDy(Lcom/horcrux/svg/TextView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .param p2, "deltaY"    # Lcom/facebook/react/bridge/Dynamic;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "dy"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/facebook/react/bridge/Dynamic;",
            ")V"
        }
    .end annotation

    .line 707
    .local p0, "this":Lcom/horcrux/svg/RenderableViewManager$TextViewManagerAbstract;, "Lcom/horcrux/svg/RenderableViewManager$TextViewManagerAbstract<TK;>;"
    .local p1, "node":Lcom/horcrux/svg/TextView;, "TK;"
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/TextView;->setDeltaY(Lcom/facebook/react/bridge/Dynamic;)V

    .line 708
    return-void
.end method

.method public bridge synthetic setFont(Lcom/horcrux/svg/GroupView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "font"
    .end annotation

    .line 660
    .local p0, "this":Lcom/horcrux/svg/RenderableViewManager$TextViewManagerAbstract;, "Lcom/horcrux/svg/RenderableViewManager$TextViewManagerAbstract<TK;>;"
    check-cast p1, Lcom/horcrux/svg/TextView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/RenderableViewManager$TextViewManagerAbstract;->setFont(Lcom/horcrux/svg/TextView;Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setFont(Lcom/horcrux/svg/TextView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .param p2, "font"    # Lcom/facebook/react/bridge/Dynamic;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "font"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/facebook/react/bridge/Dynamic;",
            ")V"
        }
    .end annotation

    .line 722
    .local p0, "this":Lcom/horcrux/svg/RenderableViewManager$TextViewManagerAbstract;, "Lcom/horcrux/svg/RenderableViewManager$TextViewManagerAbstract<TK;>;"
    .local p1, "node":Lcom/horcrux/svg/TextView;, "TK;"
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/TextView;->setFont(Lcom/facebook/react/bridge/Dynamic;)V

    .line 723
    return-void
.end method

.method public setInlineSize(Lcom/horcrux/svg/TextView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .param p2, "inlineSize"    # Lcom/facebook/react/bridge/Dynamic;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "inlineSize"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/facebook/react/bridge/Dynamic;",
            ")V"
        }
    .end annotation

    .line 667
    .local p0, "this":Lcom/horcrux/svg/RenderableViewManager$TextViewManagerAbstract;, "Lcom/horcrux/svg/RenderableViewManager$TextViewManagerAbstract<TK;>;"
    .local p1, "node":Lcom/horcrux/svg/TextView;, "TK;"
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/TextView;->setInlineSize(Lcom/facebook/react/bridge/Dynamic;)V

    .line 668
    return-void
.end method

.method public setLengthAdjust(Lcom/horcrux/svg/TextView;Ljava/lang/String;)V
    .locals 0
    .param p2, "adjustment"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "lengthAdjust"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 677
    .local p0, "this":Lcom/horcrux/svg/RenderableViewManager$TextViewManagerAbstract;, "Lcom/horcrux/svg/RenderableViewManager$TextViewManagerAbstract<TK;>;"
    .local p1, "node":Lcom/horcrux/svg/TextView;, "TK;"
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/TextView;->setLengthAdjust(Ljava/lang/String;)V

    .line 678
    return-void
.end method

.method public setMethod(Lcom/horcrux/svg/TextView;Ljava/lang/String;)V
    .locals 0
    .param p2, "alignment"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "alignmentBaseline"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 682
    .local p0, "this":Lcom/horcrux/svg/RenderableViewManager$TextViewManagerAbstract;, "Lcom/horcrux/svg/RenderableViewManager$TextViewManagerAbstract<TK;>;"
    .local p1, "node":Lcom/horcrux/svg/TextView;, "TK;"
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/TextView;->setMethod(Ljava/lang/String;)V

    .line 683
    return-void
.end method

.method public setRotate(Lcom/horcrux/svg/TextView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .param p2, "rotate"    # Lcom/facebook/react/bridge/Dynamic;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "rotate"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/facebook/react/bridge/Dynamic;",
            ")V"
        }
    .end annotation

    .line 697
    .local p0, "this":Lcom/horcrux/svg/RenderableViewManager$TextViewManagerAbstract;, "Lcom/horcrux/svg/RenderableViewManager$TextViewManagerAbstract<TK;>;"
    .local p1, "node":Lcom/horcrux/svg/TextView;, "TK;"
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/TextView;->setRotate(Lcom/facebook/react/bridge/Dynamic;)V

    .line 698
    return-void
.end method

.method public setTextLength(Lcom/horcrux/svg/TextView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .param p2, "length"    # Lcom/facebook/react/bridge/Dynamic;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "textLength"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/facebook/react/bridge/Dynamic;",
            ")V"
        }
    .end annotation

    .line 672
    .local p0, "this":Lcom/horcrux/svg/RenderableViewManager$TextViewManagerAbstract;, "Lcom/horcrux/svg/RenderableViewManager$TextViewManagerAbstract<TK;>;"
    .local p1, "node":Lcom/horcrux/svg/TextView;, "TK;"
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/TextView;->setTextLength(Lcom/facebook/react/bridge/Dynamic;)V

    .line 673
    return-void
.end method

.method public setVerticalAlign(Lcom/horcrux/svg/TextView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .param p2, "verticalAlign"    # Lcom/facebook/react/bridge/Dynamic;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "verticalAlign"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/facebook/react/bridge/Dynamic;",
            ")V"
        }
    .end annotation

    .line 692
    .local p0, "this":Lcom/horcrux/svg/RenderableViewManager$TextViewManagerAbstract;, "Lcom/horcrux/svg/RenderableViewManager$TextViewManagerAbstract<TK;>;"
    .local p1, "node":Lcom/horcrux/svg/TextView;, "TK;"
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/TextView;->setVerticalAlign(Lcom/facebook/react/bridge/Dynamic;)V

    .line 693
    return-void
.end method

.method public setX(Lcom/horcrux/svg/TextView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .param p2, "positionX"    # Lcom/facebook/react/bridge/Dynamic;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "x"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/facebook/react/bridge/Dynamic;",
            ")V"
        }
    .end annotation

    .line 712
    .local p0, "this":Lcom/horcrux/svg/RenderableViewManager$TextViewManagerAbstract;, "Lcom/horcrux/svg/RenderableViewManager$TextViewManagerAbstract<TK;>;"
    .local p1, "node":Lcom/horcrux/svg/TextView;, "TK;"
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/TextView;->setPositionX(Lcom/facebook/react/bridge/Dynamic;)V

    .line 713
    return-void
.end method

.method public setY(Lcom/horcrux/svg/TextView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .param p2, "positionY"    # Lcom/facebook/react/bridge/Dynamic;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "y"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/facebook/react/bridge/Dynamic;",
            ")V"
        }
    .end annotation

    .line 717
    .local p0, "this":Lcom/horcrux/svg/RenderableViewManager$TextViewManagerAbstract;, "Lcom/horcrux/svg/RenderableViewManager$TextViewManagerAbstract<TK;>;"
    .local p1, "node":Lcom/horcrux/svg/TextView;, "TK;"
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/TextView;->setPositionY(Lcom/facebook/react/bridge/Dynamic;)V

    .line 718
    return-void
.end method
