.class Lcom/horcrux/svg/RenderableViewManager$FilterPrimitiveManager;
.super Lcom/horcrux/svg/VirtualViewManager;
.source "RenderableViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/horcrux/svg/RenderableViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FilterPrimitiveManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/horcrux/svg/FilterPrimitiveView;",
        ">",
        "Lcom/horcrux/svg/VirtualViewManager<",
        "TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/horcrux/svg/VirtualViewManager$SVGClass;)V
    .locals 0
    .param p1, "svgclass"    # Lcom/horcrux/svg/VirtualViewManager$SVGClass;

    .line 1454
    .local p0, "this":Lcom/horcrux/svg/RenderableViewManager$FilterPrimitiveManager;, "Lcom/horcrux/svg/RenderableViewManager$FilterPrimitiveManager<TT;>;"
    invoke-direct {p0, p1}, Lcom/horcrux/svg/VirtualViewManager;-><init>(Lcom/horcrux/svg/VirtualViewManager$SVGClass;)V

    .line 1455
    return-void
.end method


# virtual methods
.method public setHeight(Lcom/horcrux/svg/FilterPrimitiveView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .param p2, "height"    # Lcom/facebook/react/bridge/Dynamic;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "height"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/react/bridge/Dynamic;",
            ")V"
        }
    .end annotation

    .line 1474
    .local p0, "this":Lcom/horcrux/svg/RenderableViewManager$FilterPrimitiveManager;, "Lcom/horcrux/svg/RenderableViewManager$FilterPrimitiveManager<TT;>;"
    .local p1, "node":Lcom/horcrux/svg/FilterPrimitiveView;, "TT;"
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/FilterPrimitiveView;->setHeight(Lcom/facebook/react/bridge/Dynamic;)V

    .line 1475
    return-void
.end method

.method public setResult(Lcom/horcrux/svg/FilterPrimitiveView;Ljava/lang/String;)V
    .locals 0
    .param p2, "result"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "result"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1479
    .local p0, "this":Lcom/horcrux/svg/RenderableViewManager$FilterPrimitiveManager;, "Lcom/horcrux/svg/RenderableViewManager$FilterPrimitiveManager<TT;>;"
    .local p1, "node":Lcom/horcrux/svg/FilterPrimitiveView;, "TT;"
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/FilterPrimitiveView;->setResult(Ljava/lang/String;)V

    .line 1480
    return-void
.end method

.method public setWidth(Lcom/horcrux/svg/FilterPrimitiveView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .param p2, "width"    # Lcom/facebook/react/bridge/Dynamic;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "width"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/react/bridge/Dynamic;",
            ")V"
        }
    .end annotation

    .line 1469
    .local p0, "this":Lcom/horcrux/svg/RenderableViewManager$FilterPrimitiveManager;, "Lcom/horcrux/svg/RenderableViewManager$FilterPrimitiveManager<TT;>;"
    .local p1, "node":Lcom/horcrux/svg/FilterPrimitiveView;, "TT;"
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/FilterPrimitiveView;->setWidth(Lcom/facebook/react/bridge/Dynamic;)V

    .line 1470
    return-void
.end method

.method public setX(Lcom/horcrux/svg/FilterPrimitiveView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .param p2, "x"    # Lcom/facebook/react/bridge/Dynamic;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "x"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/react/bridge/Dynamic;",
            ")V"
        }
    .end annotation

    .line 1459
    .local p0, "this":Lcom/horcrux/svg/RenderableViewManager$FilterPrimitiveManager;, "Lcom/horcrux/svg/RenderableViewManager$FilterPrimitiveManager<TT;>;"
    .local p1, "node":Lcom/horcrux/svg/FilterPrimitiveView;, "TT;"
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/FilterPrimitiveView;->setX(Lcom/facebook/react/bridge/Dynamic;)V

    .line 1460
    return-void
.end method

.method public setY(Lcom/horcrux/svg/FilterPrimitiveView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .param p2, "y"    # Lcom/facebook/react/bridge/Dynamic;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "y"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/react/bridge/Dynamic;",
            ")V"
        }
    .end annotation

    .line 1464
    .local p0, "this":Lcom/horcrux/svg/RenderableViewManager$FilterPrimitiveManager;, "Lcom/horcrux/svg/RenderableViewManager$FilterPrimitiveManager<TT;>;"
    .local p1, "node":Lcom/horcrux/svg/FilterPrimitiveView;, "TT;"
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/FilterPrimitiveView;->setY(Lcom/facebook/react/bridge/Dynamic;)V

    .line 1465
    return-void
.end method
