.class Lcom/horcrux/svg/FeMergeView;
.super Lcom/horcrux/svg/FilterPrimitiveView;
.source "FeMergeView.java"


# instance fields
.field private mNodes:Lcom/facebook/react/bridge/ReadableArray;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;

    .line 16
    invoke-direct {p0, p1}, Lcom/horcrux/svg/FilterPrimitiveView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 17
    return-void
.end method


# virtual methods
.method public applyFilter(Ljava/util/HashMap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
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

    .line 26
    .local p1, "resultsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    nop

    .line 27
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 28
    .local v0, "result":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 29
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget-object v2, p0, Lcom/horcrux/svg/FeMergeView;->mNodes:Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    .line 30
    .local v2, "nodesSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 31
    iget-object v4, p0, Lcom/horcrux/svg/FeMergeView;->mNodes:Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v4, v3}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 32
    .local v4, "nodeKey":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, p2

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    .line 34
    .local v5, "sourceFromResults":Landroid/graphics/Bitmap;
    :goto_1
    if-eqz v5, :cond_1

    .line 35
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 30
    .end local v4    # "nodeKey":Ljava/lang/String;
    .end local v5    # "sourceFromResults":Landroid/graphics/Bitmap;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 39
    .end local v3    # "i":I
    :cond_2
    return-object v0
.end method

.method public setNodes(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p1, "nodes"    # Lcom/facebook/react/bridge/ReadableArray;

    .line 20
    iput-object p1, p0, Lcom/horcrux/svg/FeMergeView;->mNodes:Lcom/facebook/react/bridge/ReadableArray;

    .line 21
    invoke-virtual {p0}, Lcom/horcrux/svg/FeMergeView;->invalidate()V

    .line 22
    return-void
.end method
