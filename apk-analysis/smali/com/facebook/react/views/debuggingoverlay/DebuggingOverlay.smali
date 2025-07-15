.class public final Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;
.super Landroid/view/View;
.source "DebuggingOverlay.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0012\u001a\u00020\u0013H\u0007J\u0010\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0016\u0010\u0017\u001a\u00020\u00132\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0007J\u0016\u0010\u0019\u001a\u00020\u00132\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u001bH\u0007R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R*\u0010\n\u001a\u001e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000bj\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r`\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\u0010\u001a\u001e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00110\u000bj\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u0011`\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "highlightedElementsPaint",
        "Landroid/graphics/Paint;",
        "highlightedElementsRectangles",
        "",
        "Landroid/graphics/RectF;",
        "traceUpdateIdToCleanupRunnableMap",
        "Ljava/util/HashMap;",
        "",
        "Ljava/lang/Runnable;",
        "Lkotlin/collections/HashMap;",
        "traceUpdatePaint",
        "traceUpdatesToDisplayMap",
        "Lcom/facebook/react/views/debuggingoverlay/TraceUpdate;",
        "clearElementsHighlights",
        "",
        "onDraw",
        "canvas",
        "Landroid/graphics/Canvas;",
        "setHighlightedElementsRectangles",
        "elementsRectangles",
        "setTraceUpdates",
        "traceUpdates",
        "",
        "ReactAndroid_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final highlightedElementsPaint:Landroid/graphics/Paint;

.field private highlightedElementsRectangles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private final traceUpdateIdToCleanupRunnableMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final traceUpdatePaint:Landroid/graphics/Paint;

.field private final traceUpdatesToDisplayMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/react/views/debuggingoverlay/TraceUpdate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$pIlaP0OIJsSFs0fgnfig6VlY3Nc(Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;->onDraw$lambda$0(Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;->traceUpdatePaint:Landroid/graphics/Paint;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;->traceUpdatesToDisplayMap:Ljava/util/HashMap;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;->traceUpdateIdToCleanupRunnableMap:Ljava/util/HashMap;

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;->highlightedElementsPaint:Landroid/graphics/Paint;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;->highlightedElementsRectangles:Ljava/util/List;

    .line 26
    nop

    .line 27
    iget-object v0, p0, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;->traceUpdatePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 28
    iget-object v0, p0, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;->traceUpdatePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 29
    iget-object v0, p0, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;->highlightedElementsPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 30
    iget-object v0, p0, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;->highlightedElementsPaint:Landroid/graphics/Paint;

    const v1, -0x33371901    # -1.0533068E8f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    nop

    .line 18
    return-void
.end method

.method private static final onDraw$lambda$0(Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;I)V
    .locals 2
    .param p0, "this$0"    # Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;
    .param p1, "$traceUpdateId"    # I

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;->traceUpdatesToDisplayMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;->traceUpdateIdToCleanupRunnableMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-virtual {p0}, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;->invalidate()V

    .line 74
    return-void
.end method


# virtual methods
.method public final clearElementsHighlights()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;->highlightedElementsRectangles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 57
    invoke-virtual {p0}, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;->invalidate()V

    .line 58
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 64
    iget-object v0, p0, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;->traceUpdatesToDisplayMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/views/debuggingoverlay/TraceUpdate;

    .line 65
    .local v1, "traceUpdate":Lcom/facebook/react/views/debuggingoverlay/TraceUpdate;
    iget-object v2, p0, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;->traceUpdatePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lcom/facebook/react/views/debuggingoverlay/TraceUpdate;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    invoke-virtual {v1}, Lcom/facebook/react/views/debuggingoverlay/TraceUpdate;->getRectangle()Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;->traceUpdatePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 68
    invoke-virtual {v1}, Lcom/facebook/react/views/debuggingoverlay/TraceUpdate;->getId()I

    move-result v2

    .line 69
    .local v2, "traceUpdateId":I
    new-instance v3, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2}, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay$$ExternalSyntheticLambda0;-><init>(Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;I)V

    .line 76
    .local v3, "block":Ljava/lang/Runnable;
    iget-object v4, p0, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;->traceUpdateIdToCleanupRunnableMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 77
    iget-object v5, p0, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;->traceUpdateIdToCleanupRunnableMap:Ljava/util/HashMap;

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-wide/16 v4, 0x7d0

    invoke-static {v3, v4, v5}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 82
    .end local v1    # "traceUpdate":Lcom/facebook/react/views/debuggingoverlay/TraceUpdate;
    .end local v2    # "traceUpdateId":I
    .end local v3    # "block":Ljava/lang/Runnable;
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;->highlightedElementsRectangles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    .line 83
    .local v1, "elementRectangle":Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;->highlightedElementsPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .end local v1    # "elementRectangle":Landroid/graphics/RectF;
    goto :goto_1

    .line 85
    :cond_2
    return-void
.end method

.method public final setHighlightedElementsRectangles(Ljava/util/List;)V
    .locals 1
    .param p1, "elementsRectangles"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    const-string v0, "elementsRectangles"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;->highlightedElementsRectangles:Ljava/util/List;

    .line 51
    invoke-virtual {p0}, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;->invalidate()V

    .line 52
    return-void
.end method

.method public final setTraceUpdates(Ljava/util/List;)V
    .locals 5
    .param p1, "traceUpdates"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/react/views/debuggingoverlay/TraceUpdate;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "traceUpdates"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/views/debuggingoverlay/TraceUpdate;

    .line 36
    .local v1, "traceUpdate":Lcom/facebook/react/views/debuggingoverlay/TraceUpdate;
    invoke-virtual {v1}, Lcom/facebook/react/views/debuggingoverlay/TraceUpdate;->getId()I

    move-result v2

    .line 37
    .local v2, "traceUpdateId":I
    iget-object v3, p0, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;->traceUpdateIdToCleanupRunnableMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    iget-object v3, p0, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;->traceUpdateIdToCleanupRunnableMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-static {v3}, Lcom/facebook/react/bridge/UiThreadUtil;->removeOnUiThread(Ljava/lang/Runnable;)V

    .line 39
    iget-object v3, p0, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;->traceUpdateIdToCleanupRunnableMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 42
    iget-object v4, p0, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;->traceUpdatesToDisplayMap:Ljava/util/HashMap;

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 45
    .end local v1    # "traceUpdate":Lcom/facebook/react/views/debuggingoverlay/TraceUpdate;
    .end local v2    # "traceUpdateId":I
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;->invalidate()V

    .line 46
    return-void
.end method
