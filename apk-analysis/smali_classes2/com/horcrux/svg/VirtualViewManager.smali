.class Lcom/horcrux/svg/VirtualViewManager;
.super Lcom/facebook/react/uimanager/ViewGroupManager;
.source "RenderableViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/horcrux/svg/VirtualViewManager$SVGClass;,
        Lcom/horcrux/svg/VirtualViewManager$RenderableShadowNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lcom/horcrux/svg/VirtualView;",
        ">",
        "Lcom/facebook/react/uimanager/ViewGroupManager<",
        "Lcom/horcrux/svg/VirtualView;",
        ">;"
    }
.end annotation


# static fields
.field private static final CAMERA_DISTANCE_NORMALIZATION_MULTIPLIER:F = 5.0f

.field private static final PERSPECTIVE_ARRAY_INVERTED_CAMERA_DISTANCE_INDEX:I = 0x2

.field private static final mTagToRenderableView:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/horcrux/svg/RenderableView;",
            ">;"
        }
    .end annotation
.end field

.field private static final mTagToRunnable:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMatrixDecompositionContext:Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

.field private static final sTransformDecompositionArray:[D


# instance fields
.field protected final mClassName:Ljava/lang/String;

.field protected mDelegate:Lcom/facebook/react/uimanager/ViewManagerDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/react/uimanager/ViewManagerDelegate<",
            "TV;>;"
        }
    .end annotation
.end field

.field protected final svgClass:Lcom/horcrux/svg/VirtualViewManager$SVGClass;


