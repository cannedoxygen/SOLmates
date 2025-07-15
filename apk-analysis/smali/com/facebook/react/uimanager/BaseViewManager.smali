.class public abstract Lcom/facebook/react/uimanager/BaseViewManager;
.super Lcom/facebook/react/uimanager/ViewManager;
.source "BaseViewManager.java"

# interfaces
.implements Lcom/facebook/react/uimanager/BaseViewManagerInterface;
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/uimanager/BaseViewManager$LayerEffectsHelper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "C:",
        "Lcom/facebook/react/uimanager/LayoutShadowNode;",
        ">",
        "Lcom/facebook/react/uimanager/ViewManager<",
        "TT;TC;>;",
        "Lcom/facebook/react/uimanager/BaseViewManagerInterface<",
        "TT;>;",
        "Landroid/view/View$OnLayoutChangeListener;"
    }
.end annotation


# static fields
.field private static final CAMERA_DISTANCE_NORMALIZATION_MULTIPLIER:F

.field private static final PERSPECTIVE_ARRAY_INVERTED_CAMERA_DISTANCE_INDEX:I = 0x2

.field private static final STATE_BUSY:Ljava/lang/String; = "busy"

.field private static final STATE_CHECKED:Ljava/lang/String; = "checked"

.field private static final STATE_EXPANDED:Ljava/lang/String; = "expanded"

.field private static final STATE_MIXED:Ljava/lang/String; = "mixed"

.field private static final sMatrixDecompositionContext:Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

