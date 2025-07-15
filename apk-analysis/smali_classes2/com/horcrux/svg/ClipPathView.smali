.class Lcom/horcrux/svg/ClipPathView;
.super Lcom/horcrux/svg/GroupView;
.source "ClipPathView.java"


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;

    .line 22
    invoke-direct {p0, p1}, Lcom/horcrux/svg/GroupView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 23
    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "opacity"    # F

    .line 27
    const-string v0, "ReactNative"

    const-string v1, "RNSVG: ClipPath can\'t be drawn, it should be defined as a child component for `Defs` "

    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method hitTest([F)I
    .locals 1
    .param p1, "src"    # [F

    .line 44
    const/4 v0, -0x1

    return v0
.end method

.method isResponsible()Z
    .locals 1

    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method mergeProperties(Lcom/horcrux/svg/RenderableView;)V
    .locals 0
    .param p1, "target"    # Lcom/horcrux/svg/RenderableView;

    .line 48
    return-void
.end method

.method resetProperties()V
    .locals 0

    .line 51
    return-void
.end method

.method saveDefinition()V
    .locals 2

    .line 34
    invoke-virtual {p0}, Lcom/horcrux/svg/ClipPathView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v0

    iget-object v1, p0, Lcom/horcrux/svg/ClipPathView;->mName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/horcrux/svg/SvgView;->defineClipPath(Lcom/horcrux/svg/VirtualView;Ljava/lang/String;)V

    .line 35
    return-void
.end method
