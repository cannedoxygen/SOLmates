.class Lcom/horcrux/svg/PathView;
.super Lcom/horcrux/svg/RenderableView;
.source "PathView.java"


# instance fields
.field private mPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;

    .line 22
    invoke-direct {p0, p1}, Lcom/horcrux/svg/RenderableView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 23
    iget v0, p0, Lcom/horcrux/svg/PathView;->mScale:F

    sput v0, Lcom/horcrux/svg/PathParser;->mScale:F

    .line 24
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/PathView;->mPath:Landroid/graphics/Path;

    .line 25
    return-void
.end method


# virtual methods
.method getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 41
    iget-object v0, p0, Lcom/horcrux/svg/PathView;->mPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public setD(Ljava/lang/String;)V
    .locals 10
    .param p1, "d"    # Ljava/lang/String;

    .line 28
    invoke-static {p1}, Lcom/horcrux/svg/PathParser;->parse(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/PathView;->mPath:Landroid/graphics/Path;

    .line 29
    sget-object v0, Lcom/horcrux/svg/PathParser;->elements:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/horcrux/svg/PathView;->elements:Ljava/util/ArrayList;

    .line 30
    iget-object v0, p0, Lcom/horcrux/svg/PathView;->elements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/horcrux/svg/PathElement;

    .line 31
    .local v1, "elem":Lcom/horcrux/svg/PathElement;
    iget-object v2, v1, Lcom/horcrux/svg/PathElement;->points:[Lcom/horcrux/svg/Point;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 32
    .local v5, "point":Lcom/horcrux/svg/Point;
    iget-wide v6, v5, Lcom/horcrux/svg/Point;->x:D

    iget v8, p0, Lcom/horcrux/svg/PathView;->mScale:F

    float-to-double v8, v8

    mul-double/2addr v6, v8

    iput-wide v6, v5, Lcom/horcrux/svg/Point;->x:D

    .line 33
    iget-wide v6, v5, Lcom/horcrux/svg/Point;->y:D

    iget v8, p0, Lcom/horcrux/svg/PathView;->mScale:F

    float-to-double v8, v8

    mul-double/2addr v6, v8

    iput-wide v6, v5, Lcom/horcrux/svg/Point;->y:D

    .line 31
    .end local v5    # "point":Lcom/horcrux/svg/Point;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 35
    .end local v1    # "elem":Lcom/horcrux/svg/PathElement;
    :cond_0
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/horcrux/svg/PathView;->invalidate()V

    .line 37
    return-void
.end method
