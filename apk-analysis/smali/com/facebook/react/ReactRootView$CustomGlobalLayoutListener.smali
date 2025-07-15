.class Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;
.super Ljava/lang/Object;
.source "ReactRootView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/ReactRootView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomGlobalLayoutListener"
.end annotation


# instance fields
.field private mDeviceRotation:I

.field private mKeyboardHeight:I

.field private mKeyboardIsVisible:Z

.field private final mMinKeyboardHeightDetected:I

.field private final mVisibleViewArea:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/facebook/react/ReactRootView;


# direct methods
.method static bridge synthetic -$$Nest$mcheckForKeyboardEvents(Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->checkForKeyboardEvents()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckForKeyboardEventsLegacy(Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->checkForKeyboardEventsLegacy()V

    return-void
.end method

.method constructor <init>(Lcom/facebook/react/ReactRootView;)V
    .locals 1

    .line 839
    iput-object p1, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->this$0:Lcom/facebook/react/ReactRootView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 835
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->mKeyboardIsVisible:Z

    .line 836
    iput v0, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->mKeyboardHeight:I

    .line 837
    iput v0, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->mDeviceRotation:I

    .line 840
    invoke-virtual {p1}, Lcom/facebook/react/ReactRootView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->initDisplayMetricsIfNotInitialized(Landroid/content/Context;)V

    .line 841
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->mVisibleViewArea:Landroid/graphics/Rect;

    .line 842
    const/high16 p1, 0x42700000    # 60.0f

    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->mMinKeyboardHeightDetected:I

    .line 843
    return-void
.end method

.method private checkForDeviceDimensionsChanges()V
    .locals 0

    .line 969
    invoke-direct {p0}, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->emitUpdateDimensionsEvent()V

    .line 970
    return-void
.end method

.method private checkForDeviceOrientationChanges()V
    .locals 2

    .line 955
    iget-object v0, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->this$0:Lcom/facebook/react/ReactRootView;

    .line 956
    invoke-virtual {v0}, Lcom/facebook/react/ReactRootView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 957
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 958
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 959
    .local v0, "rotation":I
    iget v1, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->mDeviceRotation:I

    if-ne v1, v0, :cond_0

    .line 960
    return-void

    .line 962
    :cond_0
    iput v0, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->mDeviceRotation:I

    .line 963
    iget-object v1, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->this$0:Lcom/facebook/react/ReactRootView;

    invoke-virtual {v1}, Lcom/facebook/react/ReactRootView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->initDisplayMetrics(Landroid/content/Context;)V

    .line 964
    invoke-direct {p0, v0}, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->emitOrientationChanged(I)V

    .line 965
    return-void
.end method

.method private checkForKeyboardEvents()V
    .locals 20

    .line 863
    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->this$0:Lcom/facebook/react/ReactRootView;

    invoke-virtual {v0}, Lcom/facebook/react/ReactRootView;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, v9, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->mVisibleViewArea:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 864
    iget-object v0, v9, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->this$0:Lcom/facebook/react/ReactRootView;

    invoke-virtual {v0}, Lcom/facebook/react/ReactRootView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v10

    .line 865
    .local v10, "rootInsets":Landroid/view/WindowInsets;
    if-nez v10, :cond_0

    .line 866
    return-void

    .line 869
    :cond_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v11

    .line 870
    .local v11, "keyboardIsVisible":Z
    iget-boolean v0, v9, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->mKeyboardIsVisible:Z

    if-eq v11, v0, :cond_3

    .line 871
    iput-boolean v11, v9, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->mKeyboardIsVisible:Z

    .line 873
    if-eqz v11, :cond_2

    .line 874
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v12

    .line 875
    .local v12, "imeInsets":Landroid/graphics/Insets;
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v13

    .line 876
    .local v13, "barInsets":Landroid/graphics/Insets;
    iget v0, v12, Landroid/graphics/Insets;->bottom:I

    iget v1, v13, Landroid/graphics/Insets;->bottom:I

    sub-int v14, v0, v1

    .line 878
    .local v14, "height":I
    iget-object v0, v9, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->this$0:Lcom/facebook/react/ReactRootView;

    invoke-virtual {v0}, Lcom/facebook/react/ReactRootView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 879
    .local v15, "rootLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v0, v15, Landroid/view/WindowManager$LayoutParams;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(Z)V

    .line 881
    move-object v0, v15

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 883
    .local v7, "softInputMode":I
    const/16 v0, 0x30

    if-ne v7, v0, :cond_1

    .line 884
    iget-object v0, v9, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->mVisibleViewArea:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v14

    goto :goto_0

    .line 885
    :cond_1
    iget-object v0, v9, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->mVisibleViewArea:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    :goto_0
    move v8, v0

    .line 887
    .local v8, "screenY":I
    iget-object v5, v9, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->this$0:Lcom/facebook/react/ReactRootView;

    int-to-float v0, v8

    .line 890
    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v0

    float-to-double v1, v0

    iget-object v0, v9, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->mVisibleViewArea:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    .line 891
    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v0

    float-to-double v3, v0

    iget-object v0, v9, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->mVisibleViewArea:Landroid/graphics/Rect;

    .line 892
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v0

    move-object/from16 v16, v5

    float-to-double v5, v0

    int-to-float v0, v14

    .line 893
    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v0

    move/from16 v17, v7

    move/from16 v18, v8

    .end local v7    # "softInputMode":I
    .end local v8    # "screenY":I
    .local v17, "softInputMode":I
    .local v18, "screenY":I
    float-to-double v7, v0

    .line 889
    move-object/from16 v0, p0

    move-object/from16 v19, v10

    move-object/from16 v10, v16

    .end local v10    # "rootInsets":Landroid/view/WindowInsets;
    .local v19, "rootInsets":Landroid/view/WindowInsets;
    move/from16 v16, v17

    move/from16 v17, v18

    .end local v18    # "screenY":I
    .local v16, "softInputMode":I
    .local v17, "screenY":I
    invoke-direct/range {v0 .. v8}, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->createKeyboardEventPayload(DDDD)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 887
    const-string v1, "keyboardDidShow"

    invoke-virtual {v10, v1, v0}, Lcom/facebook/react/ReactRootView;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 894
    .end local v12    # "imeInsets":Landroid/graphics/Insets;
    .end local v13    # "barInsets":Landroid/graphics/Insets;
    .end local v14    # "height":I
    .end local v15    # "rootLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v16    # "softInputMode":I
    .end local v17    # "screenY":I
    goto :goto_1

    .line 895
    .end local v19    # "rootInsets":Landroid/view/WindowInsets;
    .restart local v10    # "rootInsets":Landroid/view/WindowInsets;
    :cond_2
    move-object/from16 v19, v10

    .end local v10    # "rootInsets":Landroid/view/WindowInsets;
    .restart local v19    # "rootInsets":Landroid/view/WindowInsets;
    iget-object v10, v9, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->this$0:Lcom/facebook/react/ReactRootView;

    iget-object v0, v9, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->mVisibleViewArea:Landroid/graphics/Rect;

    .line 898
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v0

    float-to-double v1, v0

    iget-object v0, v9, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->mVisibleViewArea:Landroid/graphics/Rect;

    .line 900
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v0

    float-to-double v5, v0

    .line 897
    const-wide/16 v3, 0x0

    const-wide/16 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->createKeyboardEventPayload(DDDD)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 895
    const-string v1, "keyboardDidHide"

    invoke-virtual {v10, v1, v0}, Lcom/facebook/react/ReactRootView;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_1

    .line 870
    .end local v19    # "rootInsets":Landroid/view/WindowInsets;
    .restart local v10    # "rootInsets":Landroid/view/WindowInsets;
    :cond_3
    move-object/from16 v19, v10

    .line 904
    .end local v10    # "rootInsets":Landroid/view/WindowInsets;
    .restart local v19    # "rootInsets":Landroid/view/WindowInsets;
    :goto_1
    return-void
.end method

.method private checkForKeyboardEventsLegacy()V
    .locals 15

    .line 907
    iget-object v0, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->this$0:Lcom/facebook/react/ReactRootView;

    invoke-virtual {v0}, Lcom/facebook/react/ReactRootView;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->mVisibleViewArea:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 909
    const/4 v0, 0x0

    .line 910
    .local v0, "notchHeight":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 911
    iget-object v1, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->this$0:Lcom/facebook/react/ReactRootView;

    invoke-virtual {v1}, Lcom/facebook/react/ReactRootView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    .line 912
    .local v1, "insets":Landroid/view/WindowInsets;
    if-eqz v1, :cond_0

    .line 913
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v2

    .line 914
    .local v2, "displayCutout":Landroid/view/DisplayCutout;
    if-eqz v2, :cond_0

    .line 915
    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v0

    .line 920
    .end local v1    # "insets":Landroid/view/WindowInsets;
    .end local v2    # "displayCutout":Landroid/view/DisplayCutout;
    :cond_0
    invoke-static {}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->getWindowDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v2, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->mVisibleViewArea:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    .line 924
    .local v1, "heightDiff":I
    iget v2, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->mKeyboardHeight:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v1, :cond_1

    iget v2, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->mMinKeyboardHeightDetected:I

    if-le v1, v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    .line 927
    .local v2, "isKeyboardShowingOrKeyboardHeightChanged":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 928
    iput v1, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->mKeyboardHeight:I

    .line 929
    iput-boolean v3, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->mKeyboardIsVisible:Z

    .line 930
    iget-object v3, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->this$0:Lcom/facebook/react/ReactRootView;

    iget-object v4, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->mVisibleViewArea:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    .line 933
    invoke-static {v4}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v4

    float-to-double v6, v4

    iget-object v4, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->mVisibleViewArea:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    .line 934
    invoke-static {v4}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v4

    float-to-double v8, v4

    iget-object v4, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->mVisibleViewArea:Landroid/graphics/Rect;

    .line 935
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v4

    float-to-double v10, v4

    iget v4, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->mKeyboardHeight:I

    int-to-float v4, v4

    .line 936
    invoke-static {v4}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v4

    float-to-double v12, v4

    .line 932
    move-object v5, p0

    invoke-direct/range {v5 .. v13}, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->createKeyboardEventPayload(DDDD)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v4

    .line 930
    const-string v5, "keyboardDidShow"

    invoke-virtual {v3, v5, v4}, Lcom/facebook/react/ReactRootView;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 937
    return-void

    .line 940
    :cond_2
    iget v5, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->mKeyboardHeight:I

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->mMinKeyboardHeightDetected:I

    if-gt v1, v5, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    .line 941
    .local v3, "isKeyboardHidden":Z
    :goto_1
    if-eqz v3, :cond_4

    .line 942
    iput v4, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->mKeyboardHeight:I

    .line 943
    iput-boolean v4, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->mKeyboardIsVisible:Z

    .line 944
    iget-object v4, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->this$0:Lcom/facebook/react/ReactRootView;

    iget-object v5, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->mVisibleViewArea:Landroid/graphics/Rect;

    .line 947
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v5}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v5

    float-to-double v7, v5

    iget-object v5, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->mVisibleViewArea:Landroid/graphics/Rect;

    .line 949
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v5}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v5

    float-to-double v11, v5

    .line 946
    const-wide/16 v9, 0x0

    const-wide/16 v13, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v14}, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->createKeyboardEventPayload(DDDD)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v5

    .line 944
    const-string v6, "keyboardDidHide"

    invoke-virtual {v4, v6, v5}, Lcom/facebook/react/ReactRootView;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 952
    :cond_4
    return-void
