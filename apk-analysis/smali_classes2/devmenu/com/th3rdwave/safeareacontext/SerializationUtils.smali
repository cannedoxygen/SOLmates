.class Ldevmenu/com/th3rdwave/safeareacontext/SerializationUtils;
.super Ljava/lang/Object;
.source "SerializationUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static edgeInsetsToJavaMap(Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;)Ljava/util/Map;
    .locals 9
    .param p0, "insets"    # Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 10
    nop

    .line 12
    invoke-virtual {p0}, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->getTop()F

    move-result v0

    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 14
    invoke-virtual {p0}, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->getRight()F

    move-result v0

    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 16
    invoke-virtual {p0}, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->getBottom()F

    move-result v0

    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 18
    invoke-virtual {p0}, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->getLeft()F

    move-result v0

    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    .line 10
    const-string v1, "top"

    const-string v3, "right"

    const-string v5, "bottom"

    const-string v7, "left"

    invoke-static/range {v1 .. v8}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static rectToJavaMap(Ldevmenu/com/th3rdwave/safeareacontext/Rect;)Ljava/util/Map;
    .locals 9
    .param p0, "rect"    # Ldevmenu/com/th3rdwave/safeareacontext/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldevmenu/com/th3rdwave/safeareacontext/Rect;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 22
    nop

    .line 24
    invoke-virtual {p0}, Ldevmenu/com/th3rdwave/safeareacontext/Rect;->getX()F

    move-result v0

    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 26
    invoke-virtual {p0}, Ldevmenu/com/th3rdwave/safeareacontext/Rect;->getY()F

    move-result v0

    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 28
    invoke-virtual {p0}, Ldevmenu/com/th3rdwave/safeareacontext/Rect;->getWidth()F

    move-result v0

    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 30
    invoke-virtual {p0}, Ldevmenu/com/th3rdwave/safeareacontext/Rect;->getHeight()F

    move-result v0

    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    .line 22
    const-string v1, "x"

    const-string v3, "y"

    const-string v5, "width"

    const-string v7, "height"

    invoke-static/range {v1 .. v8}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
