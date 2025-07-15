.class Lcom/horcrux/svg/DefsView;
.super Lcom/horcrux/svg/DefinitionView;
.source "DefsView.java"


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;

    .line 21
    invoke-direct {p0, p1}, Lcom/horcrux/svg/DefinitionView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 22
    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "opacity"    # F

    .line 25
    return-void
.end method

.method saveDefinition()V
    .locals 3

    .line 28
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/DefsView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 29
    invoke-virtual {p0, v0}, Lcom/horcrux/svg/DefsView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 30
    .local v1, "child":Landroid/view/View;
    instance-of v2, v1, Lcom/horcrux/svg/VirtualView;

    if-eqz v2, :cond_0

    .line 31
    move-object v2, v1

    check-cast v2, Lcom/horcrux/svg/VirtualView;

    invoke-virtual {v2}, Lcom/horcrux/svg/VirtualView;->saveDefinition()V

    .line 28
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
