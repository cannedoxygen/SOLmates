.class public final Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;
.super Lcom/facebook/react/uimanager/LayoutShadowNode;
.source "SafeAreaViewShadowNode.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J \u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000bH\u0002J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0010\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0018\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0017J\u0018\u0010\u001f\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020\u001eH\u0017J\u0008\u0010!\u001a\u00020\u0011H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;",
        "Lcom/facebook/react/uimanager/LayoutShadowNode;",
        "()V",
        "mLocalData",
        "Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;",
        "mMargins",
        "",
        "mNeedsUpdate",
        "",
        "mPaddings",
        "getEdgeValue",
        "",
        "edgeMode",
        "Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;",
        "insetValue",
        "edgeValue",
        "onBeforeLayout",
        "",
        "nativeViewHierarchyOptimizer",
        "Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;",
        "resetInsets",
        "mode",
        "Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;",
        "setLocalData",
        "data",
        "",
        "setMargins",
        "index",
        "",
        "margin",
        "Lcom/facebook/react/bridge/Dynamic;",
        "setPaddings",
        "padding",
        "updateInsets",
        "react-native-safe-area-context_debug"
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
.field private mLocalData:Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;

.field private final mMargins:[F

.field private mNeedsUpdate:Z

.field private final mPaddings:[F


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 9
    invoke-direct {p0}, Lcom/facebook/react/uimanager/LayoutShadowNode;-><init>()V

    .line 11
    sget-object v0, Lcom/facebook/react/uimanager/ViewProps;->PADDING_MARGIN_SPACING_TYPES:[I

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mPaddings:[F

    .line 12
    sget-object v0, Lcom/facebook/react/uimanager/ViewProps;->PADDING_MARGIN_SPACING_TYPES:[I

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mMargins:[F

    .line 15
    nop

    .line 16
    const/4 v0, 0x0

    .local v0, "i":I
    sget-object v1, Lcom/facebook/react/uimanager/ViewProps;->PADDING_MARGIN_SPACING_TYPES:[I

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 17
    iget-object v2, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mPaddings:[F

    const/high16 v3, 0x7fc00000    # Float.NaN

    aput v3, v2, v0

    .line 18
    iget-object v2, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mMargins:[F

    aput v3, v2, v0

    .line 16
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 20
    .end local v0    # "i":I
    :cond_0
    nop

    .line 9
    return-void
.end method

.method private final getEdgeValue(Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;FF)F
    .locals 1
    .param p1, "edgeMode"    # Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;
    .param p2, "insetValue"    # F
    .param p3, "edgeValue"    # F

    .line 86
    sget-object v0, Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;->OFF:Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;

    if-ne p1, v0, :cond_0

    .line 87
    return p3

    .line 88
    :cond_0
    sget-object v0, Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;->MAXIMUM:Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;

    if-ne p1, v0, :cond_1

    .line 89
    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0

    .line 91
    :cond_1
    add-float v0, p2, p3

    return v0
.end method

.method private final resetInsets(Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;)V
    .locals 5
    .param p1, "mode"    # Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;

    .line 96
    sget-object v0, Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;->PADDING:Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne p1, v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mPaddings:[F

    aget v0, v0, v4

    invoke-super {p0, v4, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setPadding(IF)V

    .line 98
    iget-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mPaddings:[F

    aget v0, v0, v4

    invoke-super {p0, v1, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setPadding(IF)V

    .line 99
    iget-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mPaddings:[F

    aget v0, v0, v3

    invoke-super {p0, v3, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setPadding(IF)V

    .line 100
    iget-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mPaddings:[F

    aget v0, v0, v2

    invoke-super {p0, v2, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setPadding(IF)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mMargins:[F

    aget v0, v0, v4

    invoke-super {p0, v4, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setMargin(IF)V

    .line 103
    iget-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mMargins:[F

    aget v0, v0, v4

    invoke-super {p0, v1, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setMargin(IF)V

    .line 104
    iget-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mMargins:[F

    aget v0, v0, v3

    invoke-super {p0, v3, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setMargin(IF)V

    .line 105
    iget-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mMargins:[F

    aget v0, v0, v2

    invoke-super {p0, v2, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setMargin(IF)V

    .line 107
    :goto_0
    invoke-virtual {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->markUpdated()V

    .line 108
    return-void
.end method

.method private final updateInsets()V
    .locals 20

    .line 23
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mLocalData:Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;

    if-nez v1, :cond_0

    return-void

    .line 24
    .local v1, "localData":Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;
    :cond_0
    const/4 v2, 0x0

    .line 25
    .local v2, "top":F
    const/4 v3, 0x0

    .line 26
    .local v3, "right":F
    const/4 v4, 0x0

    .line 27
    .local v4, "bottom":F
    const/4 v5, 0x0

    .line 28
    .local v5, "left":F
    invoke-virtual {v1}, Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;->getMode()Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;

    move-result-object v6

    sget-object v7, Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;->PADDING:Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;

    if-ne v6, v7, :cond_1

    iget-object v6, v0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mPaddings:[F

    goto :goto_0

    :cond_1
    iget-object v6, v0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mMargins:[F

    .line 29
    .local v6, "meta":[F
    :goto_0
    const/16 v7, 0x8

    aget v7, v6, v7

    .line 30
    .local v7, "allEdges":F
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_2

    .line 31
    move v2, v7

    .line 32
    move v3, v7

    .line 33
    move v4, v7

    .line 34
    move v5, v7

    .line 36
    :cond_2
    const/4 v8, 0x7

    aget v8, v6, v8

    .line 37
    .local v8, "verticalEdges":F
    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-nez v9, :cond_3

    .line 38
    move v2, v8

    .line 39
    move v4, v8

    .line 41
    :cond_3
    const/4 v9, 0x6

    aget v9, v6, v9

    .line 42
    .local v9, "horizontalEdges":F
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-nez v10, :cond_4

    .line 43
    move v3, v9

    .line 44
    move v5, v9

    .line 46
    :cond_4
    const/4 v10, 0x1

    aget v11, v6, v10

    .line 47
    .local v11, "topEdge":F
    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-nez v12, :cond_5

    .line 48
    move v2, v11

    .line 50
    :cond_5
    const/4 v12, 0x2

    aget v13, v6, v12

    .line 51
    .local v13, "rightEdge":F
    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v14

    if-nez v14, :cond_6

    .line 52
    move v3, v13

    .line 54
    :cond_6
    const/4 v14, 0x3

    aget v15, v6, v14

    .line 55
    .local v15, "bottomEdge":F
    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    move-result v16

    if-nez v16, :cond_7

    .line 56
    move v4, v15

    .line 58
    :cond_7
    const/4 v14, 0x0

    aget v17, v6, v14

    .line 59
    .local v17, "leftEdge":F
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->isNaN(F)Z

    move-result v18

    if-nez v18, :cond_8

    .line 60
    move/from16 v5, v17

    .line 62
    :cond_8
    invoke-static {v2}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v2

    .line 63
    invoke-static {v3}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v3

    .line 64
    invoke-static {v4}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v4

    .line 65
    invoke-static {v5}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v5

    .line 66
    invoke-virtual {v1}, Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;->getEdges()Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;

    move-result-object v18

    .line 67
    .local v18, "edges":Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;
    invoke-virtual {v1}, Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;->getInsets()Lcom/th3rdwave/safeareacontext/EdgeInsets;

    move-result-object v19

    .line 68
    .local v19, "insets":Lcom/th3rdwave/safeareacontext/EdgeInsets;
    invoke-virtual {v1}, Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;->getMode()Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;

    move-result-object v14

    sget-object v12, Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;->PADDING:Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;

    if-ne v14, v12, :cond_9

    .line 69
    invoke-virtual/range {v18 .. v18}, Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;->getTop()Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;

    move-result-object v12

    invoke-virtual/range {v19 .. v19}, Lcom/th3rdwave/safeareacontext/EdgeInsets;->getTop()F

    move-result v14

    invoke-direct {v0, v12, v14, v2}, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->getEdgeValue(Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;FF)F

    move-result v12

    invoke-super {v0, v10, v12}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setPadding(IF)V

    .line 70
    invoke-virtual/range {v18 .. v18}, Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;->getRight()Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;

    move-result-object v10

    invoke-virtual/range {v19 .. v19}, Lcom/th3rdwave/safeareacontext/EdgeInsets;->getRight()F

    move-result v12

    invoke-direct {v0, v10, v12, v3}, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->getEdgeValue(Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;FF)F

    move-result v10

    const/4 v12, 0x2

    invoke-super {v0, v12, v10}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setPadding(IF)V

    .line 71
    invoke-virtual/range {v18 .. v18}, Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;->getBottom()Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;

    move-result-object v10

    invoke-virtual/range {v19 .. v19}, Lcom/th3rdwave/safeareacontext/EdgeInsets;->getBottom()F

    move-result v12

    invoke-direct {v0, v10, v12, v4}, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->getEdgeValue(Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;FF)F

    move-result v10

    const/4 v12, 0x3

    invoke-super {v0, v12, v10}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setPadding(IF)V

    .line 72
    invoke-virtual/range {v18 .. v18}, Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;->getLeft()Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;

    move-result-object v10

    invoke-virtual/range {v19 .. v19}, Lcom/th3rdwave/safeareacontext/EdgeInsets;->getLeft()F

    move-result v12

    invoke-direct {v0, v10, v12, v5}, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->getEdgeValue(Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;FF)F

    move-result v10

    const/4 v12, 0x0

    invoke-super {v0, v12, v10}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setPadding(IF)V

    goto :goto_1

    .line 74
    :cond_9
    invoke-virtual/range {v18 .. v18}, Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;->getTop()Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;

    move-result-object v12

    invoke-virtual/range {v19 .. v19}, Lcom/th3rdwave/safeareacontext/EdgeInsets;->getTop()F

    move-result v14

    invoke-direct {v0, v12, v14, v2}, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->getEdgeValue(Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;FF)F

    move-result v12

    invoke-super {v0, v10, v12}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setMargin(IF)V

    .line 75
    invoke-virtual/range {v18 .. v18}, Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;->getRight()Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;

    move-result-object v10

    invoke-virtual/range {v19 .. v19}, Lcom/th3rdwave/safeareacontext/EdgeInsets;->getRight()F

    move-result v12

    invoke-direct {v0, v10, v12, v3}, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->getEdgeValue(Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;FF)F

    move-result v10

    const/4 v12, 0x2

    invoke-super {v0, v12, v10}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setMargin(IF)V

    .line 76
    invoke-virtual/range {v18 .. v18}, Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;->getBottom()Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;

    move-result-object v10

    invoke-virtual/range {v19 .. v19}, Lcom/th3rdwave/safeareacontext/EdgeInsets;->getBottom()F

    move-result v12

    invoke-direct {v0, v10, v12, v4}, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->getEdgeValue(Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;FF)F

    move-result v10

    const/4 v12, 0x3

    invoke-super {v0, v12, v10}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setMargin(IF)V

    .line 77
    invoke-virtual/range {v18 .. v18}, Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;->getLeft()Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;

    move-result-object v10

    invoke-virtual/range {v19 .. v19}, Lcom/th3rdwave/safeareacontext/EdgeInsets;->getLeft()F

    move-result v12

    invoke-direct {v0, v10, v12, v5}, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->getEdgeValue(Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;FF)F

    move-result v10

    const/4 v12, 0x0

    invoke-super {v0, v12, v10}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setMargin(IF)V

    .line 79
    :goto_1
    return-void
.end method


# virtual methods
.method public onBeforeLayout(Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;)V
    .locals 1
    .param p1, "nativeViewHierarchyOptimizer"    # Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;

    const-string v0, "nativeViewHierarchyOptimizer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-boolean v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mNeedsUpdate:Z

    if-eqz v0, :cond_0

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mNeedsUpdate:Z

    .line 113
    invoke-direct {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->updateInsets()V

    .line 115
    :cond_0
    return-void
.end method

.method public setLocalData(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    instance-of v0, p1, Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;

    if-nez v0, :cond_0

    .line 119
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mLocalData:Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;

    .line 122
    .local v0, "localData":Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;->getMode()Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;

    invoke-virtual {v2}, Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;->getMode()Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 123
    invoke-virtual {v0}, Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;->getMode()Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->resetInsets(Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;)V

    .line 125
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;

    iput-object v1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mLocalData:Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;

    .line 126
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mNeedsUpdate:Z

    .line 127
    invoke-direct {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->updateInsets()V

    .line 128
    return-void
.end method

.method public setMargins(ILcom/facebook/react/bridge/Dynamic;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "margin"    # Lcom/facebook/react/bridge/Dynamic;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactPropGroup;
        names = {
            "margin",
            "marginVertical",
            "marginHorizontal",
            "marginStart",
            "marginEnd",
            "marginTop",
            "marginBottom",
            "marginLeft",
            "marginRight"
        }
    .end annotation

    const-string v0, "margin"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    sget-object v0, Lcom/facebook/react/uimanager/ViewProps;->PADDING_MARGIN_SPACING_TYPES:[I

    aget v0, v0, p1

    .line 165
    .local v0, "spacingType":I
    iget-object v1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mMargins:[F

    .line 166
    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v2

    sget-object v3, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    if-ne v2, v3, :cond_0

    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->asDouble()D

    move-result-wide v2

    double-to-float v2, v2

    goto :goto_0

    :cond_0
    const/high16 v2, 0x7fc00000    # Float.NaN

    :goto_0
    aput v2, v1, v0

    .line 167
    invoke-super {p0, p1, p2}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setMargins(ILcom/facebook/react/bridge/Dynamic;)V

    .line 168
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mNeedsUpdate:Z

    .line 169
    return-void
.end method

.method public setPaddings(ILcom/facebook/react/bridge/Dynamic;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "padding"    # Lcom/facebook/react/bridge/Dynamic;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactPropGroup;
        names = {
            "padding",
            "paddingVertical",
            "paddingHorizontal",
            "paddingStart",
            "paddingEnd",
            "paddingTop",
            "paddingBottom",
            "paddingLeft",
            "paddingRight"
        }
    .end annotation

    const-string v0, "padding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    sget-object v0, Lcom/facebook/react/uimanager/ViewProps;->PADDING_MARGIN_SPACING_TYPES:[I

    aget v0, v0, p1

    .line 145
    .local v0, "spacingType":I
    iget-object v1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mPaddings:[F

    .line 146
    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v2

    sget-object v3, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    if-ne v2, v3, :cond_0

    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->asDouble()D

    move-result-wide v2

    double-to-float v2, v2

    goto :goto_0

    :cond_0
    const/high16 v2, 0x7fc00000    # Float.NaN

    :goto_0
    aput v2, v1, v0

    .line 147
    invoke-super {p0, p1, p2}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setPaddings(ILcom/facebook/react/bridge/Dynamic;)V

    .line 148
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mNeedsUpdate:Z

    .line 149
    return-void
.end method
