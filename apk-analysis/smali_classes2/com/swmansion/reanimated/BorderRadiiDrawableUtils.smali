.class public Lcom/swmansion/reanimated/BorderRadiiDrawableUtils;
.super Ljava/lang/Object;
.source "BorderRadiiDrawableUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBorderRadii(Landroid/view/View;)Lcom/swmansion/reanimated/ReactNativeUtils$BorderRadii;
    .locals 8
    .param p0, "view"    # Landroid/view/View;

    .line 25
    new-instance v6, Lcom/swmansion/reanimated/ReactNativeUtils$BorderRadii;

    sget-object v0, Lcom/facebook/react/uimanager/style/BorderRadiusProp;->BORDER_RADIUS:Lcom/facebook/react/uimanager/style/BorderRadiusProp;

    .line 26
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/swmansion/reanimated/BorderRadiiDrawableUtils;->getRadiusForCorner(Landroid/view/View;Lcom/facebook/react/uimanager/style/BorderRadiusProp;F)F

    move-result v1

    sget-object v0, Lcom/facebook/react/uimanager/style/BorderRadiusProp;->BORDER_TOP_LEFT_RADIUS:Lcom/facebook/react/uimanager/style/BorderRadiusProp;

    .line 27
    const/high16 v2, 0x7fc00000    # Float.NaN

    invoke-static {p0, v0, v2}, Lcom/swmansion/reanimated/BorderRadiiDrawableUtils;->getRadiusForCorner(Landroid/view/View;Lcom/facebook/react/uimanager/style/BorderRadiusProp;F)F

    move-result v3

    sget-object v0, Lcom/facebook/react/uimanager/style/BorderRadiusProp;->BORDER_TOP_RIGHT_RADIUS:Lcom/facebook/react/uimanager/style/BorderRadiusProp;

    .line 28
    invoke-static {p0, v0, v2}, Lcom/swmansion/reanimated/BorderRadiiDrawableUtils;->getRadiusForCorner(Landroid/view/View;Lcom/facebook/react/uimanager/style/BorderRadiusProp;F)F

    move-result v4

    sget-object v0, Lcom/facebook/react/uimanager/style/BorderRadiusProp;->BORDER_BOTTOM_LEFT_RADIUS:Lcom/facebook/react/uimanager/style/BorderRadiusProp;

    .line 29
    invoke-static {p0, v0, v2}, Lcom/swmansion/reanimated/BorderRadiiDrawableUtils;->getRadiusForCorner(Landroid/view/View;Lcom/facebook/react/uimanager/style/BorderRadiusProp;F)F

    move-result v5

    sget-object v0, Lcom/facebook/react/uimanager/style/BorderRadiusProp;->BORDER_BOTTOM_RIGHT_RADIUS:Lcom/facebook/react/uimanager/style/BorderRadiusProp;

    .line 30
    invoke-static {p0, v0, v2}, Lcom/swmansion/reanimated/BorderRadiiDrawableUtils;->getRadiusForCorner(Landroid/view/View;Lcom/facebook/react/uimanager/style/BorderRadiusProp;F)F

    move-result v7

    move-object v0, v6

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/swmansion/reanimated/ReactNativeUtils$BorderRadii;-><init>(FFFFF)V

    .line 25
    return-object v6
.end method

.method private static getRadiusForCorner(Landroid/view/View;Lcom/facebook/react/uimanager/style/BorderRadiusProp;F)F
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "corner"    # Lcom/facebook/react/uimanager/style/BorderRadiusProp;
    .param p2, "defaultValue"    # F

    .line 16
    invoke-static {p0, p1}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->getBorderRadius(Landroid/view/View;Lcom/facebook/react/uimanager/style/BorderRadiusProp;)Lcom/facebook/react/uimanager/LengthPercentage;

    move-result-object v0

    .line 17
    .local v0, "length":Lcom/facebook/react/uimanager/LengthPercentage;
    if-nez v0, :cond_0

    .line 18
    return p2

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 21
    .local v1, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Lcom/facebook/react/uimanager/LengthPercentage;->resolve(FF)Lcom/facebook/react/uimanager/style/CornerRadii;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/react/uimanager/style/CornerRadii;->toPixelFromDIP()Lcom/facebook/react/uimanager/style/CornerRadii;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/react/uimanager/style/CornerRadii;->getHorizontal()F

    move-result v2

    return v2
.end method