# direct methods
.method static bridge synthetic -$$Nest$minvalidateSvgView(Lcom/horcrux/svg/VirtualViewManager;Lcom/horcrux/svg/VirtualView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/horcrux/svg/VirtualViewManager;->invalidateSvgView(Lcom/horcrux/svg/VirtualView;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 246
    new-instance v0, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;-><init>()V

    sput-object v0, Lcom/horcrux/svg/VirtualViewManager;->sMatrixDecompositionContext:Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    .line 248
    const/16 v0, 0x10

    new-array v0, v0, [D

    sput-object v0, Lcom/horcrux/svg/VirtualViewManager;->sTransformDecompositionArray:[D

    .line 559
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/horcrux/svg/VirtualViewManager;->mTagToRenderableView:Landroid/util/SparseArray;

    .line 560
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/horcrux/svg/VirtualViewManager;->mTagToRunnable:Landroid/util/SparseArray;

    return-void
.end method

.method protected constructor <init>(Lcom/horcrux/svg/VirtualViewManager$SVGClass;)V
    .locals 1
    .param p1, "svgclass"    # Lcom/horcrux/svg/VirtualViewManager$SVGClass;

    .line 157
    .local p0, "this":Lcom/horcrux/svg/VirtualViewManager;, "Lcom/horcrux/svg/VirtualViewManager<TV;>;"
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ViewGroupManager;-><init>()V

    .line 158
    iput-object p1, p0, Lcom/horcrux/svg/VirtualViewManager;->svgClass:Lcom/horcrux/svg/VirtualViewManager$SVGClass;

    .line 159
    invoke-virtual {p1}, Lcom/horcrux/svg/VirtualViewManager$SVGClass;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/VirtualViewManager;->mClassName:Ljava/lang/String;

    .line 160
    return-void
.end method

.method static getRenderableViewByTag(I)Lcom/horcrux/svg/RenderableView;
    .locals 1
    .param p0, "tag"    # I
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 576
    sget-object v0, Lcom/horcrux/svg/VirtualViewManager;->mTagToRenderableView:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/horcrux/svg/RenderableView;

    return-object v0
.end method

.method private invalidateSvgView(Lcom/horcrux/svg/VirtualView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 420
    .local p0, "this":Lcom/horcrux/svg/VirtualViewManager;, "Lcom/horcrux/svg/VirtualViewManager<TV;>;"
    .local p1, "node":Lcom/horcrux/svg/VirtualView;, "TV;"
    invoke-virtual {p1}, Lcom/horcrux/svg/VirtualView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v0

    .line 421
    .local v0, "view":Lcom/horcrux/svg/SvgView;
    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {v0}, Lcom/horcrux/svg/SvgView;->invalidate()V

    .line 424
    :cond_0
    instance-of v1, p1, Lcom/horcrux/svg/TextView;

    if-eqz v1, :cond_1

    .line 425
    move-object v1, p1

    check-cast v1, Lcom/horcrux/svg/TextView;

    invoke-virtual {v1}, Lcom/horcrux/svg/TextView;->getTextContainer()Lcom/horcrux/svg/TextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/horcrux/svg/TextView;->clearChildCache()V

    .line 427
    :cond_1
    return-void
.end method

.method static runWhenViewIsAvailable(ILjava/lang/Runnable;)V
    .locals 1
    .param p0, "tag"    # I
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 572
    sget-object v0, Lcom/horcrux/svg/VirtualViewManager;->mTagToRunnable:Landroid/util/SparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 573
    return-void
.end method

.method private static sanitizeFloatPropertyValue(F)F
    .locals 3
    .param p0, "value"    # F

    .line 254
    const v0, -0x800001

    cmpl-float v1, p0, v0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    if-ltz v1, :cond_0

    cmpg-float v1, p0, v2

    if-gtz v1, :cond_0

    .line 255
    return p0

    .line 257
    :cond_0
    cmpg-float v1, p0, v0

    if-ltz v1, :cond_5

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v1, p0, v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 260
    :cond_1
    cmpl-float v0, p0, v2

    if-gtz v0, :cond_4

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v0, p0, v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 263
    :cond_2
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 264
    const/4 v0, 0x0

    return v0

    .line 267
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

    .line 261
    :cond_4
    :goto_0
    return v2

    .line 258
    :cond_5
    :goto_1
    return v0
.end method

.method static setRenderableView(ILcom/horcrux/svg/RenderableView;)V
    .locals 2
    .param p0, "tag"    # I
    .param p1, "svg"    # Lcom/horcrux/svg/RenderableView;

    .line 563
    sget-object v0, Lcom/horcrux/svg/VirtualViewManager;->mTagToRenderableView:Landroid/util/SparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 564
    sget-object v0, Lcom/horcrux/svg/VirtualViewManager;->mTagToRunnable:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 565
    .local v0, "task":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 566
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 567
    sget-object v1, Lcom/horcrux/svg/VirtualViewManager;->mTagToRunnable:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->delete(I)V

    .line 569
    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/facebook/react/uimanager/ThemedReactContext;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 152
    .local p0, "this":Lcom/horcrux/svg/VirtualViewManager;, "Lcom/horcrux/svg/VirtualViewManager<TV;>;"
    check-cast p2, Lcom/horcrux/svg/VirtualView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/VirtualViewManager;->addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/horcrux/svg/VirtualView;)V

    return-void
.end method

.method protected addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/horcrux/svg/VirtualView;)V
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "view"    # Lcom/horcrux/svg/VirtualView;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 432
    .local p0, "this":Lcom/horcrux/svg/VirtualViewManager;, "Lcom/horcrux/svg/VirtualViewManager<TV;>;"
    invoke-super {p0, p1, p2}, Lcom/facebook/react/uimanager/ViewGroupManager;->addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;)V

    .line 433
    new-instance v0, Lcom/horcrux/svg/VirtualViewManager$1;

    invoke-direct {v0, p0}, Lcom/horcrux/svg/VirtualViewManager$1;-><init>(Lcom/horcrux/svg/VirtualViewManager;)V

    invoke-virtual {p2, v0}, Lcom/horcrux/svg/VirtualView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 449
    return-void
.end method

.method public createShadowNodeInstance()Lcom/facebook/react/uimanager/LayoutShadowNode;
    .locals 1

    .line 238
    .local p0, "this":Lcom/horcrux/svg/VirtualViewManager;, "Lcom/horcrux/svg/VirtualViewManager<TV;>;"
    new-instance v0, Lcom/horcrux/svg/VirtualViewManager$RenderableShadowNode;

    invoke-direct {v0}, Lcom/horcrux/svg/VirtualViewManager$RenderableShadowNode;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createShadowNodeInstance()Lcom/facebook/react/uimanager/ReactShadowNode;
    .locals 1

    .line 152
    .local p0, "this":Lcom/horcrux/svg/VirtualViewManager;, "Lcom/horcrux/svg/VirtualViewManager<TV;>;"
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualViewManager;->createShadowNodeInstance()Lcom/facebook/react/uimanager/LayoutShadowNode;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0
    .param p1    # Lcom/facebook/react/uimanager/ThemedReactContext;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 152
    .local p0, "this":Lcom/horcrux/svg/VirtualViewManager;, "Lcom/horcrux/svg/VirtualViewManager<TV;>;"
    invoke-virtual {p0, p1}, Lcom/horcrux/svg/VirtualViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/horcrux/svg/VirtualView;

    move-result-object p1

    return-object p1
.end method

.method protected createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/horcrux/svg/VirtualView;
    .locals 3
    .param p1, "reactContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 497
    .local p0, "this":Lcom/horcrux/svg/VirtualViewManager;, "Lcom/horcrux/svg/VirtualViewManager<TV;>;"
    sget-object v0, Lcom/horcrux/svg/VirtualViewManager$2;->$SwitchMap$com$horcrux$svg$VirtualViewManager$SVGClass:[I

    iget-object v1, p0, Lcom/horcrux/svg/VirtualViewManager;->svgClass:Lcom/horcrux/svg/VirtualViewManager$SVGClass;

    invoke-virtual {v1}, Lcom/horcrux/svg/VirtualViewManager$SVGClass;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 555
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/horcrux/svg/VirtualViewManager;->svgClass:Lcom/horcrux/svg/VirtualViewManager$SVGClass;

    invoke-virtual {v2}, Lcom/horcrux/svg/VirtualViewManager$SVGClass;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 553
    :pswitch_0
    new-instance v0, Lcom/horcrux/svg/ForeignObjectView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/ForeignObjectView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 551
    :pswitch_1
    new-instance v0, Lcom/horcrux/svg/MarkerView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/MarkerView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 549
    :pswitch_2
    new-instance v0, Lcom/horcrux/svg/FeOffsetView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/FeOffsetView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 547
    :pswitch_3
    new-instance v0, Lcom/horcrux/svg/FeMergeView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/FeMergeView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 545
    :pswitch_4
    new-instance v0, Lcom/horcrux/svg/FeGaussianBlurView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/FeGaussianBlurView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 543
    :pswitch_5
    new-instance v0, Lcom/horcrux/svg/FeFloodView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/FeFloodView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 541
    :pswitch_6
    new-instance v0, Lcom/horcrux/svg/FeCompositeView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/FeCompositeView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 539
    :pswitch_7
    new-instance v0, Lcom/horcrux/svg/FeColorMatrixView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/FeColorMatrixView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 537
    :pswitch_8
    new-instance v0, Lcom/horcrux/svg/FeBlendView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/FeBlendView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 535
    :pswitch_9
    new-instance v0, Lcom/horcrux/svg/FilterView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/FilterView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 533
    :pswitch_a
    new-instance v0, Lcom/horcrux/svg/MaskView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/MaskView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 531
    :pswitch_b
    new-instance v0, Lcom/horcrux/svg/PatternView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/PatternView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 529
    :pswitch_c
    new-instance v0, Lcom/horcrux/svg/RadialGradientView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/RadialGradientView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 527
    :pswitch_d
    new-instance v0, Lcom/horcrux/svg/LinearGradientView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/LinearGradientView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 525
    :pswitch_e
    new-instance v0, Lcom/horcrux/svg/SymbolView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/SymbolView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 523
    :pswitch_f
    new-instance v0, Lcom/horcrux/svg/UseView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/UseView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 521
    :pswitch_10
    new-instance v0, Lcom/horcrux/svg/DefsView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/DefsView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 519
    :pswitch_11
    new-instance v0, Lcom/horcrux/svg/ClipPathView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/ClipPathView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 517
    :pswitch_12
    new-instance v0, Lcom/horcrux/svg/ImageView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/ImageView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 515
    :pswitch_13
    new-instance v0, Lcom/horcrux/svg/TextPathView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/TextPathView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 513
    :pswitch_14
    new-instance v0, Lcom/horcrux/svg/TSpanView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/TSpanView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 511
    :pswitch_15
    new-instance v0, Lcom/horcrux/svg/TextView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/TextView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 509
    :pswitch_16
    new-instance v0, Lcom/horcrux/svg/RectView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/RectView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 507
    :pswitch_17
    new-instance v0, Lcom/horcrux/svg/LineView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/LineView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 505
    :pswitch_18
    new-instance v0, Lcom/horcrux/svg/EllipseView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/EllipseView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 503
    :pswitch_19
    new-instance v0, Lcom/horcrux/svg/CircleView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/CircleView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 501
    :pswitch_1a
    new-instance v0, Lcom/horcrux/svg/PathView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/PathView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 499
    :pswitch_1b
    new-instance v0, Lcom/horcrux/svg/GroupView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/GroupView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getDelegate()Lcom/facebook/react/uimanager/ViewManagerDelegate;
    .locals 1

    .line 165
    .local p0, "this":Lcom/horcrux/svg/VirtualViewManager;, "Lcom/horcrux/svg/VirtualViewManager<TV;>;"
    iget-object v0, p0, Lcom/horcrux/svg/VirtualViewManager;->mDelegate:Lcom/facebook/react/uimanager/ViewManagerDelegate;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 328
    .local p0, "this":Lcom/horcrux/svg/VirtualViewManager;, "Lcom/horcrux/svg/VirtualViewManager<TV;>;"
    iget-object v0, p0, Lcom/horcrux/svg/VirtualViewManager;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getShadowNodeClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/react/uimanager/LayoutShadowNode;",
            ">;"
        }
    .end annotation

    .line 243
    .local p0, "this":Lcom/horcrux/svg/VirtualViewManager;, "Lcom/horcrux/svg/VirtualViewManager<TV;>;"
    const-class v0, Lcom/horcrux/svg/VirtualViewManager$RenderableShadowNode;

    return-object v0
.end method

.method protected bridge synthetic onAfterUpdateTransaction(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 152
    .local p0, "this":Lcom/horcrux/svg/VirtualViewManager;, "Lcom/horcrux/svg/VirtualViewManager<TV;>;"
    check-cast p1, Lcom/horcrux/svg/VirtualView;

    invoke-virtual {p0, p1}, Lcom/horcrux/svg/VirtualViewManager;->onAfterUpdateTransaction(Lcom/horcrux/svg/VirtualView;)V

    return-void
.end method

.method protected onAfterUpdateTransaction(Lcom/horcrux/svg/VirtualView;)V
    .locals 0
    .param p1, "node"    # Lcom/horcrux/svg/VirtualView;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 459
    .local p0, "this":Lcom/horcrux/svg/VirtualViewManager;, "Lcom/horcrux/svg/VirtualViewManager<TV;>;"
    invoke-super {p0, p1}, Lcom/facebook/react/uimanager/ViewGroupManager;->onAfterUpdateTransaction(Landroid/view/View;)V

    .line 460
    invoke-direct {p0, p1}, Lcom/horcrux/svg/VirtualViewManager;->invalidateSvgView(Lcom/horcrux/svg/VirtualView;)V

    .line 461
    return-void
.end method

.method public bridge synthetic onDropViewInstance(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 152
    .local p0, "this":Lcom/horcrux/svg/VirtualViewManager;, "Lcom/horcrux/svg/VirtualViewManager<TV;>;"
    check-cast p1, Lcom/horcrux/svg/VirtualView;

    invoke-virtual {p0, p1}, Lcom/horcrux/svg/VirtualViewManager;->onDropViewInstance(Lcom/horcrux/svg/VirtualView;)V

    return-void
.end method

.method public onDropViewInstance(Lcom/horcrux/svg/VirtualView;)V
    .locals 2
    .param p1, "view"    # Lcom/horcrux/svg/VirtualView;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 581
    .local p0, "this":Lcom/horcrux/svg/VirtualViewManager;, "Lcom/horcrux/svg/VirtualViewManager<TV;>;"
    invoke-super {p0, p1}, Lcom/facebook/react/uimanager/ViewGroupManager;->onDropViewInstance(Landroid/view/View;)V

    .line 582
    sget-object v0, Lcom/horcrux/svg/VirtualViewManager;->mTagToRenderableView:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/horcrux/svg/VirtualView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 583
    return-void
.end method

.method public setClipPath(Lcom/horcrux/svg/VirtualView;Ljava/lang/String;)V
    .locals 0
    .param p2, "clipPath"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "clipPath"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 353
    .local p0, "this":Lcom/horcrux/svg/VirtualViewManager;, "Lcom/horcrux/svg/VirtualViewManager<TV;>;"
    .local p1, "node":Lcom/horcrux/svg/VirtualView;, "TV;"
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setClipPath(Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method public setClipRule(Lcom/horcrux/svg/VirtualView;I)V
    .locals 0
    .param p2, "clipRule"    # I
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "clipRule"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation

    .line 358
    .local p0, "this":Lcom/horcrux/svg/VirtualViewManager;, "Lcom/horcrux/svg/VirtualViewManager<TV;>;"
    .local p1, "node":Lcom/horcrux/svg/VirtualView;, "TV;"
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setClipRule(I)V

    .line 359
    return-void
.end method

.method public setDisplay(Lcom/horcrux/svg/VirtualView;Ljava/lang/String;)V
    .locals 0
    .param p2, "display"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "display"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 389
    .local p0, "this":Lcom/horcrux/svg/VirtualViewManager;, "Lcom/horcrux/svg/VirtualViewManager<TV;>;"
    .local p1, "node":Lcom/horcrux/svg/VirtualView;, "TV;"
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setDisplay(Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method public setMarkerEnd(Lcom/horcrux/svg/VirtualView;Ljava/lang/String;)V
    .locals 0
    .param p2, "markerEnd"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "markerEnd"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 348
    .local p0, "this":Lcom/horcrux/svg/VirtualViewManager;, "Lcom/horcrux/svg/VirtualViewManager<TV;>;"
    .local p1, "node":Lcom/horcrux/svg/VirtualView;, "TV;"
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setMarkerEnd(Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method public setMarkerMid(Lcom/horcrux/svg/VirtualView;Ljava/lang/String;)V
    .locals 0
    .param p2, "markerMid"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "markerMid"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 343
    .local p0, "this":Lcom/horcrux/svg/VirtualViewManager;, "Lcom/horcrux/svg/VirtualViewManager<TV;>;"
    .local p1, "node":Lcom/horcrux/svg/VirtualView;, "TV;"
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setMarkerMid(Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method public setMarkerStart(Lcom/horcrux/svg/VirtualView;Ljava/lang/String;)V
    .locals 0
    .param p2, "markerStart"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "markerStart"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 338
    .local p0, "this":Lcom/horcrux/svg/VirtualViewManager;, "Lcom/horcrux/svg/VirtualViewManager<TV;>;"
    .local p1, "node":Lcom/horcrux/svg/VirtualView;, "TV;"
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setMarkerStart(Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method public setMask(Lcom/horcrux/svg/VirtualView;Ljava/lang/String;)V
    .locals 0
    .param p2, "mask"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "mask"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 333
    .local p0, "this":Lcom/horcrux/svg/VirtualViewManager;, "Lcom/horcrux/svg/VirtualViewManager<TV;>;"
    .local p1, "node":Lcom/horcrux/svg/VirtualView;, "TV;"
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setMask(Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method public setMatrix(Lcom/horcrux/svg/VirtualView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .param p2, "matrixArray"    # Lcom/facebook/react/bridge/Dynamic;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "matrix"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lcom/facebook/react/bridge/Dynamic;",
            ")V"
        }
    .end annotation

    .line 394
    .local p0, "this":Lcom/horcrux/svg/VirtualViewManager;, "Lcom/horcrux/svg/VirtualViewManager<TV;>;"
    .local p1, "node":Lcom/horcrux/svg/VirtualView;, "TV;"
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setMatrix(Lcom/facebook/react/bridge/Dynamic;)V

    .line 395
    return-void
.end method

.method public setMatrix(Lcom/horcrux/svg/VirtualView;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p2, "value"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lcom/facebook/react/bridge/ReadableArray;",
            ")V"
        }
    .end annotation

    .line 398
    .local p0, "this":Lcom/horcrux/svg/VirtualViewManager;, "Lcom/horcrux/svg/VirtualViewManager<TV;>;"
    .local p1, "view":Lcom/horcrux/svg/VirtualView;, "TV;"
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setMatrix(Lcom/facebook/react/bridge/ReadableArray;)V

    .line 399
    return-void
.end method

.method public setName(Lcom/horcrux/svg/VirtualView;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "name"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 384
    .local p0, "this":Lcom/horcrux/svg/VirtualViewManager;, "Lcom/horcrux/svg/VirtualViewManager<TV;>;"
    .local p1, "node":Lcom/horcrux/svg/VirtualView;, "TV;"
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setName(Ljava/lang/String;)V

    .line 385
    return-void
.end method

.method public setOpacity(Lcom/horcrux/svg/VirtualView;F)V
    .locals 0
    .param p1    # Lcom/horcrux/svg/VirtualView;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "opacity"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 1.0f
        name = "opacity"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;F)V"
        }
    .end annotation

    .line 363
    .local p0, "this":Lcom/horcrux/svg/VirtualViewManager;, "Lcom/horcrux/svg/VirtualViewManager<TV;>;"
    .local p1, "node":Lcom/horcrux/svg/VirtualView;, "TV;"
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setOpacity(F)V

    .line 364
    return-void
.end method

.method public setPointerEvents(Lcom/horcrux/svg/VirtualView;Ljava/lang/String;)V
    .locals 3
    .param p2, "pointerEventsStr"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "pointerEvents"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 373
    .local p0, "this":Lcom/horcrux/svg/VirtualViewManager;, "Lcom/horcrux/svg/VirtualViewManager<TV;>;"
    .local p1, "view":Lcom/horcrux/svg/VirtualView;, "TV;"
    if-nez p2, :cond_0

    .line 374
    sget-object v0, Lcom/facebook/react/uimanager/PointerEvents;->AUTO:Lcom/facebook/react/uimanager/PointerEvents;

    invoke-virtual {p1, v0}, Lcom/horcrux/svg/VirtualView;->setPointerEvents(Lcom/facebook/react/uimanager/PointerEvents;)V

    goto :goto_0

    .line 376
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 377
    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/react/uimanager/PointerEvents;->valueOf(Ljava/lang/String;)Lcom/facebook/react/uimanager/PointerEvents;

    move-result-object v0

    .line 378
    .local v0, "pointerEvents":Lcom/facebook/react/uimanager/PointerEvents;
    invoke-virtual {p1, v0}, Lcom/horcrux/svg/VirtualView;->setPointerEvents(Lcom/facebook/react/uimanager/PointerEvents;)V

    .line 380
    .end local v0    # "pointerEvents":Lcom/facebook/react/uimanager/PointerEvents;
    :goto_0
    return-void
.end method

.method public setResponsible(Lcom/horcrux/svg/VirtualView;Z)V
    .locals 0
    .param p2, "responsible"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "responsible"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)V"
        }
    .end annotation

    .line 368
    .local p0, "this":Lcom/horcrux/svg/VirtualViewManager;, "Lcom/horcrux/svg/VirtualViewManager<TV;>;"
    .local p1, "node":Lcom/horcrux/svg/VirtualView;, "TV;"
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setResponsible(Z)V

    .line 369
    return-void
.end method

.method public bridge synthetic setTransform(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p2    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 152
    .local p0, "this":Lcom/horcrux/svg/VirtualViewManager;, "Lcom/horcrux/svg/VirtualViewManager<TV;>;"
    check-cast p1, Lcom/horcrux/svg/VirtualView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/VirtualViewManager;->setTransform(Lcom/horcrux/svg/VirtualView;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public setTransform(Lcom/horcrux/svg/VirtualView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 2
    .param p2, "matrix"    # Lcom/facebook/react/bridge/Dynamic;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "transform"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lcom/facebook/react/bridge/Dynamic;",
            ")V"
        }
    .end annotation

    .line 412
    .local p0, "this":Lcom/horcrux/svg/VirtualViewManager;, "Lcom/horcrux/svg/VirtualViewManager<TV;>;"
    .local p1, "node":Lcom/horcrux/svg/VirtualView;, "TV;"
    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v0

    sget-object v1, Lcom/facebook/react/bridge/ReadableType;->Array:Lcom/facebook/react/bridge/ReadableType;

    if-eq v0, v1, :cond_0

    .line 413
    return-void

    .line 415
    :cond_0
    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->asArray()Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    .line 416
    .local v0, "ma":Lcom/facebook/react/bridge/ReadableArray;
    invoke-virtual {p0, p1, v0}, Lcom/horcrux/svg/VirtualViewManager;->setTransform(Lcom/horcrux/svg/VirtualView;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 417
    return-void
.end method

.method public setTransform(Lcom/horcrux/svg/VirtualView;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 2
    .param p1, "node"    # Lcom/horcrux/svg/VirtualView;
    .param p2, "matrix"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 403
    .local p0, "this":Lcom/horcrux/svg/VirtualViewManager;, "Lcom/horcrux/svg/VirtualViewManager<TV;>;"
    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/VirtualViewManager;->setTransformProperty(Lcom/horcrux/svg/VirtualView;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 405
    invoke-virtual {p1}, Lcom/horcrux/svg/VirtualView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 406
    .local v0, "m":Landroid/graphics/Matrix;
    iput-object v0, p1, Lcom/horcrux/svg/VirtualView;->mMatrix:Landroid/graphics/Matrix;

    .line 407
    iget-object v1, p1, Lcom/horcrux/svg/VirtualView;->mInvMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v1

    iput-boolean v1, p1, Lcom/horcrux/svg/VirtualView;->mInvertible:Z

    .line 408
    return-void
.end method

.method protected setTransformProperty(Lcom/horcrux/svg/VirtualView;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 8
    .param p1, "view"    # Lcom/horcrux/svg/VirtualView;
    .param p2, "transforms"    # Lcom/facebook/react/bridge/ReadableArray;

    .line 271
    .local p0, "this":Lcom/horcrux/svg/VirtualViewManager;, "Lcom/horcrux/svg/VirtualViewManager<TV;>;"
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 272
    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/horcrux/svg/VirtualView;->setTranslationX(F)V

    .line 273
    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/horcrux/svg/VirtualView;->setTranslationY(F)V

    .line 274
    invoke-virtual {p1, v0}, Lcom/horcrux/svg/VirtualView;->setRotation(F)V

    .line 275
    invoke-virtual {p1, v0}, Lcom/horcrux/svg/VirtualView;->setRotationX(F)V

    .line 276
    invoke-virtual {p1, v0}, Lcom/horcrux/svg/VirtualView;->setRotationY(F)V

    .line 277
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Lcom/horcrux/svg/VirtualView;->setScaleX(F)V

    .line 278
    invoke-virtual {p1, v1}, Lcom/horcrux/svg/VirtualView;->setScaleY(F)V

    .line 279
    invoke-virtual {p1, v0}, Lcom/horcrux/svg/VirtualView;->setCameraDistance(F)V

    .line 280
    return-void

    .line 283
    :cond_0
    sget-object v1, Lcom/horcrux/svg/VirtualViewManager;->sMatrixDecompositionContext:Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    invoke-virtual {v1}, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->reset()V

    .line 284
    sget-object v3, Lcom/horcrux/svg/VirtualViewManager;->sTransformDecompositionArray:[D

    .line 285
    invoke-virtual {p1}, Lcom/horcrux/svg/VirtualView;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {p1}, Lcom/horcrux/svg/VirtualView;->getHeight()I

    move-result v1

    int-to-float v5, v1

    .line 284
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p2

    invoke-static/range {v2 .. v7}, Lcom/facebook/react/uimanager/TransformHelper;->processTransform(Lcom/facebook/react/bridge/ReadableArray;[DFFLcom/facebook/react/bridge/ReadableArray;Z)V

    .line 286
    sget-object v1, Lcom/horcrux/svg/VirtualViewManager;->sTransformDecompositionArray:[D

    sget-object v2, Lcom/horcrux/svg/VirtualViewManager;->sMatrixDecompositionContext:Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    invoke-static {v1, v2}, Lcom/facebook/react/uimanager/MatrixMathHelper;->decomposeMatrix([DLcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;)V

    .line 287
    sget-object v1, Lcom/horcrux/svg/VirtualViewManager;->sMatrixDecompositionContext:Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    iget-object v1, v1, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->translation:[D

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    double-to-float v1, v3

    .line 289
    invoke-static {v1}, Lcom/horcrux/svg/VirtualViewManager;->sanitizeFloatPropertyValue(F)F

    move-result v1

    .line 288
    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v1

    .line 287
    invoke-virtual {p1, v1}, Lcom/horcrux/svg/VirtualView;->setTranslationX(F)V

    .line 290
    sget-object v1, Lcom/horcrux/svg/VirtualViewManager;->sMatrixDecompositionContext:Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    iget-object v1, v1, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->translation:[D

    const/4 v3, 0x1

    aget-wide v4, v1, v3

    double-to-float v1, v4

    .line 292
    invoke-static {v1}, Lcom/horcrux/svg/VirtualViewManager;->sanitizeFloatPropertyValue(F)F

    move-result v1

    .line 291
    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v1

    .line 290
    invoke-virtual {p1, v1}, Lcom/horcrux/svg/VirtualView;->setTranslationY(F)V

    .line 293
    sget-object v1, Lcom/horcrux/svg/VirtualViewManager;->sMatrixDecompositionContext:Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    iget-object v1, v1, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->rotationDegrees:[D

    const/4 v4, 0x2

    aget-wide v5, v1, v4

    double-to-float v1, v5

    .line 294
    invoke-static {v1}, Lcom/horcrux/svg/VirtualViewManager;->sanitizeFloatPropertyValue(F)F

    move-result v1

    .line 293
    invoke-virtual {p1, v1}, Lcom/horcrux/svg/VirtualView;->setRotation(F)V

    .line 295
    sget-object v1, Lcom/horcrux/svg/VirtualViewManager;->sMatrixDecompositionContext:Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    iget-object v1, v1, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->rotationDegrees:[D

    aget-wide v5, v1, v2

    double-to-float v1, v5

    .line 296
    invoke-static {v1}, Lcom/horcrux/svg/VirtualViewManager;->sanitizeFloatPropertyValue(F)F

    move-result v1

    .line 295
    invoke-virtual {p1, v1}, Lcom/horcrux/svg/VirtualView;->setRotationX(F)V

    .line 297
    sget-object v1, Lcom/horcrux/svg/VirtualViewManager;->sMatrixDecompositionContext:Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    iget-object v1, v1, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->rotationDegrees:[D

    aget-wide v5, v1, v3

    double-to-float v1, v5

    .line 298
    invoke-static {v1}, Lcom/horcrux/svg/VirtualViewManager;->sanitizeFloatPropertyValue(F)F

    move-result v1

    .line 297
    invoke-virtual {p1, v1}, Lcom/horcrux/svg/VirtualView;->setRotationY(F)V

    .line 299
    sget-object v1, Lcom/horcrux/svg/VirtualViewManager;->sMatrixDecompositionContext:Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    iget-object v1, v1, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->scale:[D

    aget-wide v5, v1, v2

    double-to-float v1, v5

    invoke-static {v1}, Lcom/horcrux/svg/VirtualViewManager;->sanitizeFloatPropertyValue(F)F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/horcrux/svg/VirtualView;->setScaleX(F)V

    .line 300
    sget-object v1, Lcom/horcrux/svg/VirtualViewManager;->sMatrixDecompositionContext:Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    iget-object v1, v1, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->scale:[D

    aget-wide v2, v1, v3

    double-to-float v1, v2

    invoke-static {v1}, Lcom/horcrux/svg/VirtualViewManager;->sanitizeFloatPropertyValue(F)F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/horcrux/svg/VirtualView;->setScaleY(F)V

    .line 302
    sget-object v1, Lcom/horcrux/svg/VirtualViewManager;->sMatrixDecompositionContext:Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    iget-object v1, v1, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->perspective:[D

    .line 304
    .local v1, "perspectiveArray":[D
    array-length v2, v1

    if-le v2, v4, :cond_2

    .line 305
    aget-wide v2, v1, v4

    double-to-float v2, v2

    .line 307
    .local v2, "invertedCameraDistance":F
    cmpl-float v0, v2, v0

    if-nez v0, :cond_1

    .line 309
    const v2, 0x3a4ccccd

    .line 311
    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    div-float/2addr v0, v2

    .line 312
    .local v0, "cameraDistance":F
    invoke-static {}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->getScreenDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 320
    .local v3, "scale":F
    mul-float v4, v3, v3

    mul-float/2addr v4, v0

    const/high16 v5, 0x40a00000    # 5.0f

    mul-float/2addr v4, v5

    .line 322
    .local v4, "normalizedCameraDistance":F
    invoke-virtual {p1, v4}, Lcom/horcrux/svg/VirtualView;->setCameraDistance(F)V

    .line 324
    .end local v0    # "cameraDistance":F
    .end local v2    # "invertedCameraDistance":F
    .end local v3    # "scale":F
    .end local v4    # "normalizedCameraDistance":F
    :cond_2
    return-void
.end method
