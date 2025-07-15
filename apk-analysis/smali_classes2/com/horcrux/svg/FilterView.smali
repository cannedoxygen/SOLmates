.class Lcom/horcrux/svg/FilterView;
.super Lcom/horcrux/svg/DefinitionView;
.source "FilterView.java"


# instance fields
.field private final mFilterRegion:Lcom/horcrux/svg/FilterRegion;

.field private mFilterUnits:Lcom/horcrux/svg/FilterProperties$Units;

.field private mPrimitiveUnits:Lcom/horcrux/svg/FilterProperties$Units;

.field private final mResultsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;

    .line 24
    invoke-direct {p0, p1}, Lcom/horcrux/svg/DefinitionView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/FilterView;->mResultsMap:Ljava/util/HashMap;

    .line 25
    new-instance v0, Lcom/horcrux/svg/FilterRegion;

    invoke-direct {v0}, Lcom/horcrux/svg/FilterRegion;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/FilterView;->mFilterRegion:Lcom/horcrux/svg/FilterRegion;

    .line 26
    return-void
.end method


# virtual methods
.method public applyFilter(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "background"    # Landroid/graphics/Bitmap;
    .param p3, "renderableBounds"    # Landroid/graphics/RectF;

    .line 73
    iget-object v0, p0, Lcom/horcrux/svg/FilterView;->mResultsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 74
    iget-object v0, p0, Lcom/horcrux/svg/FilterView;->mResultsMap:Ljava/util/HashMap;

    const-string v1, "SourceGraphic"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/horcrux/svg/FilterView;->mResultsMap:Ljava/util/HashMap;

    const-string v1, "SourceAlpha"

    invoke-static {p1}, Lcom/horcrux/svg/FilterUtils;->applySourceAlphaFilter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcom/horcrux/svg/FilterView;->mResultsMap:Ljava/util/HashMap;

    const-string v1, "BackgroundImage"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/horcrux/svg/FilterView;->mResultsMap:Ljava/util/HashMap;

    const-string v1, "BackgroundAlpha"

    invoke-static {p2}, Lcom/horcrux/svg/FilterUtils;->applySourceAlphaFilter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    move-object v0, p1

    .line 80
    .local v0, "res":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 81
    .local v1, "resultBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 82
    .local v2, "canvas":Landroid/graphics/Canvas;
    iget-object v3, p0, Lcom/horcrux/svg/FilterView;->mFilterRegion:Lcom/horcrux/svg/FilterRegion;

    iget-object v4, p0, Lcom/horcrux/svg/FilterView;->mFilterUnits:Lcom/horcrux/svg/FilterProperties$Units;

    .line 83
    invoke-virtual {v3, p0, v4, p3}, Lcom/horcrux/svg/FilterRegion;->getCropRect(Lcom/horcrux/svg/VirtualView;Lcom/horcrux/svg/FilterProperties$Units;Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v3

    .line 86
    .local v3, "filterRegionRect":Landroid/graphics/Rect;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/FilterView;->getChildCount()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-ge v4, v5, :cond_3

    .line 87
    invoke-virtual {p0, v4}, Lcom/horcrux/svg/FilterView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 88
    .local v5, "node":Landroid/view/View;
    instance-of v8, v5, Lcom/horcrux/svg/FilterPrimitiveView;

    if-eqz v8, :cond_2

    .line 89
    move-object v8, v5

    check-cast v8, Lcom/horcrux/svg/FilterPrimitiveView;

    .line 90
    .local v8, "currentFilter":Lcom/horcrux/svg/FilterPrimitiveView;
    invoke-virtual {v1, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 91
    iget-object v7, v8, Lcom/horcrux/svg/FilterPrimitiveView;->mFilterSubregion:Lcom/horcrux/svg/FilterRegion;

    iget-object v9, p0, Lcom/horcrux/svg/FilterView;->mPrimitiveUnits:Lcom/horcrux/svg/FilterProperties$Units;

    .line 95
    iget-object v10, p0, Lcom/horcrux/svg/FilterView;->mPrimitiveUnits:Lcom/horcrux/svg/FilterProperties$Units;

    sget-object v11, Lcom/horcrux/svg/FilterProperties$Units;->USER_SPACE_ON_USE:Lcom/horcrux/svg/FilterProperties$Units;

    if-ne v10, v11, :cond_0

    .line 96
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 97
    :cond_0
    move-object v10, p3

    .line 92
    :goto_1
    invoke-virtual {v7, v8, v9, v10}, Lcom/horcrux/svg/FilterRegion;->getCropRect(Lcom/horcrux/svg/VirtualView;Lcom/horcrux/svg/FilterProperties$Units;Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v7

    .line 98
    .local v7, "cropRect":Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/horcrux/svg/FilterView;->mResultsMap:Ljava/util/HashMap;

    invoke-virtual {v8, v9, v0}, Lcom/horcrux/svg/FilterPrimitiveView;->applyFilter(Ljava/util/HashMap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v2, v9, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 99
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v9, 0x1

    invoke-virtual {v1, v6, v9}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 100
    invoke-virtual {v8}, Lcom/horcrux/svg/FilterPrimitiveView;->getResult()Ljava/lang/String;

    move-result-object v6

    .line 101
    .local v6, "resultName":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 102
    iget-object v9, p0, Lcom/horcrux/svg/FilterView;->mResultsMap:Ljava/util/HashMap;

    invoke-virtual {v9, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .end local v6    # "resultName":Ljava/lang/String;
    .end local v8    # "currentFilter":Lcom/horcrux/svg/FilterPrimitiveView;
    :cond_1
    goto :goto_2

    .line 105
    .end local v7    # "cropRect":Landroid/graphics/Rect;
    :cond_2
    const-string v6, "RNSVG"

    const-string v7, "Invalid `Filter` child: Filter children can only be `Fe...` components"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .end local v5    # "node":Landroid/view/View;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 110
    .end local v4    # "i":I
    :cond_3
    invoke-virtual {v1, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 111
    invoke-virtual {v2, v0, v3, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 112
    return-object v1
.end method

.method public getFilterRegion()Lcom/horcrux/svg/FilterRegion;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/horcrux/svg/FilterView;->mFilterRegion:Lcom/horcrux/svg/FilterRegion;

    return-object v0
.end method

.method saveDefinition()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/horcrux/svg/FilterView;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/horcrux/svg/FilterView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v0

    .line 66
    .local v0, "svg":Lcom/horcrux/svg/SvgView;
    if-eqz v0, :cond_0

    .line 67
    iget-object v1, p0, Lcom/horcrux/svg/FilterView;->mName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/horcrux/svg/SvgView;->defineFilter(Lcom/horcrux/svg/VirtualView;Ljava/lang/String;)V

    .line 70
    .end local v0    # "svg":Lcom/horcrux/svg/SvgView;
    :cond_0
    return-void
.end method

.method public setFilterUnits(Ljava/lang/String;)V
    .locals 1
    .param p1, "filterUnits"    # Ljava/lang/String;

    .line 49
    invoke-static {p1}, Lcom/horcrux/svg/FilterProperties$Units;->getEnum(Ljava/lang/String;)Lcom/horcrux/svg/FilterProperties$Units;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/FilterView;->mFilterUnits:Lcom/horcrux/svg/FilterProperties$Units;

    .line 50
    invoke-virtual {p0}, Lcom/horcrux/svg/FilterView;->invalidate()V

    .line 51
    return-void
.end method

.method public setHeight(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "height"    # Lcom/facebook/react/bridge/Dynamic;

    .line 44
    iget-object v0, p0, Lcom/horcrux/svg/FilterView;->mFilterRegion:Lcom/horcrux/svg/FilterRegion;

    invoke-virtual {v0, p1}, Lcom/horcrux/svg/FilterRegion;->setHeight(Lcom/facebook/react/bridge/Dynamic;)V

    .line 45
    invoke-virtual {p0}, Lcom/horcrux/svg/FilterView;->invalidate()V

    .line 46
    return-void
.end method

.method public setPrimitiveUnits(Ljava/lang/String;)V
    .locals 1
    .param p1, "primitiveUnits"    # Ljava/lang/String;

    .line 54
    invoke-static {p1}, Lcom/horcrux/svg/FilterProperties$Units;->getEnum(Ljava/lang/String;)Lcom/horcrux/svg/FilterProperties$Units;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/FilterView;->mPrimitiveUnits:Lcom/horcrux/svg/FilterProperties$Units;

    .line 55
    invoke-virtual {p0}, Lcom/horcrux/svg/FilterView;->invalidate()V

    .line 56
    return-void
.end method

.method public setWidth(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "width"    # Lcom/facebook/react/bridge/Dynamic;

    .line 39
    iget-object v0, p0, Lcom/horcrux/svg/FilterView;->mFilterRegion:Lcom/horcrux/svg/FilterRegion;

    invoke-virtual {v0, p1}, Lcom/horcrux/svg/FilterRegion;->setWidth(Lcom/facebook/react/bridge/Dynamic;)V

    .line 40
    invoke-virtual {p0}, Lcom/horcrux/svg/FilterView;->invalidate()V

    .line 41
    return-void
.end method

.method public setX(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "x"    # Lcom/facebook/react/bridge/Dynamic;

    .line 29
    iget-object v0, p0, Lcom/horcrux/svg/FilterView;->mFilterRegion:Lcom/horcrux/svg/FilterRegion;

    invoke-virtual {v0, p1}, Lcom/horcrux/svg/FilterRegion;->setX(Lcom/facebook/react/bridge/Dynamic;)V

    .line 30
    invoke-virtual {p0}, Lcom/horcrux/svg/FilterView;->invalidate()V

    .line 31
    return-void
.end method

.method public setY(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "y"    # Lcom/facebook/react/bridge/Dynamic;

    .line 34
    iget-object v0, p0, Lcom/horcrux/svg/FilterView;->mFilterRegion:Lcom/horcrux/svg/FilterRegion;

    invoke-virtual {v0, p1}, Lcom/horcrux/svg/FilterRegion;->setY(Lcom/facebook/react/bridge/Dynamic;)V

    .line 35
    invoke-virtual {p0}, Lcom/horcrux/svg/FilterView;->invalidate()V

    .line 36
    return-void
.end method
