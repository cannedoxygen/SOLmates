.class Lcom/horcrux/svg/DefinitionView;
.super Lcom/horcrux/svg/VirtualView;
.source "DefinitionView.java"


# direct methods
.method constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;

    .line 21
    invoke-direct {p0, p1}, Lcom/horcrux/svg/VirtualView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

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

.method getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method hitTest([F)I
    .locals 1
    .param p1, "src"    # [F

    .line 39
    const/4 v0, -0x1

    return v0
.end method

.method isResponsible()Z
    .locals 1

    .line 29
    const/4 v0, 0x0

    return v0
.end method