.field private static final sTransformDecompositionArray:[D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/facebook/react/uimanager/BaseViewManager;->CAMERA_DISTANCE_NORMALIZATION_MULTIPLIER:F

    .line 53
    new-instance v0, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;-><init>()V

    sput-object v0, Lcom/facebook/react/uimanager/BaseViewManager;->sMatrixDecompositionContext:Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    .line 55
    const/16 v0, 0x10

    new-array v0, v0, [D

    sput-object v0, Lcom/facebook/react/uimanager/BaseViewManager;->sTransformDecompositionArray:[D

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/react/uimanager/ViewManager;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 67
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/ViewManager;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 68
    return-void
.end method

.method private logUnsupportedPropertyWarning(Ljava/lang/String;)V
    .locals 3
    .param p1, "propName"    # Ljava/lang/String;

    .line 784
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/BaseViewManager;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ReactNative"

    const-string v2, "%s doesn\'t support property \'%s\'"

    invoke-static {v1, v2, v0}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 785
    return-void
.end method

.method private static sanitizeFloatPropertyValue(F)F
    .locals 3
    .param p0, "value"    # F

    .line 633
    const v0, -0x800001

    cmpl-float v1, p0, v0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    if-ltz v1, :cond_0

    cmpg-float v1, p0, v2

    if-gtz v1, :cond_0

    .line 634
    return p0

    .line 636
    :cond_0
    cmpg-float v1, p0, v0

    if-ltz v1, :cond_5

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v1, p0, v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 639
    :cond_1
    cmpl-float v0, p0, v2

    if-gtz v0, :cond_4

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v0, p0, v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 642
    :cond_2
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 643
    const/4 v0, 0x0

    return v0

    .line 646
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid float property value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 640
    :cond_4
    :goto_0
    return v2

    .line 637
    :cond_5
    :goto_1
    return v0
.end method

.method private static setPointerEventsFlag(Landroid/view/View;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;Z)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "event"    # Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;
    .param p2, "isListening"    # Z

    .line 789
    sget v0, Lcom/facebook/react/R$id;->pointer_events:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 790
    .local v0, "tag":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 791
    .local v1, "currentValue":I
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;->ordinal()I

    move-result v3

    shl-int/2addr v2, v3

    .line 792
    .local v2, "flag":I
    sget v3, Lcom/facebook/react/R$id;->pointer_events:I

    if-eqz p2, :cond_1

    or-int v4, v1, v2

    goto :goto_1

    :cond_1
    not-int v4, v2

    and-int/2addr v4, v1

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 793
    return-void
.end method

.method private updateViewAccessibility(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 650
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    nop

    .line 651
    invoke-virtual {p1}, Landroid/view/View;->isFocusable()Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v1

    .line 650
    invoke-static {p1, v0, v1}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->setDelegate(Landroid/view/View;ZI)V

    .line 652
    return-void
.end method

.method private updateViewContentDescription(Landroid/view/View;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 399
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    sget v0, Lcom/facebook/react/R$id;->accessibility_label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 400
    .local v0, "accessibilityLabel":Ljava/lang/String;
    sget v1, Lcom/facebook/react/R$id;->accessibility_state:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/ReadableMap;

    .line 401
    .local v1, "accessibilityState":Lcom/facebook/react/bridge/ReadableMap;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 402
    .local v2, "contentDescription":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget v3, Lcom/facebook/react/R$id;->accessibility_value:I

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/bridge/ReadableMap;

    .line 403
    .local v3, "accessibilityValue":Lcom/facebook/react/bridge/ReadableMap;
    if-eqz v0, :cond_0

    .line 404
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    :cond_0
    if-eqz v1, :cond_3

    .line 407
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v4

    .line 408
    .local v4, "i":Lcom/facebook/react/bridge/ReadableMapKeySetIterator;
    :goto_0
    invoke-interface {v4}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 409
    invoke-interface {v4}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v5

    .line 410
    .local v5, "state":Ljava/lang/String;
    invoke-interface {v1, v5}, Lcom/facebook/react/bridge/ReadableMap;->getDynamic(Ljava/lang/String;)Lcom/facebook/react/bridge/Dynamic;

    move-result-object v6

    .line 411
    .local v6, "value":Lcom/facebook/react/bridge/Dynamic;
    const-string v7, "checked"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 412
    invoke-interface {v6}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v7

    sget-object v8, Lcom/facebook/react/bridge/ReadableType;->String:Lcom/facebook/react/bridge/ReadableType;

    if-ne v7, v8, :cond_1

    .line 413
    invoke-interface {v6}, Lcom/facebook/react/bridge/Dynamic;->asString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "mixed"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 414
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/facebook/react/R$string;->state_mixed_description:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 415
    :cond_1
    const-string v7, "busy"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 416
    invoke-interface {v6}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v7

    sget-object v8, Lcom/facebook/react/bridge/ReadableType;->Boolean:Lcom/facebook/react/bridge/ReadableType;

    if-ne v7, v8, :cond_2

    .line 417
    invoke-interface {v6}, Lcom/facebook/react/bridge/Dynamic;->asBoolean()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 418
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/facebook/react/R$string;->state_busy_description:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    .end local v5    # "state":Ljava/lang/String;
    .end local v6    # "value":Lcom/facebook/react/bridge/Dynamic;
    :cond_2
    :goto_1
    goto :goto_0

    .line 422
    .end local v4    # "i":Lcom/facebook/react/bridge/ReadableMapKeySetIterator;
    :cond_3
    if-eqz v3, :cond_4

    const-string/jumbo v4, "text"

    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 423
    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->getDynamic(Ljava/lang/String;)Lcom/facebook/react/bridge/Dynamic;

    move-result-object v4

    .line 424
    .local v4, "text":Lcom/facebook/react/bridge/Dynamic;
    if-eqz v4, :cond_4

    invoke-interface {v4}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v5

    sget-object v6, Lcom/facebook/react/bridge/ReadableType;->String:Lcom/facebook/react/bridge/ReadableType;

    if-ne v5, v6, :cond_4

    .line 425
    invoke-interface {v4}, Lcom/facebook/react/bridge/Dynamic;->asString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    .end local v4    # "text":Lcom/facebook/react/bridge/Dynamic;
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 429
    const-string v4, ", "

    invoke-static {v4, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 431
    :cond_5
    return-void
.end method


# virtual methods
.method public getExportedCustomBubblingEventTypeConstants()Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 676
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    invoke-super {p0}, Lcom/facebook/react/uimanager/ViewManager;->getExportedCustomDirectEventTypeConstants()Ljava/util/Map;

    move-result-object v0

    .line 678
    .local v0, "baseEventTypeConstants":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 679
    .local v1, "eventTypeConstants":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    nop

    .line 680
    invoke-static {}, Lcom/facebook/react/common/MapBuilder;->builder()Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v2

    .line 685
    const-string v3, "bubbled"

    const-string/jumbo v4, "onPointerCancel"

    const-string v5, "captured"

    const-string/jumbo v6, "onPointerCancelCapture"

    invoke-static {v3, v4, v5, v6}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 683
    const-string/jumbo v6, "phasedRegistrationNames"

    invoke-static {v6, v4}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 681
    const-string/jumbo v7, "topPointerCancel"

    invoke-virtual {v2, v7, v4}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v2

    .line 691
    const-string/jumbo v4, "onPointerDown"

    const-string/jumbo v7, "onPointerDownCapture"

    invoke-static {v3, v4, v5, v7}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 689
    invoke-static {v6, v4}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 687
    const-string/jumbo v7, "topPointerDown"

    invoke-virtual {v2, v7, v4}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v2

    .line 702
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 696
    const-string v7, "bubbled"

    const-string/jumbo v8, "onPointerEnter"

    const-string v9, "captured"

    const-string/jumbo v10, "onPointerEnterCapture"

    const-string/jumbo v11, "skipBubbling"

    invoke-static/range {v7 .. v12}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v7

    .line 694
    invoke-static {v6, v7}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v7

    .line 692
    const-string/jumbo v8, "topPointerEnter"

    invoke-virtual {v2, v8, v7}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v2

    .line 713
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 707
    const-string v7, "bubbled"

    const-string/jumbo v8, "onPointerLeave"

    const-string v9, "captured"

    const-string/jumbo v10, "onPointerLeaveCapture"

    const-string/jumbo v11, "skipBubbling"

    invoke-static/range {v7 .. v12}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 705
    invoke-static {v6, v4}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 703
    const-string/jumbo v7, "topPointerLeave"

    invoke-virtual {v2, v7, v4}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v2

    .line 718
    const-string/jumbo v4, "onPointerMove"

    const-string/jumbo v7, "onPointerMoveCapture"

    invoke-static {v3, v4, v5, v7}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 716
    invoke-static {v6, v4}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 714
    const-string/jumbo v7, "topPointerMove"

    invoke-virtual {v2, v7, v4}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v2

    .line 723
    const-string/jumbo v4, "onPointerUp"

    const-string/jumbo v7, "onPointerUpCapture"

    invoke-static {v3, v4, v5, v7}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 721
    invoke-static {v6, v4}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 719
    const-string/jumbo v7, "topPointerUp"

    invoke-virtual {v2, v7, v4}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v2

    .line 728
    const-string/jumbo v4, "onPointerOut"

    const-string/jumbo v7, "onPointerOutCapture"

    invoke-static {v3, v4, v5, v7}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 726
    invoke-static {v6, v4}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 724
    const-string/jumbo v7, "topPointerOut"

    invoke-virtual {v2, v7, v4}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v2

    .line 733
    const-string/jumbo v4, "onPointerOver"

    const-string/jumbo v7, "onPointerOverCapture"

    invoke-static {v3, v4, v5, v7}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 731
    invoke-static {v6, v4}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 729
    const-string/jumbo v7, "topPointerOver"

    invoke-virtual {v2, v7, v4}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v2

    .line 738
    const-string/jumbo v4, "onClick"

    const-string/jumbo v7, "onClickCapture"

    invoke-static {v3, v4, v5, v7}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 736
    invoke-static {v6, v3}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 734
    const-string/jumbo v4, "topClick"

    invoke-virtual {v2, v4, v3}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v2

    .line 739
    invoke-virtual {v2}, Lcom/facebook/react/common/MapBuilder$Builder;->build()Ljava/util/Map;

    move-result-object v2

    .line 679
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 740
    return-object v1
.end method

.method public getExportedCustomDirectEventTypeConstants()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 746
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    invoke-super {p0}, Lcom/facebook/react/uimanager/ViewManager;->getExportedCustomDirectEventTypeConstants()Ljava/util/Map;

    move-result-object v0

    .line 748
    .local v0, "baseEventTypeConstants":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 749
    .local v1, "eventTypeConstants":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    nop

    .line 750
    invoke-static {}, Lcom/facebook/react/common/MapBuilder;->builder()Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v2

    .line 753
    const-string/jumbo v3, "registrationName"

    const-string/jumbo v4, "onAccessibilityAction"

    invoke-static {v3, v4}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 751
    const-string/jumbo v4, "topAccessibilityAction"

    invoke-virtual {v2, v4, v3}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v2

    .line 754
    invoke-virtual {v2}, Lcom/facebook/react/common/MapBuilder$Builder;->build()Ljava/util/Map;

    move-result-object v2

    .line 749
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 755
    return-object v1
.end method

.method protected onAfterUpdateTransaction(Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 656
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-super {p0, p1}, Lcom/facebook/react/uimanager/ViewManager;->onAfterUpdateTransaction(Landroid/view/View;)V

    .line 657
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/BaseViewManager;->updateViewAccessibility(Landroid/view/View;)V

    .line 659
    sget v0, Lcom/facebook/react/R$id;->invalidate_transform:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 660
    .local v0, "invalidateTransform":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 661
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 662
    sget v1, Lcom/facebook/react/R$id;->transform_origin:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/ReadableArray;

    .line 663
    .local v1, "transformOrigin":Lcom/facebook/react/bridge/ReadableArray;
    sget v2, Lcom/facebook/react/R$id;->transform:I

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/bridge/ReadableArray;

    .line 664
    .local v2, "transforms":Lcom/facebook/react/bridge/ReadableArray;
    invoke-virtual {p0, p1, v2, v1}, Lcom/facebook/react/uimanager/BaseViewManager;->setTransformProperty(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 665
    sget v3, Lcom/facebook/react/R$id;->invalidate_transform:I

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 668
    .end local v1    # "transformOrigin":Lcom/facebook/react/bridge/ReadableArray;
    .end local v2    # "transforms":Lcom/facebook/react/bridge/ReadableArray;
    :cond_0
    sget v1, Lcom/facebook/react/R$id;->filter:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/ReadableArray;

    .line 669
    .local v1, "filter":Lcom/facebook/react/bridge/ReadableArray;
    sget v2, Lcom/facebook/react/R$id;->use_hardware_layer:I

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 671
    .local v2, "useHWLayer":Ljava/lang/Boolean;
    invoke-static {p1, v1, v2}, Lcom/facebook/react/uimanager/BaseViewManager$LayerEffectsHelper;->apply(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/Boolean;)V

    .line 672
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 176
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    sub-int v0, p8, p6

    .line 177
    .local v0, "oldWidth":I
    sub-int v1, p9, p7

    .line 180
    .local v1, "oldHeight":I
    sub-int v2, p4, p2

    .line 181
    .local v2, "currentWidth":I
    sub-int v3, p5, p3

    .line 183
    .local v3, "currentHeight":I
    if-ne v3, v1, :cond_0

    if-eq v2, v0, :cond_2

    .line 184
    :cond_0
    sget v4, Lcom/facebook/react/R$id;->transform_origin:I

    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/bridge/ReadableArray;

    .line 185
    .local v4, "transformOrigin":Lcom/facebook/react/bridge/ReadableArray;
    sget v5, Lcom/facebook/react/R$id;->transform:I

    invoke-virtual {p1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/react/bridge/ReadableArray;

    .line 186
    .local v5, "transforms":Lcom/facebook/react/bridge/ReadableArray;
    if-nez v5, :cond_1

    if-eqz v4, :cond_2

    .line 187
    :cond_1
    invoke-virtual {p0, p1, v5, v4}, Lcom/facebook/react/uimanager/BaseViewManager;->setTransformProperty(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 190
    .end local v4    # "transformOrigin":Lcom/facebook/react/bridge/ReadableArray;
    .end local v5    # "transforms":Lcom/facebook/react/bridge/ReadableArray;
    :cond_2
    return-void
.end method

.method protected prepareToRecycleView(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;)Landroid/view/View;
    .locals 8
    .param p1, "reactContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/uimanager/ThemedReactContext;",
            "TT;)TT;"
        }
    .end annotation

    .line 73
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p2, "view":Landroid/view/View;, "TT;"
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 74
    sget v1, Lcom/facebook/react/R$id;->pointer_events:I

    invoke-virtual {p2, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 75
    sget v1, Lcom/facebook/react/R$id;->react_test_id:I

    invoke-virtual {p2, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 76
    sget v1, Lcom/facebook/react/R$id;->view_tag_native_id:I

    invoke-virtual {p2, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 77
    sget v1, Lcom/facebook/react/R$id;->labelled_by:I

    invoke-virtual {p2, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 78
    sget v1, Lcom/facebook/react/R$id;->accessibility_label:I

    invoke-virtual {p2, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 79
    sget v1, Lcom/facebook/react/R$id;->accessibility_hint:I

    invoke-virtual {p2, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 80
    sget v1, Lcom/facebook/react/R$id;->accessibility_role:I

    invoke-virtual {p2, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 81
    sget v1, Lcom/facebook/react/R$id;->accessibility_state:I

    invoke-virtual {p2, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 82
    sget v1, Lcom/facebook/react/R$id;->accessibility_actions:I

    invoke-virtual {p2, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 83
    sget v1, Lcom/facebook/react/R$id;->accessibility_value:I

    invoke-virtual {p2, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 84
    sget v1, Lcom/facebook/react/R$id;->accessibility_state_expanded:I

    invoke-virtual {p2, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 95
    invoke-virtual {p0, p2, v0, v0}, Lcom/facebook/react/uimanager/BaseViewManager;->setTransformProperty(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 98
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_2

    .line 99
    invoke-virtual {p2}, Landroid/view/View;->resetPivot()V

    .line 104
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setTop(I)V

    .line 105
    invoke-virtual {p2, v1}, Landroid/view/View;->setBottom(I)V

    .line 106
    invoke-virtual {p2, v1}, Landroid/view/View;->setLeft(I)V

    .line 107
    invoke-virtual {p2, v1}, Landroid/view/View;->setRight(I)V

    .line 108
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/view/View;->setElevation(F)V

    .line 109
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt v4, v5, :cond_0

    .line 111
    invoke-virtual {p2, v0}, Landroid/view/View;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    .line 114
    :cond_0
    sget v4, Lcom/facebook/react/R$id;->transform:I

    invoke-virtual {p2, v4, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 115
    sget v4, Lcom/facebook/react/R$id;->transform_origin:I

    invoke-virtual {p2, v4, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 116
    sget v4, Lcom/facebook/react/R$id;->invalidate_transform:I

    invoke-virtual {p2, v4, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 117
    invoke-virtual {p2, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 119
    sget v4, Lcom/facebook/react/R$id;->use_hardware_layer:I

    invoke-virtual {p2, v4, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 120
    sget v4, Lcom/facebook/react/R$id;->filter:I

    invoke-virtual {p2, v4, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 121
    sget v4, Lcom/facebook/react/R$id;->mix_blend_mode:I

    invoke-virtual {p2, v4, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 122
    invoke-static {p2, v0, v0}, Lcom/facebook/react/uimanager/BaseViewManager$LayerEffectsHelper;->apply(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/Boolean;)V

    .line 125
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v2, :cond_1

    .line 126
    const/high16 v2, -0x1000000

    invoke-virtual {p2, v2}, Landroid/view/View;->setOutlineAmbientShadowColor(I)V

    .line 127
    invoke-virtual {p2, v2}, Landroid/view/View;->setOutlineSpotShadowColor(I)V

    .line 133
    :cond_1
    const/4 v2, -0x1

    invoke-virtual {p2, v2}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 134
    invoke-virtual {p2, v2}, Landroid/view/View;->setNextFocusForwardId(I)V

    .line 135
    invoke-virtual {p2, v2}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 136
    invoke-virtual {p2, v2}, Landroid/view/View;->setNextFocusUpId(I)V

    .line 143
    invoke-virtual {p2, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 144
    invoke-virtual {p2, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 147
    invoke-virtual {p2, v3}, Landroid/view/View;->setElevation(F)V

    .line 152
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 155
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/facebook/react/uimanager/BaseViewManager;->setPadding(Landroid/view/View;IIII)V

    .line 158
    invoke-virtual {p2, v0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 160
    return-object p2

    .line 102
    :cond_2
    return-object v0
.end method

.method public setAccessibilityActions(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1
    .param p2, "accessibilityActions"    # Lcom/facebook/react/bridge/ReadableArray;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "accessibilityActions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/react/bridge/ReadableArray;",
            ")V"
        }
    .end annotation

    .line 436
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    if-nez p2, :cond_0

    .line 437
    return-void

    .line 440
    :cond_0
    sget v0, Lcom/facebook/react/R$id;->accessibility_actions:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 441
    return-void
.end method

.method public setAccessibilityCollection(Landroid/view/View;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1
    .param p2, "accessibilityCollection"    # Lcom/facebook/react/bridge/ReadableMap;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "accessibilityCollection"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/react/bridge/ReadableMap;",
            ")V"
        }
    .end annotation

    .line 335
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    sget v0, Lcom/facebook/react/R$id;->accessibility_collection:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 336
    return-void
.end method

.method public setAccessibilityCollectionItem(Landroid/view/View;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1
    .param p2, "accessibilityCollectionItem"    # Lcom/facebook/react/bridge/ReadableMap;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "accessibilityCollectionItem"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/react/bridge/ReadableMap;",
            ")V"
        }
    .end annotation

    .line 342
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    sget v0, Lcom/facebook/react/R$id;->accessibility_collection_item:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 343
    return-void
.end method

.method public setAccessibilityHint(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p2, "accessibilityHint"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "accessibilityHint"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 317
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    sget v0, Lcom/facebook/react/R$id;->accessibility_hint:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 318
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/BaseViewManager;->updateViewContentDescription(Landroid/view/View;)V

    .line 319
    return-void
.end method

.method public setAccessibilityLabel(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p2, "accessibilityLabel"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "accessibilityLabel"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 310
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    sget v0, Lcom/facebook/react/R$id;->accessibility_label:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 311
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/BaseViewManager;->updateViewContentDescription(Landroid/view/View;)V

    .line 312
    return-void
.end method

.method public setAccessibilityLabelledBy(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 3
    .param p2, "nativeId"    # Lcom/facebook/react/bridge/Dynamic;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "accessibilityLabelledBy"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/react/bridge/Dynamic;",
            ")V"
        }
    .end annotation

    .line 295
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    return-void

    .line 298
    :cond_0
    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v0

    sget-object v1, Lcom/facebook/react/bridge/ReadableType;->String:Lcom/facebook/react/bridge/ReadableType;

    if-ne v0, v1, :cond_1

    .line 299
    sget v0, Lcom/facebook/react/R$id;->labelled_by:I

    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 300
    :cond_1
    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v0

    sget-object v1, Lcom/facebook/react/bridge/ReadableType;->Array:Lcom/facebook/react/bridge/ReadableType;

    if-ne v0, v1, :cond_2

    .line 303
    sget v0, Lcom/facebook/react/R$id;->labelled_by:I

    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->asArray()Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 305
    :cond_2
    :goto_0
    return-void
.end method

.method public setAccessibilityLiveRegion(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p2, "liveRegion"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "accessibilityLiveRegion"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 520
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    if-eqz p2, :cond_2

    const-string/jumbo v0, "none"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 522
    :cond_0
    const-string/jumbo v0, "polite"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 523
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    goto :goto_1

    .line 524
    :cond_1
    const-string v0, "assertive"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 525
    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    goto :goto_1

    .line 521
    :cond_2
    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 527
    :cond_3
    :goto_1
    return-void
.end method

.method public setAccessibilityRole(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .param p2, "accessibilityRole"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "accessibilityRole"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 324
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    if-nez p2, :cond_0

    .line 325
    sget v0, Lcom/facebook/react/R$id;->accessibility_role:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 327
    :cond_0
    sget v0, Lcom/facebook/react/R$id;->accessibility_role:I

    invoke-static {p2}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->fromValue(Ljava/lang/String;)Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 329
    :goto_0
    return-void
.end method

.method public setAccessibilityValue(Landroid/view/View;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 2
    .param p2, "accessibilityValue"    # Lcom/facebook/react/bridge/ReadableMap;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "accessibilityValue"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/react/bridge/ReadableMap;",
            ")V"
        }
    .end annotation

    .line 445
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    if-nez p2, :cond_0

    .line 446
    sget v0, Lcom/facebook/react/R$id;->accessibility_value:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 447
    invoke-virtual {p1, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 449
    :cond_0
    sget v0, Lcom/facebook/react/R$id;->accessibility_value:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 450
    const-string/jumbo v0, "text"

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 451
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/BaseViewManager;->updateViewContentDescription(Landroid/view/View;)V

    .line 454
    :cond_1
    :goto_0
    return-void
.end method

.method public setBackgroundColor(Landroid/view/View;I)V
    .locals 0
    .param p2, "backgroundColor"    # I
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        defaultInt = 0x0
        name = "backgroundColor"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 198
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 199
    return-void
.end method

.method public setBorderBottomLeftRadius(Landroid/view/View;F)V
    .locals 1
    .param p2, "borderRadius"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .line 765
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    const-string v0, "borderBottomLeftRadius"

    invoke-direct {p0, v0}, Lcom/facebook/react/uimanager/BaseViewManager;->logUnsupportedPropertyWarning(Ljava/lang/String;)V

    .line 766
    return-void
.end method

.method public setBorderBottomRightRadius(Landroid/view/View;F)V
    .locals 1
    .param p2, "borderRadius"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .line 770
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    const-string v0, "borderBottomRightRadius"

    invoke-direct {p0, v0}, Lcom/facebook/react/uimanager/BaseViewManager;->logUnsupportedPropertyWarning(Ljava/lang/String;)V

    .line 771
    return-void
.end method

.method public setBorderRadius(Landroid/view/View;F)V
    .locals 1
    .param p2, "borderRadius"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .line 760
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    const-string v0, "borderRadius"

    invoke-direct {p0, v0}, Lcom/facebook/react/uimanager/BaseViewManager;->logUnsupportedPropertyWarning(Ljava/lang/String;)V

    .line 761
    return-void
.end method

.method public setBorderTopLeftRadius(Landroid/view/View;F)V
    .locals 1
    .param p2, "borderRadius"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .line 775
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    const-string v0, "borderTopLeftRadius"

    invoke-direct {p0, v0}, Lcom/facebook/react/uimanager/BaseViewManager;->logUnsupportedPropertyWarning(Ljava/lang/String;)V

    .line 776
    return-void
.end method

.method public setBorderTopRightRadius(Landroid/view/View;F)V
    .locals 1
    .param p2, "borderRadius"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .line 780
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    const-string v0, "borderTopRightRadius"

    invoke-direct {p0, v0}, Lcom/facebook/react/uimanager/BaseViewManager;->logUnsupportedPropertyWarning(Ljava/lang/String;)V

    .line 781
    return-void
.end method

.method public setClick(Landroid/view/View;Z)V
    .locals 1
    .param p2, "value"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "onClick"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 848
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    sget-object v0, Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;->CLICK:Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;

    invoke-static {p1, v0, p2}, Lcom/facebook/react/uimanager/BaseViewManager;->setPointerEventsFlag(Landroid/view/View;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;Z)V

    .line 849
    return-void
.end method

.method public setClickCapture(Landroid/view/View;Z)V
    .locals 1
    .param p2, "value"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "onClickCapture"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 853
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    sget-object v0, Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;->CLICK_CAPTURE:Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;

    invoke-static {p1, v0, p2}, Lcom/facebook/react/uimanager/BaseViewManager;->setPointerEventsFlag(Landroid/view/View;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;Z)V

    .line 854
    return-void
.end method

.method public setElevation(Landroid/view/View;F)V
    .locals 1
    .param p2, "elevation"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "elevation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .line 247
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-static {p2}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 248
    return-void
.end method

.method public setFilter(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 2
    .param p2, "filter"    # Lcom/facebook/react/bridge/ReadableArray;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Filter"
        name = "filter"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/react/bridge/ReadableArray;",
            ")V"
        }
    .end annotation

    .line 204
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-static {p1}, Lcom/facebook/react/uimanager/common/ViewUtil;->getUIManagerType(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 205
    sget v0, Lcom/facebook/react/R$id;->filter:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 207
    :cond_0
    return-void
.end method

.method public setImportantForAccessibility(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p2, "importantForAccessibility"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "importantForAccessibility"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 460
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    if-eqz p2, :cond_3

    const-string v0, "auto"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 462
    :cond_0
    const-string/jumbo v0, "yes"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 463
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_1

    .line 464
    :cond_1
    const-string v0, "no"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 465
    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_1

    .line 466
    :cond_2
    const-string v0, "no-hide-descendants"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 467
    const/4 v0, 0x4

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_1

    .line 461
    :cond_3
    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 470
    :cond_4
    :goto_1
    return-void
.end method

.method public setMixBlendMode(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .param p2, "mixBlendMode"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "experimental_mixBlendMode"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 212
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-static {p1}, Lcom/facebook/react/uimanager/common/ViewUtil;->getUIManagerType(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 213
    sget v0, Lcom/facebook/react/R$id;->mix_blend_mode:I

    invoke-static {p2}, Lcom/facebook/react/uimanager/BlendModeHelper;->parseMixBlendMode(Ljava/lang/String;)Landroid/graphics/BlendMode;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 215
    :cond_0
    return-void
.end method

.method public setMoveShouldSetResponder(Landroid/view/View;Z)V
    .locals 0
    .param p2, "value"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "onMoveShouldSetResponder"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 861
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    return-void
.end method

.method public setMoveShouldSetResponderCapture(Landroid/view/View;Z)V
    .locals 0
    .param p2, "value"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "onMoveShouldSetResponderCapture"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 866
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    return-void
.end method

.method public setNativeId(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p2, "nativeId"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "nativeID"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 288
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    sget v0, Lcom/facebook/react/R$id;->view_tag_native_id:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 289
    invoke-static {p1}, Lcom/facebook/react/uimanager/util/ReactFindViewUtil;->notifyViewRendered(Landroid/view/View;)V

    .line 290
    return-void
.end method

.method public setOpacity(Landroid/view/View;F)V
    .locals 0
    .param p2, "opacity"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 1.0f
        name = "opacity"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .line 241
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 242
    return-void
.end method

.method public setPointerEnter(Landroid/view/View;Z)V
    .locals 1
    .param p2, "value"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "onPointerEnter"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 798
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    sget-object v0, Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;->ENTER:Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;

    invoke-static {p1, v0, p2}, Lcom/facebook/react/uimanager/BaseViewManager;->setPointerEventsFlag(Landroid/view/View;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;Z)V

    .line 799
    return-void
.end method

.method public setPointerEnterCapture(Landroid/view/View;Z)V
    .locals 1
    .param p2, "value"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "onPointerEnterCapture"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 803
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    sget-object v0, Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;->ENTER_CAPTURE:Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;

    invoke-static {p1, v0, p2}, Lcom/facebook/react/uimanager/BaseViewManager;->setPointerEventsFlag(Landroid/view/View;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;Z)V

    .line 804
    return-void
.end method

.method public setPointerLeave(Landroid/view/View;Z)V
    .locals 1
    .param p2, "value"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "onPointerLeave"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 828
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    sget-object v0, Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;->LEAVE:Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;

    invoke-static {p1, v0, p2}, Lcom/facebook/react/uimanager/BaseViewManager;->setPointerEventsFlag(Landroid/view/View;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;Z)V

    .line 829
    return-void
.end method

.method public setPointerLeaveCapture(Landroid/view/View;Z)V
    .locals 1
    .param p2, "value"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "onPointerLeaveCapture"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 833
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    sget-object v0, Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;->LEAVE_CAPTURE:Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;

    invoke-static {p1, v0, p2}, Lcom/facebook/react/uimanager/BaseViewManager;->setPointerEventsFlag(Landroid/view/View;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;Z)V

    .line 834
    return-void
.end method

.method public setPointerMove(Landroid/view/View;Z)V
    .locals 1
    .param p2, "value"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "onPointerMove"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 838
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    sget-object v0, Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;->MOVE:Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;

    invoke-static {p1, v0, p2}, Lcom/facebook/react/uimanager/BaseViewManager;->setPointerEventsFlag(Landroid/view/View;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;Z)V

    .line 839
    return-void
.end method

.method public setPointerMoveCapture(Landroid/view/View;Z)V
    .locals 1
    .param p2, "value"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "onPointerMoveCapture"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 843
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    sget-object v0, Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;->MOVE_CAPTURE:Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;

    invoke-static {p1, v0, p2}, Lcom/facebook/react/uimanager/BaseViewManager;->setPointerEventsFlag(Landroid/view/View;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;Z)V

    .line 844
    return-void
.end method

.method public setPointerOut(Landroid/view/View;Z)V
    .locals 1
    .param p2, "value"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "onPointerOut"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 818
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    sget-object v0, Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;->OUT:Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;

    invoke-static {p1, v0, p2}, Lcom/facebook/react/uimanager/BaseViewManager;->setPointerEventsFlag(Landroid/view/View;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;Z)V

    .line 819
    return-void
.end method

.method public setPointerOutCapture(Landroid/view/View;Z)V
    .locals 1
    .param p2, "value"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "onPointerOutCapture"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 823
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    sget-object v0, Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;->OUT_CAPTURE:Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;

    invoke-static {p1, v0, p2}, Lcom/facebook/react/uimanager/BaseViewManager;->setPointerEventsFlag(Landroid/view/View;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;Z)V

    .line 824
    return-void
.end method

.method public setPointerOver(Landroid/view/View;Z)V
    .locals 1
    .param p2, "value"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "onPointerOver"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 808
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    sget-object v0, Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;->OVER:Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;

    invoke-static {p1, v0, p2}, Lcom/facebook/react/uimanager/BaseViewManager;->setPointerEventsFlag(Landroid/view/View;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;Z)V

    .line 809
    return-void
.end method

.method public setPointerOverCapture(Landroid/view/View;Z)V
    .locals 1
    .param p2, "value"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "onPointerOverCapture"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 813
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    sget-object v0, Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;->OVER_CAPTURE:Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;

    invoke-static {p1, v0, p2}, Lcom/facebook/react/uimanager/BaseViewManager;->setPointerEventsFlag(Landroid/view/View;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;Z)V

    .line 814
    return-void
.end method

.method public setRenderToHardwareTexture(Landroid/view/View;Z)V
    .locals 2
    .param p2, "useHWTexture"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "renderToHardwareTextureAndroid"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 273
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    sget v0, Lcom/facebook/react/R$id;->use_hardware_layer:I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 274
    return-void
.end method

.method public setResponderEnd(Landroid/view/View;Z)V
    .locals 0
    .param p2, "value"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "onResponderEnd"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 896
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    return-void
.end method

.method public setResponderGrant(Landroid/view/View;Z)V
    .locals 0
    .param p2, "value"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "onResponderGrant"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 881
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    return-void
.end method

.method public setResponderMove(Landroid/view/View;Z)V
    .locals 0
    .param p2, "value"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "onResponderMove"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 906
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    return-void
.end method

.method public setResponderReject(Landroid/view/View;Z)V
    .locals 0
    .param p2, "value"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "onResponderReject"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 886
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    return-void
.end method

.method public setResponderRelease(Landroid/view/View;Z)V
    .locals 0
    .param p2, "value"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "onResponderRelease"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 901
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    return-void
.end method

.method public setResponderStart(Landroid/view/View;Z)V
    .locals 0
    .param p2, "value"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "onResponderStart"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 891
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    return-void
.end method

.method public setResponderTerminate(Landroid/view/View;Z)V
    .locals 0
    .param p2, "value"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "onResponderTerminate"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 911
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    return-void
.end method

.method public setResponderTerminationRequest(Landroid/view/View;Z)V
    .locals 0
    .param p2, "value"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "onResponderTerminationRequest"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 916
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    return-void
.end method

.method public setRole(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .param p2, "role"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "role"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 475
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    if-nez p2, :cond_0

    .line 476
    sget v0, Lcom/facebook/react/R$id;->role:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 478
    :cond_0
    sget v0, Lcom/facebook/react/R$id;->role:I

    invoke-static {p2}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$Role;->fromValue(Ljava/lang/String;)Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$Role;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 480
    :goto_0
    return-void
.end method

.method public setRotation(Landroid/view/View;F)V
    .locals 0
    .param p2, "rotation"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "rotation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 486
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    .line 487
    return-void
.end method

.method public setScaleX(Landroid/view/View;F)V
    .locals 0
    .param p2, "scaleX"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 1.0f
        name = "scaleX"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 493
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 494
    return-void
.end method

.method public setScaleY(Landroid/view/View;F)V
    .locals 0
    .param p2, "scaleY"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 1.0f
        name = "scaleY"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 500
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 501
    return-void
.end method

.method public setShadowColor(Landroid/view/View;I)V
    .locals 2
    .param p2, "shadowColor"    # I
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        defaultInt = -0x1000000
        name = "shadowColor"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 253
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 254
    invoke-virtual {p1, p2}, Landroid/view/View;->setOutlineAmbientShadowColor(I)V

    .line 255
    invoke-virtual {p1, p2}, Landroid/view/View;->setOutlineSpotShadowColor(I)V

    .line 257
    :cond_0
    return-void
.end method

.method public setShouldBlockNativeResponder(Landroid/view/View;Z)V
    .locals 0
    .param p2, "value"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "onShouldBlockNativeResponder"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 921
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    return-void
.end method

.method public setStartShouldSetResponder(Landroid/view/View;Z)V
    .locals 0
    .param p2, "value"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "onStartShouldSetResponder"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 871
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    return-void
.end method

.method public setStartShouldSetResponderCapture(Landroid/view/View;Z)V
    .locals 0
    .param p2, "value"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "onStartShouldSetResponderCapture"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 876
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    return-void
.end method

.method public setTestId(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p2, "testId"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "testID"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 279
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    sget v0, Lcom/facebook/react/R$id;->react_test_id:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 282
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 283
    return-void
.end method

.method public setTouchCancel(Landroid/view/View;Z)V
    .locals 0
    .param p2, "value"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "onTouchCancel"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 941
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    return-void
.end method

.method public setTouchEnd(Landroid/view/View;Z)V
    .locals 0
    .param p2, "value"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "onTouchEnd"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 936
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    return-void
.end method

.method public setTouchMove(Landroid/view/View;Z)V
    .locals 0
    .param p2, "value"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "onTouchMove"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 931
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    return-void
.end method

.method public setTouchStart(Landroid/view/View;Z)V
    .locals 0
    .param p2, "value"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "onTouchStart"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 926
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    return-void
.end method

.method public setTransform(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 3
    .param p2, "matrix"    # Lcom/facebook/react/bridge/ReadableArray;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "transform"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/react/bridge/ReadableArray;",
            ")V"
        }
    .end annotation

    .line 220
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    sget v0, Lcom/facebook/react/R$id;->transform:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReadableArray;

    .line 221
    .local v0, "currentTransform":Lcom/facebook/react/bridge/ReadableArray;
    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    sget v1, Lcom/facebook/react/R$id;->transform:I

    invoke-virtual {p1, v1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 223
    sget v1, Lcom/facebook/react/R$id;->invalidate_transform:I

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 225
    :cond_0
    return-void
.end method

.method public setTransformOrigin(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 3
    .param p2, "transformOrigin"    # Lcom/facebook/react/bridge/ReadableArray;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "transformOrigin"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/react/bridge/ReadableArray;",
            ")V"
        }
    .end annotation

    .line 231
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    sget v0, Lcom/facebook/react/R$id;->transform_origin:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReadableArray;

    .line 232
    .local v0, "currentTransformOrigin":Lcom/facebook/react/bridge/ReadableArray;
    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    sget v1, Lcom/facebook/react/R$id;->transform_origin:I

    invoke-virtual {p1, v1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 234
    sget v1, Lcom/facebook/react/R$id;->invalidate_transform:I

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 236
    :cond_0
    return-void
.end method

.method protected setTransformProperty(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 11
    .param p2, "transforms"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p3, "transformOrigin"    # Lcom/facebook/react/bridge/ReadableArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/react/bridge/ReadableArray;",
            "Lcom/facebook/react/bridge/ReadableArray;",
            ")V"
        }
    .end annotation

    .line 563
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 564
    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 565
    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 566
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 567
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationX(F)V

    .line 568
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    .line 569
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 570
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 571
    invoke-virtual {p1, v0}, Landroid/view/View;->setCameraDistance(F)V

    .line 572
    return-void

    .line 575
    :cond_0
    invoke-static {p1}, Lcom/facebook/react/uimanager/common/ViewUtil;->getUIManagerType(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    move v10, v2

    goto :goto_0

    :cond_1
    move v10, v3

    .line 577
    .local v10, "allowPercentageResolution":Z
    :goto_0
    sget-object v1, Lcom/facebook/react/uimanager/BaseViewManager;->sMatrixDecompositionContext:Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    invoke-virtual {v1}, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->reset()V

    .line 578
    sget-object v6, Lcom/facebook/react/uimanager/BaseViewManager;->sTransformDecompositionArray:[D

    .line 581
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v7

    .line 582
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v8

    .line 578
    move-object v5, p2

    move-object v9, p3

    invoke-static/range {v5 .. v10}, Lcom/facebook/react/uimanager/TransformHelper;->processTransform(Lcom/facebook/react/bridge/ReadableArray;[DFFLcom/facebook/react/bridge/ReadableArray;Z)V

    .line 585
    sget-object v1, Lcom/facebook/react/uimanager/BaseViewManager;->sTransformDecompositionArray:[D

    sget-object v5, Lcom/facebook/react/uimanager/BaseViewManager;->sMatrixDecompositionContext:Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    invoke-static {v1, v5}, Lcom/facebook/react/uimanager/MatrixMathHelper;->decomposeMatrix([DLcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;)V

    .line 586
    sget-object v1, Lcom/facebook/react/uimanager/BaseViewManager;->sMatrixDecompositionContext:Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    iget-object v1, v1, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->translation:[D

    aget-wide v5, v1, v3

    double-to-float v1, v5

    .line 588
    invoke-static {v1}, Lcom/facebook/react/uimanager/BaseViewManager;->sanitizeFloatPropertyValue(F)F

    move-result v1

    .line 587
    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v1

    .line 586
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 589
    sget-object v1, Lcom/facebook/react/uimanager/BaseViewManager;->sMatrixDecompositionContext:Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    iget-object v1, v1, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->translation:[D

    aget-wide v5, v1, v2

    double-to-float v1, v5

    .line 591
    invoke-static {v1}, Lcom/facebook/react/uimanager/BaseViewManager;->sanitizeFloatPropertyValue(F)F

    move-result v1

    .line 590
    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v1

    .line 589
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 592
    sget-object v1, Lcom/facebook/react/uimanager/BaseViewManager;->sMatrixDecompositionContext:Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    iget-object v1, v1, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->rotationDegrees:[D

    aget-wide v5, v1, v4

    double-to-float v1, v5

    .line 593
    invoke-static {v1}, Lcom/facebook/react/uimanager/BaseViewManager;->sanitizeFloatPropertyValue(F)F

    move-result v1

    .line 592
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotation(F)V

    .line 594
    sget-object v1, Lcom/facebook/react/uimanager/BaseViewManager;->sMatrixDecompositionContext:Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    iget-object v1, v1, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->rotationDegrees:[D

    aget-wide v5, v1, v3

    double-to-float v1, v5

    .line 595
    invoke-static {v1}, Lcom/facebook/react/uimanager/BaseViewManager;->sanitizeFloatPropertyValue(F)F

    move-result v1

    .line 594
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationX(F)V

    .line 596
    sget-object v1, Lcom/facebook/react/uimanager/BaseViewManager;->sMatrixDecompositionContext:Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    iget-object v1, v1, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->rotationDegrees:[D

    aget-wide v5, v1, v2

    double-to-float v1, v5

    .line 597
    invoke-static {v1}, Lcom/facebook/react/uimanager/BaseViewManager;->sanitizeFloatPropertyValue(F)F

    move-result v1

    .line 596
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationY(F)V

    .line 598
    sget-object v1, Lcom/facebook/react/uimanager/BaseViewManager;->sMatrixDecompositionContext:Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    iget-object v1, v1, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->scale:[D

    aget-wide v5, v1, v3

    double-to-float v1, v5

    invoke-static {v1}, Lcom/facebook/react/uimanager/BaseViewManager;->sanitizeFloatPropertyValue(F)F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 599
    sget-object v1, Lcom/facebook/react/uimanager/BaseViewManager;->sMatrixDecompositionContext:Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    iget-object v1, v1, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->scale:[D

    aget-wide v2, v1, v2

    double-to-float v1, v2

    invoke-static {v1}, Lcom/facebook/react/uimanager/BaseViewManager;->sanitizeFloatPropertyValue(F)F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 601
    sget-object v1, Lcom/facebook/react/uimanager/BaseViewManager;->sMatrixDecompositionContext:Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    iget-object v1, v1, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->perspective:[D

    .line 603
    .local v1, "perspectiveArray":[D
    array-length v2, v1

    if-le v2, v4, :cond_3

    .line 604
    aget-wide v2, v1, v4

    double-to-float v2, v2

    .line 606
    .local v2, "invertedCameraDistance":F
    cmpl-float v0, v2, v0

    if-nez v0, :cond_2

    .line 608
    const v2, 0x3a4ccccd

    .line 610
    :cond_2
    const/high16 v0, -0x40800000    # -1.0f

    div-float/2addr v0, v2

    .line 611
    .local v0, "cameraDistance":F
    invoke-static {}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->getScreenDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 619
    .local v3, "scale":F
    mul-float v4, v3, v3

    mul-float/2addr v4, v0

    sget v5, Lcom/facebook/react/uimanager/BaseViewManager;->CAMERA_DISTANCE_NORMALIZATION_MULTIPLIER:F

    mul-float/2addr v4, v5

    .line 620
    invoke-static {v4}, Lcom/facebook/react/uimanager/BaseViewManager;->sanitizeFloatPropertyValue(F)F

    move-result v4

    .line 622
    .local v4, "normalizedCameraDistance":F
    invoke-virtual {p1, v4}, Landroid/view/View;->setCameraDistance(F)V

    .line 624
    .end local v0    # "cameraDistance":F
    .end local v2    # "invertedCameraDistance":F
    .end local v3    # "scale":F
    .end local v4    # "normalizedCameraDistance":F
    :cond_3
    return-void
.end method

.method public setTranslateX(Landroid/view/View;F)V
    .locals 1
    .param p2, "translateX"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 0.0f
        name = "translateX"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 507
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-static {p2}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 508
    return-void
.end method

.method public setTranslateY(Landroid/view/View;F)V
    .locals 1
    .param p2, "translateY"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 0.0f
        name = "translateY"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 514
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-static {p2}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 515
    return-void
.end method

.method public setViewState(Landroid/view/View;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 6
    .param p2, "accessibilityState"    # Lcom/facebook/react/bridge/ReadableMap;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "accessibilityState"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/react/bridge/ReadableMap;",
            ")V"
        }
    .end annotation

    .line 348
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    if-nez p2, :cond_0

    .line 349
    return-void

    .line 351
    :cond_0
    const-string v0, "expanded"

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 352
    sget v1, Lcom/facebook/react/R$id;->accessibility_state_expanded:I

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 354
    :cond_1
    const-string/jumbo v1, "selected"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 355
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v2

    .line 356
    .local v2, "prevSelected":Z
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 357
    .local v1, "nextSelected":Z
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 362
    invoke-virtual {p1}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    .line 363
    nop

    .line 364
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/facebook/react/R$string;->state_unselected_description:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 363
    invoke-virtual {p1, v3}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 366
    .end local v1    # "nextSelected":Z
    .end local v2    # "prevSelected":Z
    :cond_2
    goto :goto_0

    .line 367
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 369
    :goto_0
    sget v1, Lcom/facebook/react/R$id;->accessibility_state:I

    invoke-virtual {p1, v1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 370
    const-string v1, "disabled"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 371
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 378
    :cond_4
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v1

    .line 379
    .local v1, "i":Lcom/facebook/react/bridge/ReadableMapKeySetIterator;
    :goto_1
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 380
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v2

    .line 381
    .local v2, "state":Ljava/lang/String;
    const-string v4, "busy"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 382
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 383
    const-string v4, "checked"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 384
    invoke-interface {p2, v4}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v4

    sget-object v5, Lcom/facebook/react/bridge/ReadableType;->String:Lcom/facebook/react/bridge/ReadableType;

    if-ne v4, v5, :cond_5

    goto :goto_2

    .line 387
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 393
    invoke-virtual {p1, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 395
    .end local v2    # "state":Ljava/lang/String;
    :cond_6
    goto :goto_1

    .line 385
    .restart local v2    # "state":Ljava/lang/String;
    :cond_7
    :goto_2
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/BaseViewManager;->updateViewContentDescription(Landroid/view/View;)V

    .line 386
    nop

    .line 396
    .end local v2    # "state":Ljava/lang/String;
    :cond_8
    return-void
.end method

.method public setZIndex(Landroid/view/View;F)V
    .locals 3
    .param p2, "zIndex"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "zIndex"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .line 262
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 263
    .local v0, "integerZIndex":I
    invoke-static {p1, v0}, Lcom/facebook/react/uimanager/ViewGroupManager;->setViewZIndex(Landroid/view/View;I)V

    .line 264
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 265
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v2, v1, Lcom/facebook/react/uimanager/ReactZIndexedViewGroup;

    if-eqz v2, :cond_0

    .line 266
    move-object v2, v1

    check-cast v2, Lcom/facebook/react/uimanager/ReactZIndexedViewGroup;

    invoke-interface {v2}, Lcom/facebook/react/uimanager/ReactZIndexedViewGroup;->updateDrawingOrder()V

    .line 268
    :cond_0
    return-void
.end method
