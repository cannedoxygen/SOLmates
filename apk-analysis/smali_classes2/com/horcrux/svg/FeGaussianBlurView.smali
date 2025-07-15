.class Lcom/horcrux/svg/FeGaussianBlurView;
.super Lcom/horcrux/svg/FilterPrimitiveView;
.source "FeGaussianBlurView.java"


# instance fields
.field mEdgeMode:Lcom/horcrux/svg/FilterProperties$EdgeMode;

.field mIn1:Ljava/lang/String;

.field mStdDeviationX:F

.field mStdDeviationY:F


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;

    .line 21
    invoke-direct {p0, p1}, Lcom/horcrux/svg/FilterPrimitiveView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 22
    return-void
.end method

.method private blur(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 52
    iget v0, p0, Lcom/horcrux/svg/FeGaussianBlurView;->mStdDeviationX:F

    iget v1, p0, Lcom/horcrux/svg/FeGaussianBlurView;->mStdDeviationY:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    .line 53
    .local v0, "stdDeviation":F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    return-object p2

    .line 54
    :cond_0
    const/high16 v1, 0x41c80000    # 25.0f

    .line 55
    .local v1, "maxRadius":F
    const/high16 v2, 0x41c80000    # 25.0f

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 57
    .local v2, "radius":F
    invoke-static {p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 60
    .local v3, "outputBitmap":Landroid/graphics/Bitmap;
    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v4

    .line 61
    .local v4, "rs":Landroid/renderscript/RenderScript;
    invoke-static {v4}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v5

    .line 64
    .local v5, "blurScript":Landroid/renderscript/ScriptIntrinsicBlur;
    invoke-static {v4, p2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v6

    .line 65
    .local v6, "tmpIn":Landroid/renderscript/Allocation;
    invoke-static {v4, v3}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v7

    .line 68
    .local v7, "tmpOut":Landroid/renderscript/Allocation;
    invoke-virtual {v5, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 69
    invoke-virtual {v5, v6}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 70
    invoke-virtual {v5, v7}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 73
    invoke-virtual {v7, v3}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 74
    invoke-virtual {v6}, Landroid/renderscript/Allocation;->destroy()V

    .line 75
    invoke-virtual {v7}, Landroid/renderscript/Allocation;->destroy()V

    .line 76
    invoke-virtual {v4}, Landroid/renderscript/RenderScript;->destroy()V

    .line 78
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v10, 0x0

    invoke-static {v3, v8, v9, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    return-object v8
.end method


# virtual methods
.method public applyFilter(Ljava/util/HashMap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .param p2, "prevResult"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 46
    .local p1, "resultsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/horcrux/svg/FeGaussianBlurView;->mIn1:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/horcrux/svg/FeGaussianBlurView;->getSource(Ljava/util/HashMap;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 47
    .local v0, "source":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/horcrux/svg/FeGaussianBlurView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/horcrux/svg/FeGaussianBlurView;->blur(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public setEdgeMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "edgeMode"    # Ljava/lang/String;

    .line 40
    invoke-static {p1}, Lcom/horcrux/svg/FilterProperties$EdgeMode;->getEnum(Ljava/lang/String;)Lcom/horcrux/svg/FilterProperties$EdgeMode;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/FeGaussianBlurView;->mEdgeMode:Lcom/horcrux/svg/FilterProperties$EdgeMode;

    .line 41
    invoke-virtual {p0}, Lcom/horcrux/svg/FeGaussianBlurView;->invalidate()V

    .line 42
    return-void
.end method

.method public setIn1(Ljava/lang/String;)V
    .locals 0
    .param p1, "in1"    # Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/horcrux/svg/FeGaussianBlurView;->mIn1:Ljava/lang/String;

    .line 26
    invoke-virtual {p0}, Lcom/horcrux/svg/FeGaussianBlurView;->invalidate()V

    .line 27
    return-void
.end method

.method public setStdDeviationX(F)V
    .locals 0
    .param p1, "stdDeviationX"    # F

    .line 30
    iput p1, p0, Lcom/horcrux/svg/FeGaussianBlurView;->mStdDeviationX:F

    .line 31
    invoke-virtual {p0}, Lcom/horcrux/svg/FeGaussianBlurView;->invalidate()V

    .line 32
    return-void
.end method

.method public setStdDeviationY(F)V
    .locals 0
    .param p1, "stdDeviationY"    # F

    .line 35
    iput p1, p0, Lcom/horcrux/svg/FeGaussianBlurView;->mStdDeviationY:F

    .line 36
    invoke-virtual {p0}, Lcom/horcrux/svg/FeGaussianBlurView;->invalidate()V

    .line 37
    return-void
.end method
