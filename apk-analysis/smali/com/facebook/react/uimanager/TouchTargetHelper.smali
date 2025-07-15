.class public Lcom/facebook/react/uimanager/TouchTargetHelper;
.super Ljava/lang/Object;
.source "TouchTargetHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;,
        Lcom/facebook/react/uimanager/TouchTargetHelper$TouchTargetReturnType;
    }
.end annotation


# static fields
.field private static final mEventCoords:[F

.field private static final mInverseMatrix:Landroid/graphics/Matrix;

.field private static final mMatrixTransformCoords:[F

.field private static final mTempPoint:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    const/4 v0, 0x2

    new-array v1, v0, [F

    sput-object v1, Lcom/facebook/react/uimanager/TouchTargetHelper;->mEventCoords:[F

    .line 37
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    sput-object v1, Lcom/facebook/react/uimanager/TouchTargetHelper;->mTempPoint:Landroid/graphics/PointF;

    .line 38
    new-array v0, v0, [F

    sput-object v0, Lcom/facebook/react/uimanager/TouchTargetHelper;->mMatrixTransformCoords:[F

    .line 39
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/facebook/react/uimanager/TouchTargetHelper;->mInverseMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findClosestReactAncestor(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 154
    nop

    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    if-gtz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object p0, v0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    .line 157
    :cond_0
    return-object p0
.end method

.method public static findTargetPathAndCoordinatesForTouch(FFLandroid/view/ViewGroup;[F)Ljava/util/List;
    .locals 9
    .param p0, "eventX"    # F
    .param p1, "eventY"    # F
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;
    .param p3, "viewCoords"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Landroid/view/ViewGroup;",
            "[F)",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;",
            ">;"
        }
    .end annotation

    .line 120
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 123
    const/4 v0, 0x0

    aput p0, p3, v0

    .line 124
    const/4 v1, 0x1

    aput p1, p3, v1

    .line 126
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v2, "pathAccumulator":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;>;"
    invoke-static {p3, p2, v2}, Lcom/facebook/react/uimanager/TouchTargetHelper;->findTouchTargetViewWithPointerEvents([FLandroid/view/View;Ljava/util/List;)Landroid/view/View;

    move-result-object v3

    .line 129
    .local v3, "targetView":Landroid/view/View;
    if-eqz v3, :cond_2

    .line 130
    move-object v4, v3

    .line 131
    .local v4, "reactTargetView":Landroid/view/View;
    const/4 v5, 0x0

    .line 133
    .local v5, "firstReactAncestor":I
    :goto_0
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    if-gtz v6, :cond_0

    .line 134
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Landroid/view/View;

    .line 135
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 138
    :cond_0
    if-lez v5, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-gt v5, v6, :cond_1

    .line 140
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v2, v5, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 143
    :cond_1
    aget v6, p3, v0

    aget v1, p3, v1

    invoke-static {v4, v6, v1}, Lcom/facebook/react/uimanager/TouchTargetHelper;->getTouchTargetForView(Landroid/view/View;FF)I

    move-result v1

    .line 144
    .local v1, "targetTag":I
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    if-eq v1, v6, :cond_2

    .line 145
    new-instance v6, Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;

    const/4 v7, 0x0

    move-object v8, v7

    check-cast v8, Landroid/view/View;

    invoke-direct {v6, v1, v7, v7}, Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;-><init>(ILandroid/view/View;Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget-IA;)V

    invoke-interface {v2, v0, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 149
    .end local v1    # "targetTag":I
    .end local v4    # "reactTargetView":Landroid/view/View;
    .end local v5    # "firstReactAncestor":I
    :cond_2
    return-object v2
.end method

.method public static findTargetTagAndCoordinatesForTouch(FFLandroid/view/ViewGroup;[F[I)I
    .locals 6
    .param p0, "eventX"    # F
    .param p1, "eventY"    # F
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;
    .param p3, "viewCoords"    # [F
    .param p4, "nativeViewTag"    # [I

    .line 87
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 88
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    .line 90
    .local v0, "targetTag":I
    const/4 v1, 0x0

    aput p0, p3, v1

    .line 91
    const/4 v2, 0x1

    aput p1, p3, v2

    .line 92
    const/4 v3, 0x0

    invoke-static {p3, p2, v3}, Lcom/facebook/react/uimanager/TouchTargetHelper;->findTouchTargetViewWithPointerEvents([FLandroid/view/View;Ljava/util/List;)Landroid/view/View;

    move-result-object v3

    .line 93
    .local v3, "nativeTargetView":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 94
    invoke-static {v3}, Lcom/facebook/react/uimanager/TouchTargetHelper;->findClosestReactAncestor(Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    .line 95
    .local v4, "reactTargetView":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 96
    if-eqz p4, :cond_0

    .line 97
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    aput v5, p4, v1

    .line 99
    :cond_0
    aget v1, p3, v1

    aget v2, p3, v2

    invoke-static {v4, v1, v2}, Lcom/facebook/react/uimanager/TouchTargetHelper;->getTouchTargetForView(Landroid/view/View;FF)I

    move-result v0

    .line 102
    .end local v4    # "reactTargetView":Landroid/view/View;
    :cond_1
    return v0
.end method

.method public static findTargetTagForTouch(FFLandroid/view/ViewGroup;)I
    .locals 2
    .param p0, "eventX"    # F
    .param p1, "eventY"    # F
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;

    .line 51
    sget-object v0, Lcom/facebook/react/uimanager/TouchTargetHelper;->mEventCoords:[F

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/facebook/react/uimanager/TouchTargetHelper;->findTargetTagAndCoordinatesForTouch(FFLandroid/view/ViewGroup;[F[I)I

    move-result v0

    return v0
.end method

.method public static findTargetTagForTouch(FFLandroid/view/ViewGroup;[I)I
    .locals 1
    .param p0, "eventX"    # F
    .param p1, "eventY"    # F
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;
    .param p3, "nativeViewId"    # [I

    .line 66
    sget-object v0, Lcom/facebook/react/uimanager/TouchTargetHelper;->mEventCoords:[F

    invoke-static {p0, p1, p2, v0, p3}, Lcom/facebook/react/uimanager/TouchTargetHelper;->findTargetTagAndCoordinatesForTouch(FFLandroid/view/ViewGroup;[F[I)I

    move-result v0

    return v0
.end method

.method private static findTouchTargetView([FLandroid/view/View;Ljava/util/EnumSet;Ljava/util/List;)Landroid/view/View;
    .locals 17
    .param p0, "eventCoords"    # [F
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Landroid/view/View;",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/react/uimanager/TouchTargetHelper$TouchTargetReturnType;",
            ">;",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 185
    .local p2, "allowReturnTouchTargetTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/react/uimanager/TouchTargetHelper$TouchTargetReturnType;>;"
    .local p3, "pathAccumulator":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v3, Lcom/facebook/react/uimanager/TouchTargetHelper$TouchTargetReturnType;->CHILD:Lcom/facebook/react/uimanager/TouchTargetHelper$TouchTargetReturnType;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_8

    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_8

    .line 187
    move-object v3, v1

    check-cast v3, Landroid/view/ViewGroup;

    .line 188
    .local v3, "viewGroup":Landroid/view/ViewGroup;
    aget v7, v0, v5

    aget v8, v0, v6

    invoke-static {v7, v8, v1}, Lcom/facebook/react/uimanager/TouchTargetHelper;->isTouchPointInView(FFLandroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 191
    instance-of v7, v1, Lcom/facebook/react/uimanager/ReactOverflowViewWithInset;

    if-eqz v7, :cond_2

    .line 194
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v7

    invoke-static {v7}, Lcom/facebook/react/uimanager/common/ViewUtil;->getUIManagerType(I)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    aget v7, v0, v5

    aget v8, v0, v6

    .line 195
    invoke-static {v7, v8, v1}, Lcom/facebook/react/uimanager/TouchTargetHelper;->isTouchPointInViewWithOverflowInset(FFLandroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 196
    return-object v4

    .line 199
    :cond_0
    move-object v7, v1

    check-cast v7, Lcom/facebook/react/uimanager/ReactOverflowViewWithInset;

    invoke-interface {v7}, Lcom/facebook/react/uimanager/ReactOverflowViewWithInset;->getOverflow()Ljava/lang/String;

    move-result-object v7

    .line 200
    .local v7, "overflow":Ljava/lang/String;
    const-string v8, "hidden"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string/jumbo v8, "scroll"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 201
    :cond_1
    return-object v4

    .line 207
    .end local v7    # "overflow":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 208
    return-object v4

    .line 212
    :cond_3
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .line 215
    .local v7, "childrenCount":I
    instance-of v8, v3, Lcom/facebook/react/uimanager/ReactZIndexedViewGroup;

    if-eqz v8, :cond_4

    move-object v8, v3

    check-cast v8, Lcom/facebook/react/uimanager/ReactZIndexedViewGroup;

    goto :goto_0

    :cond_4
    move-object v8, v4

    .line 216
    .local v8, "zIndexedViewGroup":Lcom/facebook/react/uimanager/ReactZIndexedViewGroup;
    :goto_0
    add-int/lit8 v9, v7, -0x1

    .local v9, "i":I
    :goto_1
    if-ltz v9, :cond_7

    .line 218
    if-eqz v8, :cond_5

    invoke-interface {v8, v9}, Lcom/facebook/react/uimanager/ReactZIndexedViewGroup;->getZIndexMappedChildIndex(I)I

    move-result v10

    goto :goto_2

    :cond_5
    move v10, v9

    .line 219
    .local v10, "childIndex":I
    :goto_2
    invoke-virtual {v3, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 220
    .local v11, "child":Landroid/view/View;
    sget-object v12, Lcom/facebook/react/uimanager/TouchTargetHelper;->mTempPoint:Landroid/graphics/PointF;

    .line 221
    .local v12, "childPoint":Landroid/graphics/PointF;
    aget v13, v0, v5

    aget v14, v0, v6

    invoke-static {v13, v14, v3, v11, v12}, Lcom/facebook/react/uimanager/TouchTargetHelper;->getChildPoint(FFLandroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/PointF;)V

    .line 225
    aget v13, v0, v5

    .line 226
    .local v13, "restoreX":F
    aget v14, v0, v6

    .line 227
    .local v14, "restoreY":F
    iget v15, v12, Landroid/graphics/PointF;->x:F

    aput v15, v0, v5

    .line 228
    iget v15, v12, Landroid/graphics/PointF;->y:F

    aput v15, v0, v6

    .line 229
    move-object/from16 v15, p3

    invoke-static {v0, v11, v15}, Lcom/facebook/react/uimanager/TouchTargetHelper;->findTouchTargetViewWithPointerEvents([FLandroid/view/View;Ljava/util/List;)Landroid/view/View;

    move-result-object v16

    .line 230
    .local v16, "targetView":Landroid/view/View;
    if-eqz v16, :cond_6

    .line 231
    return-object v16

    .line 233
    :cond_6
    aput v13, v0, v5

    .line 234
    aput v14, v0, v6

    .line 216
    .end local v10    # "childIndex":I
    .end local v11    # "child":Landroid/view/View;
    .end local v12    # "childPoint":Landroid/graphics/PointF;
    .end local v13    # "restoreX":F
    .end local v14    # "restoreY":F
    .end local v16    # "targetView":Landroid/view/View;
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    :cond_7
    move-object/from16 v15, p3

    goto :goto_3

    .line 185
    .end local v3    # "viewGroup":Landroid/view/ViewGroup;
    .end local v7    # "childrenCount":I
    .end local v8    # "zIndexedViewGroup":Lcom/facebook/react/uimanager/ReactZIndexedViewGroup;
    .end local v9    # "i":I
    :cond_8
    move-object/from16 v15, p3

    .line 239
    :goto_3
    sget-object v3, Lcom/facebook/react/uimanager/TouchTargetHelper$TouchTargetReturnType;->SELF:Lcom/facebook/react/uimanager/TouchTargetHelper$TouchTargetReturnType;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    aget v3, v0, v5

    aget v5, v0, v6

    .line 240
    invoke-static {v3, v5, v1}, Lcom/facebook/react/uimanager/TouchTargetHelper;->isTouchPointInView(FFLandroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 241
    return-object v1

    .line 244
    :cond_9
    return-object v4
.end method

.method private static findTouchTargetViewWithPointerEvents([FLandroid/view/View;Ljava/util/List;)Landroid/view/View;
    .locals 7
    .param p0, "eventCoords"    # [F
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 309
    .local p2, "pathAccumulator":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;>;"
    instance-of v0, p1, Lcom/facebook/react/uimanager/ReactPointerEventsView;

    if-eqz v0, :cond_0

    .line 310
    move-object v0, p1

    check-cast v0, Lcom/facebook/react/uimanager/ReactPointerEventsView;

    invoke-interface {v0}, Lcom/facebook/react/uimanager/ReactPointerEventsView;->getPointerEvents()Lcom/facebook/react/uimanager/PointerEvents;

    move-result-object v0

    goto :goto_0

    .line 311
    :cond_0
    sget-object v0, Lcom/facebook/react/uimanager/PointerEvents;->AUTO:Lcom/facebook/react/uimanager/PointerEvents;

    :goto_0
    nop

    .line 316
    .local v0, "pointerEvents":Lcom/facebook/react/uimanager/PointerEvents;
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 317
    sget-object v1, Lcom/facebook/react/uimanager/PointerEvents;->AUTO:Lcom/facebook/react/uimanager/PointerEvents;

    if-ne v0, v1, :cond_1

    .line 318
    sget-object v0, Lcom/facebook/react/uimanager/PointerEvents;->BOX_NONE:Lcom/facebook/react/uimanager/PointerEvents;

    goto :goto_1

    .line 319
    :cond_1
    sget-object v1, Lcom/facebook/react/uimanager/PointerEvents;->BOX_ONLY:Lcom/facebook/react/uimanager/PointerEvents;

    if-ne v0, v1, :cond_2

    .line 320
    sget-object v0, Lcom/facebook/react/uimanager/PointerEvents;->NONE:Lcom/facebook/react/uimanager/PointerEvents;

    .line 324
    :cond_2
    :goto_1
    sget-object v1, Lcom/facebook/react/uimanager/PointerEvents;->NONE:Lcom/facebook/react/uimanager/PointerEvents;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    .line 326
    return-object v2

    .line 328
    :cond_3
    sget-object v1, Lcom/facebook/react/uimanager/PointerEvents;->BOX_ONLY:Lcom/facebook/react/uimanager/PointerEvents;

    if-ne v0, v1, :cond_5

    .line 330
    sget-object v1, Lcom/facebook/react/uimanager/TouchTargetHelper$TouchTargetReturnType;->SELF:Lcom/facebook/react/uimanager/TouchTargetHelper$TouchTargetReturnType;

    .line 332
    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    .line 331
    invoke-static {p0, p1, v1, p2}, Lcom/facebook/react/uimanager/TouchTargetHelper;->findTouchTargetView([FLandroid/view/View;Ljava/util/EnumSet;Ljava/util/List;)Landroid/view/View;

    move-result-object v1

    .line 333
    .local v1, "targetView":Landroid/view/View;
    if-eqz v1, :cond_4

    if-eqz p2, :cond_4

    .line 334
    new-instance v3, Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-direct {v3, v4, p1, v2}, Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;-><init>(ILandroid/view/View;Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget-IA;)V

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    :cond_4
    return-object v1

    .line 338
    .end local v1    # "targetView":Landroid/view/View;
    :cond_5
    sget-object v1, Lcom/facebook/react/uimanager/PointerEvents;->BOX_NONE:Lcom/facebook/react/uimanager/PointerEvents;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_a

    .line 340
    sget-object v1, Lcom/facebook/react/uimanager/TouchTargetHelper$TouchTargetReturnType;->CHILD:Lcom/facebook/react/uimanager/TouchTargetHelper$TouchTargetReturnType;

    .line 342
    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    .line 341
    invoke-static {p0, p1, v1, p2}, Lcom/facebook/react/uimanager/TouchTargetHelper;->findTouchTargetView([FLandroid/view/View;Ljava/util/EnumSet;Ljava/util/List;)Landroid/view/View;

    move-result-object v1

    .line 343
    .restart local v1    # "targetView":Landroid/view/View;
    if-eqz v1, :cond_7

    .line 344
    if-eqz p2, :cond_6

    .line 345
    new-instance v3, Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-direct {v3, v4, p1, v2}, Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;-><init>(ILandroid/view/View;Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget-IA;)V

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_6
    return-object v1

    .line 356
    :cond_7
    instance-of v5, p1, Lcom/facebook/react/uimanager/ReactCompoundView;

    if-eqz v5, :cond_9

    aget v5, p0, v4

    aget v6, p0, v3

    .line 357
    invoke-static {v5, v6, p1}, Lcom/facebook/react/uimanager/TouchTargetHelper;->isTouchPointInView(FFLandroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 358
    move-object v5, p1

    check-cast v5, Lcom/facebook/react/uimanager/ReactCompoundView;

    aget v4, p0, v4

    aget v3, p0, v3

    invoke-interface {v5, v4, v3}, Lcom/facebook/react/uimanager/ReactCompoundView;->reactTagForTouch(FF)I

    move-result v3

    .line 360
    .local v3, "reactTag":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    if-eq v3, v4, :cond_9

    .line 361
    if-eqz p2, :cond_8

    .line 362
    new-instance v4, Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    invoke-direct {v4, v5, p1, v2}, Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;-><init>(ILandroid/view/View;Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget-IA;)V

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    :cond_8
    return-object p1

    .line 368
    .end local v3    # "reactTag":I
    :cond_9
    return-object v2

    .line 371
    .end local v1    # "targetView":Landroid/view/View;
    :cond_a
    sget-object v1, Lcom/facebook/react/uimanager/PointerEvents;->AUTO:Lcom/facebook/react/uimanager/PointerEvents;

    if-eq v0, v1, :cond_b

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown pointer event type: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/PointerEvents;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "ReactNative"

    invoke-static {v5, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :cond_b
    instance-of v1, p1, Lcom/facebook/react/uimanager/ReactCompoundViewGroup;

    if-eqz v1, :cond_d

    aget v1, p0, v4

    aget v5, p0, v3

    .line 376
    invoke-static {v1, v5, p1}, Lcom/facebook/react/uimanager/TouchTargetHelper;->isTouchPointInView(FFLandroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_d

    move-object v1, p1

    check-cast v1, Lcom/facebook/react/uimanager/ReactCompoundViewGroup;

    aget v4, p0, v4

    aget v3, p0, v3

    .line 377
    invoke-interface {v1, v4, v3}, Lcom/facebook/react/uimanager/ReactCompoundViewGroup;->interceptsTouchEvent(FF)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 378
    if-eqz p2, :cond_c

    .line 379
    new-instance v1, Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-direct {v1, v3, p1, v2}, Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;-><init>(ILandroid/view/View;Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget-IA;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    :cond_c
    return-object p1

    .line 384
    :cond_d
    sget-object v1, Lcom/facebook/react/uimanager/TouchTargetHelper$TouchTargetReturnType;->SELF:Lcom/facebook/react/uimanager/TouchTargetHelper$TouchTargetReturnType;

    sget-object v3, Lcom/facebook/react/uimanager/TouchTargetHelper$TouchTargetReturnType;->CHILD:Lcom/facebook/react/uimanager/TouchTargetHelper$TouchTargetReturnType;

    .line 388
    invoke-static {v1, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    .line 385
    invoke-static {p0, p1, v1, p2}, Lcom/facebook/react/uimanager/TouchTargetHelper;->findTouchTargetView([FLandroid/view/View;Ljava/util/EnumSet;Ljava/util/List;)Landroid/view/View;

    move-result-object v1

    .line 390
    .local v1, "result":Landroid/view/View;
    if-eqz v1, :cond_e

    if-eqz p2, :cond_e

    .line 391
    new-instance v3, Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-direct {v3, v4, p1, v2}, Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;-><init>(ILandroid/view/View;Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget-IA;)V

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    :cond_e
    return-object v1
.end method

.method private static getChildPoint(FFLandroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/PointF;)V
    .locals 7
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "child"    # Landroid/view/View;
    .param p4, "outLocalPoint"    # Landroid/graphics/PointF;

    .line 286
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p0

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 287
    .local v0, "localX":F
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p1

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 288
    .local v1, "localY":F
    invoke-virtual {p3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 289
    .local v2, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v3

    if-nez v3, :cond_0

    .line 290
    sget-object v3, Lcom/facebook/react/uimanager/TouchTargetHelper;->mMatrixTransformCoords:[F

    .line 291
    .local v3, "localXY":[F
    const/4 v4, 0x0

    aput v0, v3, v4

    .line 292
    const/4 v5, 0x1

    aput v1, v3, v5

    .line 293
    sget-object v6, Lcom/facebook/react/uimanager/TouchTargetHelper;->mInverseMatrix:Landroid/graphics/Matrix;

    .line 294
    .local v6, "inverseMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v2, v6}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 295
    invoke-virtual {v6, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 296
    aget v0, v3, v4

    .line 297
    aget v1, v3, v5

    .line 299
    .end local v3    # "localXY":[F
    .end local v6    # "inverseMatrix":Landroid/graphics/Matrix;
    :cond_0
    invoke-virtual {p4, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 300
    return-void
.end method

.method private static getTouchTargetForView(Landroid/view/View;FF)I
    .locals 1
    .param p0, "targetView"    # Landroid/view/View;
    .param p1, "viewX"    # F
    .param p2, "viewY"    # F

    .line 398
    instance-of v0, p0, Lcom/facebook/react/uimanager/ReactCompoundView;

    if-eqz v0, :cond_0

    .line 401
    move-object v0, p0

    check-cast v0, Lcom/facebook/react/uimanager/ReactCompoundView;

    invoke-interface {v0, p1, p2}, Lcom/facebook/react/uimanager/ReactCompoundView;->reactTagForTouch(FF)I

    move-result v0

    return v0

    .line 403
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    return v0
.end method

.method private static isTouchPointInView(FFLandroid/view/View;)Z
    .locals 5
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "view"    # Landroid/view/View;

    .line 252
    instance-of v0, p2, Lcom/facebook/react/touch/ReactHitSlopView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/facebook/react/touch/ReactHitSlopView;

    invoke-interface {v0}, Lcom/facebook/react/touch/ReactHitSlopView;->getHitSlopRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 253
    move-object v0, p2

    check-cast v0, Lcom/facebook/react/touch/ReactHitSlopView;

    invoke-interface {v0}, Lcom/facebook/react/touch/ReactHitSlopView;->getHitSlopRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 254
    .local v0, "hitSlopRect":Landroid/graphics/Rect;
    iget v3, v0, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    int-to-float v3, v3

    cmpl-float v3, p0, v3

    if-ltz v3, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p0, v3

    if-gez v3, :cond_0

    iget v3, v0, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_0

    .line 255
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_0

    .line 256
    return v1

    .line 259
    :cond_0
    return v2

    .line 261
    .end local v0    # "hitSlopRect":Landroid/graphics/Rect;
    :cond_1
    const/4 v0, 0x0

    cmpl-float v3, p0, v0

    if-ltz v3, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, p0, v3

    if-gez v3, :cond_2

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 262
    return v1

    .line 265
    :cond_2
    return v2
.end method

.method private static isTouchPointInViewWithOverflowInset(FFLandroid/view/View;)Z
    .locals 4
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "view"    # Landroid/view/View;

    .line 270
    instance-of v0, p2, Lcom/facebook/react/uimanager/ReactOverflowViewWithInset;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 271
    return v1

    .line 274
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/facebook/react/uimanager/ReactOverflowViewWithInset;

    invoke-interface {v0}, Lcom/facebook/react/uimanager/ReactOverflowViewWithInset;->getOverflowInset()Landroid/graphics/Rect;

    move-result-object v0

    .line 275
    .local v0, "overflowInset":Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    cmpl-float v2, p0, v2

    if-ltz v2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p0, v2

    if-gez v2, :cond_1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    .line 276
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 275
    :goto_0
    return v1
.end method