.end method

.method private createKeyboardEventPayload(DDDD)Lcom/facebook/react/bridge/WritableMap;
    .locals 5
    .param p1, "screenY"    # D
    .param p3, "screenX"    # D
    .param p5, "width"    # D
    .param p7, "height"    # D

    .line 1021
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 1022
    .local v0, "keyboardEventParams":Lcom/facebook/react/bridge/WritableMap;
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 1024
    .local v1, "endCoordinates":Lcom/facebook/react/bridge/WritableMap;
    const-string v2, "height"

    invoke-interface {v1, v2, p7, p8}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 1025
    const-string/jumbo v2, "screenX"

    invoke-interface {v1, v2, p3, p4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 1026
    const-string/jumbo v2, "width"

    invoke-interface {v1, v2, p5, p6}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 1027
    const-string/jumbo v2, "screenY"

    invoke-interface {v1, v2, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 1029
    const-string v2, "endCoordinates"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 1030
    const-string v2, "easing"

    const-string v3, "keyboard"

    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    const-string v2, "duration"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 1032
    return-object v0
.end method

.method private emitOrientationChanged(I)V
    .locals 7
    .param p1, "newRotation"    # I

    .line 975
    const/4 v0, 0x0

    .line 977
    .local v0, "isLandscape":Z
    packed-switch p1, :pswitch_data_0

    .line 997
    return-void

    .line 992
    :pswitch_0
    const-string v1, "landscape-secondary"

    .line 993
    .local v1, "name":Ljava/lang/String;
    const-wide v2, 0x4056800000000000L    # 90.0

    .line 994
    .local v2, "rotationDegrees":D
    const/4 v0, 0x1

    .line 995
    goto :goto_0

    .line 988
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "rotationDegrees":D
    :pswitch_1
    const-string/jumbo v1, "portrait-secondary"

    .line 989
    .restart local v1    # "name":Ljava/lang/String;
    const-wide v2, 0x4066800000000000L    # 180.0

    .line 990
    .restart local v2    # "rotationDegrees":D
    goto :goto_0

    .line 983
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "rotationDegrees":D
    :pswitch_2
    const-string v1, "landscape-primary"

    .line 984
    .restart local v1    # "name":Ljava/lang/String;
    const-wide v2, -0x3fa9800000000000L    # -90.0

    .line 985
    .restart local v2    # "rotationDegrees":D
    const/4 v0, 0x1

    .line 986
    goto :goto_0

    .line 979
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "rotationDegrees":D
    :pswitch_3
    const-string/jumbo v1, "portrait-primary"

    .line 980
    .restart local v1    # "name":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 981
    .restart local v2    # "rotationDegrees":D
    nop

    .line 999
    :goto_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v4

    .line 1000
    .local v4, "map":Lcom/facebook/react/bridge/WritableMap;
    const-string v5, "name"

    invoke-interface {v4, v5, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    const-string/jumbo v5, "rotationDegrees"

    invoke-interface {v4, v5, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 1002
    const-string v5, "isLandscape"

    invoke-interface {v4, v5, v0}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 1004
    iget-object v5, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->this$0:Lcom/facebook/react/ReactRootView;

    const-string v6, "namedOrientationDidChange"

    invoke-virtual {v5, v6, v4}, Lcom/facebook/react/ReactRootView;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 1005
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private emitUpdateDimensionsEvent()V
    .locals 2

    .line 1008
    iget-object v0, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->this$0:Lcom/facebook/react/ReactRootView;

    invoke-virtual {v0}, Lcom/facebook/react/ReactRootView;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    .line 1009
    .local v0, "reactContext":Lcom/facebook/react/bridge/ReactContext;
    if-nez v0, :cond_0

    .line 1010
    return-void

    .line 1012
    :cond_0
    const-class v1, Lcom/facebook/react/modules/deviceinfo/DeviceInfoModule;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/modules/deviceinfo/DeviceInfoModule;

    .line 1014
    .local v1, "deviceInfo":Lcom/facebook/react/modules/deviceinfo/DeviceInfoModule;
    if-eqz v1, :cond_1

    .line 1015
    invoke-virtual {v1}, Lcom/facebook/react/modules/deviceinfo/DeviceInfoModule;->emitUpdateDimensionsEvent()V

    .line 1017
    :cond_1
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 847
    iget-object v0, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->this$0:Lcom/facebook/react/ReactRootView;

    invoke-virtual {v0}, Lcom/facebook/react/ReactRootView;->hasActiveReactContext()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->this$0:Lcom/facebook/react/ReactRootView;

    invoke-virtual {v0}, Lcom/facebook/react/ReactRootView;->isViewAttachedToReactInstance()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 851
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    .line 852
    invoke-direct {p0}, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->checkForKeyboardEvents()V

    goto :goto_0

    .line 854
    :cond_1
    invoke-direct {p0}, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->checkForKeyboardEventsLegacy()V

    .line 857
    :goto_0
    invoke-direct {p0}, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->checkForDeviceOrientationChanges()V

    .line 858
    invoke-direct {p0}, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->checkForDeviceDimensionsChanges()V

    .line 859
    return-void

    .line 848
    :cond_2
    :goto_1
    return-void
.end method
