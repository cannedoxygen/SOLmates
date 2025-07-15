.class public Lcom/facebook/react/ReactRootView;
.super Landroid/widget/FrameLayout;
.source "ReactRootView.java"

# interfaces
.implements Lcom/facebook/react/uimanager/RootView;
.implements Lcom/facebook/react/uimanager/ReactRoot;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;,
        Lcom/facebook/react/ReactRootView$ReactRootViewEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ReactRootView"


# instance fields
.field private final mAndroidHWInputDeviceHelper:Lcom/facebook/react/ReactAndroidHWInputDeviceHelper;

.field private mAppProperties:Landroid/os/Bundle;

.field private mCustomGlobalLayoutListener:Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;

.field private mHeightMeasureSpec:I

.field private mIsAttachedToInstance:Z

.field private mJSModuleName:Ljava/lang/String;

.field private mJSPointerDispatcher:Lcom/facebook/react/uimanager/JSPointerDispatcher;

.field private mJSTouchDispatcher:Lcom/facebook/react/uimanager/JSTouchDispatcher;

.field private mLastHeight:I

.field private mLastOffsetX:I

.field private mLastOffsetY:I

.field private mLastWidth:I

.field private mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

.field private mRootViewEventListener:Lcom/facebook/react/ReactRootView$ReactRootViewEventListener;

.field private mRootViewTag:I

.field private mShouldLogContentAppeared:Z

.field private final mState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mUIManagerType:I

.field private mWasMeasured:Z

.field private mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 117
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/react/ReactRootView;->mRootViewTag:I

    .line 104
    new-instance v1, Lcom/facebook/react/ReactAndroidHWInputDeviceHelper;

    invoke-direct {v1, p0}, Lcom/facebook/react/ReactAndroidHWInputDeviceHelper;-><init>(Lcom/facebook/react/ReactRootView;)V

    iput-object v1, p0, Lcom/facebook/react/ReactRootView;->mAndroidHWInputDeviceHelper:Lcom/facebook/react/ReactAndroidHWInputDeviceHelper;

    .line 106
    iput-boolean v0, p0, Lcom/facebook/react/ReactRootView;->mWasMeasured:Z

    .line 107
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/react/ReactRootView;->mWidthMeasureSpec:I

    .line 108
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/react/ReactRootView;->mHeightMeasureSpec:I

    .line 109
    iput v0, p0, Lcom/facebook/react/ReactRootView;->mLastWidth:I

    .line 110
    iput v0, p0, Lcom/facebook/react/ReactRootView;->mLastHeight:I

    .line 111
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/facebook/react/ReactRootView;->mLastOffsetX:I

    .line 112
    iput v1, p0, Lcom/facebook/react/ReactRootView;->mLastOffsetY:I

    .line 113
    const/4 v1, 0x1

    iput v1, p0, Lcom/facebook/react/ReactRootView;->mUIManagerType:I

    .line 114
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/facebook/react/ReactRootView;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 118
    invoke-direct {p0}, Lcom/facebook/react/ReactRootView;->init()V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 122
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/react/ReactRootView;->mRootViewTag:I

    .line 104
    new-instance v1, Lcom/facebook/react/ReactAndroidHWInputDeviceHelper;

    invoke-direct {v1, p0}, Lcom/facebook/react/ReactAndroidHWInputDeviceHelper;-><init>(Lcom/facebook/react/ReactRootView;)V

    iput-object v1, p0, Lcom/facebook/react/ReactRootView;->mAndroidHWInputDeviceHelper:Lcom/facebook/react/ReactAndroidHWInputDeviceHelper;

    .line 106
    iput-boolean v0, p0, Lcom/facebook/react/ReactRootView;->mWasMeasured:Z

    .line 107
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/react/ReactRootView;->mWidthMeasureSpec:I

    .line 108
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/react/ReactRootView;->mHeightMeasureSpec:I

    .line 109
    iput v0, p0, Lcom/facebook/react/ReactRootView;->mLastWidth:I

    .line 110
    iput v0, p0, Lcom/facebook/react/ReactRootView;->mLastHeight:I

    .line 111
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/facebook/react/ReactRootView;->mLastOffsetX:I

    .line 112
    iput v1, p0, Lcom/facebook/react/ReactRootView;->mLastOffsetY:I

    .line 113
    const/4 v1, 0x1

    iput v1, p0, Lcom/facebook/react/ReactRootView;->mUIManagerType:I

    .line 114
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/facebook/react/ReactRootView;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 123
    invoke-direct {p0}, Lcom/facebook/react/ReactRootView;->init()V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 127
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/react/ReactRootView;->mRootViewTag:I

    .line 104
    new-instance v1, Lcom/facebook/react/ReactAndroidHWInputDeviceHelper;

    invoke-direct {v1, p0}, Lcom/facebook/react/ReactAndroidHWInputDeviceHelper;-><init>(Lcom/facebook/react/ReactRootView;)V

    iput-object v1, p0, Lcom/facebook/react/ReactRootView;->mAndroidHWInputDeviceHelper:Lcom/facebook/react/ReactAndroidHWInputDeviceHelper;

    .line 106
    iput-boolean v0, p0, Lcom/facebook/react/ReactRootView;->mWasMeasured:Z

    .line 107
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/react/ReactRootView;->mWidthMeasureSpec:I

    .line 108
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/react/ReactRootView;->mHeightMeasureSpec:I

    .line 109
    iput v0, p0, Lcom/facebook/react/ReactRootView;->mLastWidth:I

    .line 110
    iput v0, p0, Lcom/facebook/react/ReactRootView;->mLastHeight:I

    .line 111
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/facebook/react/ReactRootView;->mLastOffsetX:I

    .line 112
    iput v1, p0, Lcom/facebook/react/ReactRootView;->mLastOffsetY:I

    .line 113
    const/4 v1, 0x1

    iput v1, p0, Lcom/facebook/react/ReactRootView;->mUIManagerType:I

    .line 114
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/facebook/react/ReactRootView;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 128
    invoke-direct {p0}, Lcom/facebook/react/ReactRootView;->init()V

    .line 129
    return-void
.end method

.method private attachToReactInstanceManager()V
    .locals 5

    .line 720
    const-string v0, "attachToReactInstanceManager"

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v0}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 721
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->ROOT_VIEW_ATTACH_TO_REACT_INSTANCE_MANAGER_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 733
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getId()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 734
    new-instance v0, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to attach a ReactRootView with an explicit id already set to ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 738
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]. React Native uses the id field to track react tags and will overwrite this field. If that is fine, explicitly overwrite the id field to View.NO_ID."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    .line 734
    const-string v3, "ReactRootView"

    invoke-static {v3, v0}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 744
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/react/ReactRootView;->mIsAttachedToInstance:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 752
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->ROOT_VIEW_ATTACH_TO_REACT_INSTANCE_MANAGER_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 753
    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 745
    return-void

    .line 748
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/facebook/react/ReactRootView;->mIsAttachedToInstance:Z

    .line 749
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/ReactInstanceManager;

    invoke-virtual {v0, p0}, Lcom/facebook/react/ReactInstanceManager;->attachRootView(Lcom/facebook/react/uimanager/ReactRoot;)V

    .line 750
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-direct {p0}, Lcom/facebook/react/ReactRootView;->getCustomGlobalLayoutListener()Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 752
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->ROOT_VIEW_ATTACH_TO_REACT_INSTANCE_MANAGER_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 753
    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 754
    nop

    .line 755
    return-void

    .line 752
    :catchall_0
    move-exception v0

    sget-object v3, Lcom/facebook/react/bridge/ReactMarkerConstants;->ROOT_VIEW_ATTACH_TO_REACT_INSTANCE_MANAGER_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v3}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 753
    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 754
    throw v0
.end method

.method private getCustomGlobalLayoutListener()Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;
    .locals 1

    .line 713
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mCustomGlobalLayoutListener:Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;

    if-nez v0, :cond_0

    .line 714
    new-instance v0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;

    invoke-direct {v0, p0}, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;-><init>(Lcom/facebook/react/ReactRootView;)V

    iput-object v0, p0, Lcom/facebook/react/ReactRootView;->mCustomGlobalLayoutListener:Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mCustomGlobalLayoutListener:Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;

    return-object v0
.end method

.method private init()V
    .locals 1

    .line 132
    invoke-static {}, Lcom/facebook/react/uimanager/ReactRootViewTagGenerator;->getNextRootViewTag()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/react/ReactRootView;->setRootViewTag(I)V

    .line 133
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/react/ReactRootView;->setClipChildren(Z)V

    .line 134
    return-void
.end method

.method private isDispatcherReady()Z
    .locals 3

    .line 227
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->hasActiveReactContext()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ReactRootView"

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->isViewAttachedToReactInstance()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mJSTouchDispatcher:Lcom/facebook/react/uimanager/JSTouchDispatcher;

    if-nez v0, :cond_1

    .line 232
    const-string v0, "Unable to dispatch touch to JS before the dispatcher is available"

    invoke-static {v2, v0}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return v1

    .line 235
    :cond_1
    sget-boolean v0, Lcom/facebook/react/config/ReactFeatureFlags;->dispatchPointerEvents:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mJSPointerDispatcher:Lcom/facebook/react/uimanager/JSPointerDispatcher;

    if-nez v0, :cond_2

    .line 236
    const-string v0, "Unable to dispatch pointer events to JS before the dispatcher is available"

    invoke-static {v2, v0}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return v1

    .line 240
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 228
    :cond_3
    :goto_0
    const-string v0, "Unable to dispatch touch to JS as the catalyst instance has not been attached"

    invoke-static {v2, v0}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return v1
.end method

.method private isFabric()Z
    .locals 2

    .line 387
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getUIManagerType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isRootViewTagSet()Z
    .locals 2

    .line 774
    iget v0, p0, Lcom/facebook/react/ReactRootView;->mRootViewTag:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/react/ReactRootView;->mRootViewTag:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private removeOnGlobalLayoutListener()V
    .locals 2

    .line 408
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-direct {p0}, Lcom/facebook/react/ReactRootView;->getCustomGlobalLayoutListener()Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 409
    return-void
.end method

.method private setSurfaceConstraintsToScreenSize()V
    .locals 3

    .line 496
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 497
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 498
    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/react/ReactRootView;->mWidthMeasureSpec:I

    .line 499
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 500
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/react/ReactRootView;->mHeightMeasureSpec:I

    .line 501
    return-void
.end method

.method private updateRootLayoutSpecs(ZII)V
    .locals 11
    .param p1, "measureSpecsChanged"    # Z
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I

    .line 540
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->ROOT_VIEW_UPDATE_LAYOUT_SPECS_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 541
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->hasActiveReactInstance()Z

    move-result v0

    const-string v1, "ReactRootView"

    if-nez v0, :cond_0

    .line 542
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->ROOT_VIEW_UPDATE_LAYOUT_SPECS_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 543
    const-string v0, "Unable to update root layout specs for uninitialized ReactInstanceManager"

    invoke-static {v1, v0}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    return-void

    .line 548
    :cond_0
    invoke-direct {p0}, Lcom/facebook/react/ReactRootView;->isFabric()Z

    move-result v0

    .line 549
    .local v0, "isFabricEnabled":Z
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/facebook/react/ReactRootView;->isRootViewTagSet()Z

    move-result v2

    if-nez v2, :cond_1

    .line 550
    sget-object v2, Lcom/facebook/react/bridge/ReactMarkerConstants;->ROOT_VIEW_UPDATE_LAYOUT_SPECS_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v2}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 551
    const-string v2, "Unable to update root layout specs for ReactRootView: no rootViewTag set yet"

    invoke-static {v1, v2}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    return-void

    .line 555
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v1

    .line 557
    .local v1, "reactApplicationContext":Lcom/facebook/react/bridge/ReactContext;
    if-eqz v1, :cond_5

    .line 559
    nop

    .line 560
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getUIManagerType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/facebook/react/uimanager/UIManagerHelper;->getUIManager(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/bridge/UIManager;

    move-result-object v2

    .line 562
    .local v2, "uiManager":Lcom/facebook/react/bridge/UIManager;
    if-eqz v2, :cond_5

    .line 564
    const/4 v3, 0x0

    .line 565
    .local v3, "offsetX":I
    const/4 v4, 0x0

    .line 566
    .local v4, "offsetY":I
    if-eqz v0, :cond_2

    .line 567
    invoke-static {p0}, Lcom/facebook/react/uimanager/RootViewUtil;->getViewportOffset(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v5

    .line 568
    .local v5, "viewportOffset":Landroid/graphics/Point;
    iget v3, v5, Landroid/graphics/Point;->x:I

    .line 569
    iget v4, v5, Landroid/graphics/Point;->y:I

    move v9, v3

    move v10, v4

    goto :goto_0

    .line 566
    .end local v5    # "viewportOffset":Landroid/graphics/Point;
    :cond_2
    move v9, v3

    move v10, v4

    .line 572
    .end local v3    # "offsetX":I
    .end local v4    # "offsetY":I
    .local v9, "offsetX":I
    .local v10, "offsetY":I
    :goto_0
    if-nez p1, :cond_3

    iget v3, p0, Lcom/facebook/react/ReactRootView;->mLastOffsetX:I

    if-ne v9, v3, :cond_3

    iget v3, p0, Lcom/facebook/react/ReactRootView;->mLastOffsetY:I

    if-eq v10, v3, :cond_4

    .line 573
    :cond_3
    nop

    .line 574
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getRootViewTag()I

    move-result v4

    .line 573
    move-object v3, v2

    move v5, p2

    move v6, p3

    move v7, v9

    move v8, v10

    invoke-interface/range {v3 .. v8}, Lcom/facebook/react/bridge/UIManager;->updateRootLayoutSpecs(IIIII)V

    .line 576
    :cond_4
    iput v9, p0, Lcom/facebook/react/ReactRootView;->mLastOffsetX:I

    .line 577
    iput v10, p0, Lcom/facebook/react/ReactRootView;->mLastOffsetY:I

    .line 581
    .end local v2    # "uiManager":Lcom/facebook/react/bridge/UIManager;
    .end local v9    # "offsetX":I
    .end local v10    # "offsetY":I
    :cond_5
    sget-object v2, Lcom/facebook/react/bridge/ReactMarkerConstants;->ROOT_VIEW_UPDATE_LAYOUT_SPECS_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v2}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 582
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 285
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    goto :goto_0

    .line 286
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/StackOverflowError;
    invoke-virtual {p0, v0}, Lcom/facebook/react/ReactRootView;->handleException(Ljava/lang/Throwable;)V

    .line 291
    .end local v0    # "e":Ljava/lang/StackOverflowError;
    :goto_0
    return-void
.end method

.method protected dispatchJSPointerEvent(Landroid/view/MotionEvent;Z)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "isCapture"    # Z

    .line 331
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->hasActiveReactContext()Z

    move-result v0

    const-string v1, "ReactRootView"

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->isViewAttachedToReactInstance()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mJSPointerDispatcher:Lcom/facebook/react/uimanager/JSPointerDispatcher;

    if-nez v0, :cond_2

    .line 336
    sget-boolean v0, Lcom/facebook/react/config/ReactFeatureFlags;->dispatchPointerEvents:Z

    if-nez v0, :cond_1

    .line 337
    return-void

    .line 339
    :cond_1
    const-string v0, "Unable to dispatch pointer events to JS before the dispatcher is available"

    invoke-static {v1, v0}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    return-void

    .line 343
    :cond_2
    nop

    .line 344
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getUIManagerType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcher(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    .line 345
    .local v0, "eventDispatcher":Lcom/facebook/react/uimanager/events/EventDispatcher;
    if-eqz v0, :cond_3

    .line 346
    iget-object v1, p0, Lcom/facebook/react/ReactRootView;->mJSPointerDispatcher:Lcom/facebook/react/uimanager/JSPointerDispatcher;

    invoke-virtual {v1, p1, v0, p2}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->handleMotionEvent(Landroid/view/MotionEvent;Lcom/facebook/react/uimanager/events/EventDispatcher;Z)V

    .line 348
    :cond_3
    return-void

    .line 332
    .end local v0    # "eventDispatcher":Lcom/facebook/react/uimanager/events/EventDispatcher;
    :cond_4
    :goto_0
    const-string v0, "Unable to dispatch touch to JS as the catalyst instance has not been attached"

    invoke-static {v1, v0}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method protected dispatchJSTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 351
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->hasActiveReactContext()Z

    move-result v0

    const-string v1, "ReactRootView"

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->isViewAttachedToReactInstance()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mJSTouchDispatcher:Lcom/facebook/react/uimanager/JSTouchDispatcher;

    if-nez v0, :cond_1

    .line 356
    const-string v0, "Unable to dispatch touch to JS before the dispatcher is available"

    invoke-static {v1, v0}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    return-void

    .line 360
    :cond_1
    nop

    .line 361
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getUIManagerType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcher(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    .line 362
    .local v0, "eventDispatcher":Lcom/facebook/react/uimanager/events/EventDispatcher;
    if-eqz v0, :cond_2

    .line 363
    iget-object v1, p0, Lcom/facebook/react/ReactRootView;->mJSTouchDispatcher:Lcom/facebook/react/uimanager/JSTouchDispatcher;

    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/facebook/react/uimanager/JSTouchDispatcher;->handleTouchEvent(Landroid/view/MotionEvent;Lcom/facebook/react/uimanager/events/EventDispatcher;Lcom/facebook/react/bridge/ReactContext;)V

    .line 365
    :cond_2
    return-void

    .line 352
    .end local v0    # "eventDispatcher":Lcom/facebook/react/uimanager/events/EventDispatcher;
    :cond_3
    :goto_0
    const-string v0, "Unable to dispatch touch to JS as the catalyst instance has not been attached"

    invoke-static {v1, v0}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/KeyEvent;

    .line 295
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->hasActiveReactContext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->isViewAttachedToReactInstance()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mAndroidHWInputDeviceHelper:Lcom/facebook/react/ReactAndroidHWInputDeviceHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/react/ReactAndroidHWInputDeviceHelper;->handleKeyEvent(Landroid/view/KeyEvent;)V

    .line 300
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 296
    :cond_1
    :goto_0
    const-string v0, "ReactRootView"

    const-string v1, "Unable to handle key event as the catalyst instance has not been attached"

    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 759
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 760
    iget-boolean v0, p0, Lcom/facebook/react/ReactRootView;->mIsAttachedToInstance:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "The application this ReactRootView was rendering was not unmounted before the ReactRootView was garbage collected. This usually means that your application is leaking large amounts of memory. To solve this, make sure to call ReactRootView#unmountReactApplication in the onDestroy() of your hosting Activity or in the onDestroyView() of your hosting Fragment."

    invoke-static {v0, v1}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(ZLjava/lang/String;)V

    .line 767
    return-void
.end method

.method public getAppProperties()Landroid/os/Bundle;
    .locals 1

    .line 639
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mAppProperties:Landroid/os/Bundle;

    return-object v0
.end method

.method public getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;
    .locals 1

    .line 821
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    if-nez v0, :cond_0

    .line 822
    const/4 v0, 0x0

    return-object v0

    .line 824
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    return-object v0
.end method

.method public getHeightMeasureSpec()I
    .locals 1

    .line 510
    iget v0, p0, Lcom/facebook/react/ReactRootView;->mHeightMeasureSpec:I

    return v0
.end method

.method public getJSModuleName()Ljava/lang/String;
    .locals 1

    .line 634
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mJSModuleName:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;
    .locals 1

    .line 802
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    return-object v0
.end method

.method public getRootViewGroup()Landroid/view/ViewGroup;
    .locals 0

    .line 445
    return-object p0
.end method

.method public getRootViewTag()I
    .locals 1

    .line 770
    iget v0, p0, Lcom/facebook/react/ReactRootView;->mRootViewTag:I

    return v0
.end method

.method public getState()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public getSurfaceID()Ljava/lang/String;
    .locals 2

    .line 521
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getAppProperties()Landroid/os/Bundle;

    move-result-object v0

    .line 522
    .local v0, "appProperties":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "surfaceID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getUIManagerType()I
    .locals 1

    .line 797
    iget v0, p0, Lcom/facebook/react/ReactRootView;->mUIManagerType:I

    return v0
.end method

.method public getWidthMeasureSpec()I
    .locals 1

    .line 505
    iget v0, p0, Lcom/facebook/react/ReactRootView;->mWidthMeasureSpec:I

    return v0
.end method

.method public handleException(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 783
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->hasActiveReactContext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    new-instance v0, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;Landroid/view/View;Ljava/lang/Throwable;)V

    .line 788
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/react/bridge/ReactContext;->handleException(Ljava/lang/Exception;)V

    .line 789
    return-void

    .line 784
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public hasActiveReactContext()Z
    .locals 1

    .line 816
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasActiveReactInstance()Z
    .locals 1

    .line 812
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isViewAttachedToReactInstance()Z
    .locals 1

    .line 828
    iget-boolean v0, p0, Lcom/facebook/react/ReactRootView;->mIsAttachedToInstance:Z

    return v0
.end method

.method public onAttachedToReactInstance()V
    .locals 1

    .line 617
    new-instance v0, Lcom/facebook/react/uimanager/JSTouchDispatcher;

    invoke-direct {v0, p0}, Lcom/facebook/react/uimanager/JSTouchDispatcher;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/facebook/react/ReactRootView;->mJSTouchDispatcher:Lcom/facebook/react/uimanager/JSTouchDispatcher;

    .line 619
    sget-boolean v0, Lcom/facebook/react/config/ReactFeatureFlags;->dispatchPointerEvents:Z

    if-eqz v0, :cond_0

    .line 620
    new-instance v0, Lcom/facebook/react/uimanager/JSPointerDispatcher;

    invoke-direct {v0, p0}, Lcom/facebook/react/uimanager/JSPointerDispatcher;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/facebook/react/ReactRootView;->mJSPointerDispatcher:Lcom/facebook/react/uimanager/JSPointerDispatcher;

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mRootViewEventListener:Lcom/facebook/react/ReactRootView$ReactRootViewEventListener;

    if-eqz v0, :cond_1

    .line 624
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mRootViewEventListener:Lcom/facebook/react/ReactRootView$ReactRootViewEventListener;

    invoke-interface {v0, p0}, Lcom/facebook/react/ReactRootView$ReactRootViewEventListener;->onAttachedToReactInstance(Lcom/facebook/react/ReactRootView;)V

    .line 626
    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 392
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 393
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->isViewAttachedToReactInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    invoke-direct {p0}, Lcom/facebook/react/ReactRootView;->removeOnGlobalLayoutListener()V

    .line 395
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-direct {p0}, Lcom/facebook/react/ReactRootView;->getCustomGlobalLayoutListener()Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 397
    :cond_0
    return-void
.end method

.method public onChildEndedNativeGesture(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "childView"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .line 212
    invoke-direct {p0}, Lcom/facebook/react/ReactRootView;->isDispatcherReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    return-void

    .line 216
    :cond_0
    nop

    .line 217
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getUIManagerType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcher(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    .line 218
    .local v0, "eventDispatcher":Lcom/facebook/react/uimanager/events/EventDispatcher;
    if-eqz v0, :cond_1

    .line 219
    iget-object v1, p0, Lcom/facebook/react/ReactRootView;->mJSTouchDispatcher:Lcom/facebook/react/uimanager/JSTouchDispatcher;

    invoke-virtual {v1, p2, v0}, Lcom/facebook/react/uimanager/JSTouchDispatcher;->onChildEndedNativeGesture(Landroid/view/MotionEvent;Lcom/facebook/react/uimanager/events/EventDispatcher;)V

    .line 220
    iget-object v1, p0, Lcom/facebook/react/ReactRootView;->mJSPointerDispatcher:Lcom/facebook/react/uimanager/JSPointerDispatcher;

    if-eqz v1, :cond_1

    .line 221
    iget-object v1, p0, Lcom/facebook/react/ReactRootView;->mJSPointerDispatcher:Lcom/facebook/react/uimanager/JSPointerDispatcher;

    invoke-virtual {v1}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->onChildEndedNativeGesture()V

    .line 224
    :cond_1
    return-void
.end method

.method public onChildStartedNativeGesture(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "childView"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .line 196
    invoke-direct {p0}, Lcom/facebook/react/ReactRootView;->isDispatcherReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    return-void

    .line 200
    :cond_0
    nop

    .line 201
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getUIManagerType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcher(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    .line 202
    .local v0, "eventDispatcher":Lcom/facebook/react/uimanager/events/EventDispatcher;
    if-eqz v0, :cond_1

    .line 203
    iget-object v1, p0, Lcom/facebook/react/ReactRootView;->mJSTouchDispatcher:Lcom/facebook/react/uimanager/JSTouchDispatcher;

    invoke-virtual {v1, p2, v0}, Lcom/facebook/react/uimanager/JSTouchDispatcher;->onChildStartedNativeGesture(Landroid/view/MotionEvent;Lcom/facebook/react/uimanager/events/EventDispatcher;)V

    .line 204
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/facebook/react/ReactRootView;->mJSPointerDispatcher:Lcom/facebook/react/uimanager/JSPointerDispatcher;

    if-eqz v1, :cond_1

    .line 205
    iget-object v1, p0, Lcom/facebook/react/ReactRootView;->mJSPointerDispatcher:Lcom/facebook/react/uimanager/JSPointerDispatcher;

    invoke-virtual {v1, p1, p2, v0}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->onChildStartedNativeGesture(Landroid/view/View;Landroid/view/MotionEvent;Lcom/facebook/react/uimanager/events/EventDispatcher;)V

    .line 208
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 401
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 402
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->isViewAttachedToReactInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    invoke-direct {p0}, Lcom/facebook/react/ReactRootView;->removeOnGlobalLayoutListener()V

    .line 405
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 305
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->hasActiveReactContext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->isViewAttachedToReactInstance()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mAndroidHWInputDeviceHelper:Lcom/facebook/react/ReactAndroidHWInputDeviceHelper;

    invoke-virtual {v0}, Lcom/facebook/react/ReactAndroidHWInputDeviceHelper;->clearFocus()V

    .line 313
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 314
    return-void

    .line 306
    :cond_1
    :goto_0
    const-string v0, "ReactRootView"

    const-string v1, "Unable to handle focus changed event as the catalyst instance has not been attached"

    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 310
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 278
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/ReactRootView;->dispatchJSPointerEvent(Landroid/view/MotionEvent;Z)V

    .line 279
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 272
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/ReactRootView;->dispatchJSPointerEvent(Landroid/view/MotionEvent;Z)V

    .line 273
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 251
    invoke-virtual {p0, p1}, Lcom/facebook/react/ReactRootView;->shouldDispatchJSTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {p0, p1}, Lcom/facebook/react/ReactRootView;->dispatchJSTouchEvent(Landroid/view/MotionEvent;)V

    .line 254
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/ReactRootView;->dispatchJSPointerEvent(Landroid/view/MotionEvent;Z)V

    .line 255
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 381
    iget-boolean v0, p0, Lcom/facebook/react/ReactRootView;->mWasMeasured:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/react/ReactRootView;->isFabric()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget v0, p0, Lcom/facebook/react/ReactRootView;->mWidthMeasureSpec:I

    iget v1, p0, Lcom/facebook/react/ReactRootView;->mHeightMeasureSpec:I

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/react/ReactRootView;->updateRootLayoutSpecs(ZII)V

    .line 384
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 138
    const-string v0, "ReactRootView.onMeasure"

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v0}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 139
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->ROOT_VIEW_ON_MEASURE_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 141
    :try_start_0
    iget v0, p0, Lcom/facebook/react/ReactRootView;->mWidthMeasureSpec:I

    const/4 v3, 0x1

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/facebook/react/ReactRootView;->mHeightMeasureSpec:I

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    .line 143
    .local v0, "measureSpecsUpdated":Z
    :goto_1
    iput p1, p0, Lcom/facebook/react/ReactRootView;->mWidthMeasureSpec:I

    .line 144
    iput p2, p0, Lcom/facebook/react/ReactRootView;->mHeightMeasureSpec:I

    .line 146
    const/4 v4, 0x0

    .line 147
    .local v4, "width":I
    const/4 v5, 0x0

    .line 148
    .local v5, "height":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 149
    .local v6, "widthMode":I
    const/high16 v7, -0x80000000

    if-eq v6, v7, :cond_3

    if-nez v6, :cond_2

    goto :goto_2

    .line 160
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    move v4, v8

    goto :goto_4

    .line 150
    :cond_3
    :goto_2
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getChildCount()I

    move-result v9

    if-ge v8, v9, :cond_4

    .line 151
    invoke-virtual {p0, v8}, Lcom/facebook/react/ReactRootView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 152
    .local v9, "child":Landroid/view/View;
    nop

    .line 153
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    .line 154
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v10, v11

    .line 155
    invoke-virtual {v9}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    add-int/2addr v10, v11

    .line 156
    invoke-virtual {v9}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    add-int/2addr v10, v11

    .line 157
    .local v10, "childSize":I
    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v11

    move v4, v11

    .line 150
    .end local v9    # "child":Landroid/view/View;
    .end local v10    # "childSize":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 162
    .end local v8    # "i":I
    :cond_4
    :goto_4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 163
    .local v8, "heightMode":I
    if-eq v8, v7, :cond_6

    if-nez v8, :cond_5

    goto :goto_5

    .line 174
    :cond_5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    move v5, v7

    goto :goto_7

    .line 164
    :cond_6
    :goto_5
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_6
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getChildCount()I

    move-result v9

    if-ge v7, v9, :cond_7

    .line 165
    invoke-virtual {p0, v7}, Lcom/facebook/react/ReactRootView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 166
    .restart local v9    # "child":Landroid/view/View;
    nop

    .line 167
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    .line 168
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v10, v11

    .line 169
    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v11

    add-int/2addr v10, v11

    .line 170
    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    add-int/2addr v10, v11

    .line 171
    .restart local v10    # "childSize":I
    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v11

    move v5, v11

    .line 164
    .end local v9    # "child":Landroid/view/View;
    .end local v10    # "childSize":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 176
    .end local v7    # "i":I
    :cond_7
    :goto_7
    invoke-virtual {p0, v4, v5}, Lcom/facebook/react/ReactRootView;->setMeasuredDimension(II)V

    .line 177
    iput-boolean v3, p0, Lcom/facebook/react/ReactRootView;->mWasMeasured:Z

    .line 180
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->hasActiveReactInstance()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->isViewAttachedToReactInstance()Z

    move-result v7

    if-nez v7, :cond_8

    .line 181
    invoke-direct {p0}, Lcom/facebook/react/ReactRootView;->attachToReactInstanceManager()V

    goto :goto_8

    .line 182
    :cond_8
    if-nez v0, :cond_9

    iget v7, p0, Lcom/facebook/react/ReactRootView;->mLastWidth:I

    if-ne v7, v4, :cond_9

    iget v7, p0, Lcom/facebook/react/ReactRootView;->mLastHeight:I

    if-eq v7, v5, :cond_a

    .line 183
    :cond_9
    iget v7, p0, Lcom/facebook/react/ReactRootView;->mWidthMeasureSpec:I

    iget v9, p0, Lcom/facebook/react/ReactRootView;->mHeightMeasureSpec:I

    invoke-direct {p0, v3, v7, v9}, Lcom/facebook/react/ReactRootView;->updateRootLayoutSpecs(ZII)V

    .line 185
    :cond_a
    :goto_8
    iput v4, p0, Lcom/facebook/react/ReactRootView;->mLastWidth:I

    .line 186
    iput v5, p0, Lcom/facebook/react/ReactRootView;->mLastHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    .end local v0    # "measureSpecsUpdated":Z
    .end local v4    # "width":I
    .end local v5    # "height":I
    .end local v6    # "widthMode":I
    .end local v8    # "heightMode":I
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->ROOT_VIEW_ON_MEASURE_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 190
    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 191
    nop

    .line 192
    return-void

    .line 189
    :catchall_0
    move-exception v0

    sget-object v3, Lcom/facebook/react/bridge/ReactMarkerConstants;->ROOT_VIEW_ON_MEASURE_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v3}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 190
    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 191
    throw v0
.end method

.method public onStage(I)V
    .locals 0
    .param p1, "stage"    # I

    .line 603
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 605
    :pswitch_0
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->onAttachedToReactInstance()V

    .line 606
    nop

    .line 610
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 260
    invoke-virtual {p0, p1}, Lcom/facebook/react/ReactRootView;->shouldDispatchJSTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p0, p1}, Lcom/facebook/react/ReactRootView;->dispatchJSTouchEvent(Landroid/view/MotionEvent;)V

    .line 263
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/ReactRootView;->dispatchJSPointerEvent(Landroid/view/MotionEvent;Z)V

    .line 264
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 267
    const/4 v0, 0x1

    return v0
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .line 413
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewAdded(Landroid/view/View;)V

    .line 416
    instance-of v0, p1, Lcom/facebook/react/uimanager/ReactClippingProhibitedView;

    if-eqz v0, :cond_0

    .line 417
    new-instance v0, Lcom/facebook/react/ReactRootView$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/ReactRootView$1;-><init>(Lcom/facebook/react/ReactRootView;Landroid/view/View;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    .line 436
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/react/ReactRootView;->mShouldLogContentAppeared:Z

    if-eqz v0, :cond_1

    .line 437
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/ReactRootView;->mShouldLogContentAppeared:Z

    .line 438
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getJSModuleName()Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, "jsModuleName":Ljava/lang/String;
    sget-object v1, Lcom/facebook/react/bridge/ReactMarkerConstants;->CONTENT_APPEARED:Lcom/facebook/react/bridge/ReactMarkerConstants;

    iget v2, p0, Lcom/facebook/react/ReactRootView;->mRootViewTag:I

    invoke-static {v1, v0, v2}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;I)V

    .line 441
    .end local v0    # "jsModuleName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .line 318
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->hasActiveReactContext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->isViewAttachedToReactInstance()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mAndroidHWInputDeviceHelper:Lcom/facebook/react/ReactAndroidHWInputDeviceHelper;

    invoke-virtual {v0, p2}, Lcom/facebook/react/ReactAndroidHWInputDeviceHelper;->onFocusChanged(Landroid/view/View;)V

    .line 327
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 328
    return-void

    .line 319
    :cond_1
    :goto_0
    const-string v0, "ReactRootView"

    const-string v1, "Unable to handle child focus changed event as the catalyst instance has not been attached"

    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 324
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .line 371
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 374
    :cond_0
    return-void
.end method

.method public runApplication()V
    .locals 10

    .line 657
    const-string v0, "ReactRootView.runApplication"

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v0}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 659
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->hasActiveReactInstance()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->isViewAttachedToReactInstance()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 663
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    .local v0, "reactContext":Lcom/facebook/react/bridge/ReactContext;
    if-nez v0, :cond_1

    .line 686
    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 665
    return-void

    .line 668
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->getCatalystInstance()Lcom/facebook/react/bridge/CatalystInstance;

    move-result-object v3

    .line 669
    .local v3, "catalystInstance":Lcom/facebook/react/bridge/CatalystInstance;
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getJSModuleName()Ljava/lang/String;

    move-result-object v4

    .line 671
    .local v4, "jsAppModuleName":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/facebook/react/ReactRootView;->mWasMeasured:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    .line 672
    iget v5, p0, Lcom/facebook/react/ReactRootView;->mWidthMeasureSpec:I

    iget v7, p0, Lcom/facebook/react/ReactRootView;->mHeightMeasureSpec:I

    invoke-direct {p0, v6, v5, v7}, Lcom/facebook/react/ReactRootView;->updateRootLayoutSpecs(ZII)V

    .line 675
    :cond_2
    new-instance v5, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v5}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 676
    .local v5, "appParams":Lcom/facebook/react/bridge/WritableNativeMap;
    const-string/jumbo v7, "rootTag"

    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getRootViewTag()I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {v5, v7, v8, v9}, Lcom/facebook/react/bridge/WritableNativeMap;->putDouble(Ljava/lang/String;D)V

    .line 677
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getAppProperties()Landroid/os/Bundle;

    move-result-object v7

    .line 678
    .local v7, "appProperties":Landroid/os/Bundle;
    if-eqz v7, :cond_3

    .line 679
    const-string v8, "initialProps"

    invoke-static {v7}, Lcom/facebook/react/bridge/Arguments;->fromBundle(Landroid/os/Bundle;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/facebook/react/bridge/WritableNativeMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 682
    :cond_3
    iput-boolean v6, p0, Lcom/facebook/react/ReactRootView;->mShouldLogContentAppeared:Z

    .line 684
    const-class v6, Lcom/facebook/react/modules/appregistry/AppRegistry;

    invoke-interface {v3, v6}, Lcom/facebook/react/bridge/CatalystInstance;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v6

    check-cast v6, Lcom/facebook/react/modules/appregistry/AppRegistry;

    invoke-interface {v6, v4, v5}, Lcom/facebook/react/modules/appregistry/AppRegistry;->runApplication(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 686
    .end local v0    # "reactContext":Lcom/facebook/react/bridge/ReactContext;
    .end local v3    # "catalystInstance":Lcom/facebook/react/bridge/CatalystInstance;
    .end local v4    # "jsAppModuleName":Ljava/lang/String;
    .end local v5    # "appParams":Lcom/facebook/react/bridge/WritableNativeMap;
    .end local v7    # "appProperties":Landroid/os/Bundle;
    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 687
    nop

    .line 688
    return-void

    .line 686
    :cond_4
    :goto_0
    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 660
    return-void

    .line 686
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 687
    throw v0
.end method

.method sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/facebook/react/bridge/WritableMap;

    .line 806
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->hasActiveReactInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/bridge/ReactContext;->emitDeviceEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 809
    :cond_0
    return-void
.end method

.method public setAppProperties(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "appProperties"    # Landroid/os/Bundle;

    .line 644
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 645
    iput-object p1, p0, Lcom/facebook/react/ReactRootView;->mAppProperties:Landroid/os/Bundle;

    .line 646
    invoke-direct {p0}, Lcom/facebook/react/ReactRootView;->isRootViewTagSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->runApplication()V

    .line 649
    :cond_0
    return-void
.end method

.method public setEventListener(Lcom/facebook/react/ReactRootView$ReactRootViewEventListener;)V
    .locals 0
    .param p1, "eventListener"    # Lcom/facebook/react/ReactRootView$ReactRootViewEventListener;

    .line 629
    iput-object p1, p0, Lcom/facebook/react/ReactRootView;->mRootViewEventListener:Lcom/facebook/react/ReactRootView$ReactRootViewEventListener;

    .line 630
    return-void
.end method

.method public setIsFabric(Z)V
    .locals 1
    .param p1, "isFabric"    # Z

    .line 792
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/facebook/react/ReactRootView;->mUIManagerType:I

    .line 793
    return-void
.end method

.method public setRootViewTag(I)V
    .locals 0
    .param p1, "rootViewTag"    # I

    .line 778
    iput p1, p0, Lcom/facebook/react/ReactRootView;->mRootViewTag:I

    .line 779
    return-void
.end method

.method public setShouldLogContentAppeared(Z)V
    .locals 0
    .param p1, "shouldLogContentAppeared"    # Z

    .line 515
    iput-boolean p1, p0, Lcom/facebook/react/ReactRootView;->mShouldLogContentAppeared:Z

    .line 516
    return-void
.end method

.method public shouldDispatchJSTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 246
    const/4 v0, 0x1

    return v0
.end method

.method simulateAttachForTesting()V
    .locals 1
    .annotation runtime Lcom/facebook/react/common/annotations/VisibleForTesting;
    .end annotation

    .line 696
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/ReactRootView;->mIsAttachedToInstance:Z

    .line 697
    new-instance v0, Lcom/facebook/react/uimanager/JSTouchDispatcher;

    invoke-direct {v0, p0}, Lcom/facebook/react/uimanager/JSTouchDispatcher;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/facebook/react/ReactRootView;->mJSTouchDispatcher:Lcom/facebook/react/uimanager/JSTouchDispatcher;

    .line 698
    sget-boolean v0, Lcom/facebook/react/config/ReactFeatureFlags;->dispatchPointerEvents:Z

    if-eqz v0, :cond_0

    .line 699
    new-instance v0, Lcom/facebook/react/uimanager/JSPointerDispatcher;

    invoke-direct {v0, p0}, Lcom/facebook/react/uimanager/JSPointerDispatcher;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/facebook/react/ReactRootView;->mJSPointerDispatcher:Lcom/facebook/react/uimanager/JSPointerDispatcher;

    .line 701
    :cond_0
    return-void
.end method

.method simulateCheckForKeyboardForTesting()V
    .locals 2
    .annotation runtime Lcom/facebook/react/common/annotations/VisibleForTesting;
    .end annotation

    .line 705
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 706
    invoke-direct {p0}, Lcom/facebook/react/ReactRootView;->getCustomGlobalLayoutListener()Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->-$$Nest$mcheckForKeyboardEvents(Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;)V

    goto :goto_0

    .line 708
    :cond_0
    invoke-direct {p0}, Lcom/facebook/react/ReactRootView;->getCustomGlobalLayoutListener()Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->-$$Nest$mcheckForKeyboardEventsLegacy(Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;)V

    .line 710
    :goto_0
    return-void
.end method

.method public startReactApplication(Lcom/facebook/react/ReactInstanceManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "reactInstanceManager"    # Lcom/facebook/react/ReactInstanceManager;
    .param p2, "moduleName"    # Ljava/lang/String;

    .line 450
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/react/ReactRootView;->startReactApplication(Lcom/facebook/react/ReactInstanceManager;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 451
    return-void
.end method

.method public startReactApplication(Lcom/facebook/react/ReactInstanceManager;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "reactInstanceManager"    # Lcom/facebook/react/ReactInstanceManager;
    .param p2, "moduleName"    # Ljava/lang/String;
    .param p3, "initialProperties"    # Landroid/os/Bundle;

    .line 464
    const-string/jumbo v0, "startReactApplication"

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v0}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 466
    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 471
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "This root view has already been attached to a catalyst instance manager"

    invoke-static {v0, v3}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(ZLjava/lang/String;)V

    .line 475
    iput-object p1, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    .line 476
    iput-object p2, p0, Lcom/facebook/react/ReactRootView;->mJSModuleName:Ljava/lang/String;

    .line 477
    iput-object p3, p0, Lcom/facebook/react/ReactRootView;->mAppProperties:Landroid/os/Bundle;

    .line 479
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManager;->createReactContextInBackground()V

    .line 482
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableEagerRootViewAttachment()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 483
    iget-boolean v0, p0, Lcom/facebook/react/ReactRootView;->mWasMeasured:Z

    if-nez v0, :cond_1

    .line 486
    invoke-direct {p0}, Lcom/facebook/react/ReactRootView;->setSurfaceConstraintsToScreenSize()V

    .line 488
    :cond_1
    invoke-direct {p0}, Lcom/facebook/react/ReactRootView;->attachToReactInstanceManager()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    :cond_2
    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 492
    nop

    .line 493
    return-void

    .line 491
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 492
    throw v0
.end method

.method public unmountReactApplication()V
    .locals 2

    .line 592
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 593
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/react/ReactRootView;->mIsAttachedToInstance:Z

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    invoke-virtual {v0, p0}, Lcom/facebook/react/ReactInstanceManager;->detachRootView(Lcom/facebook/react/uimanager/ReactRoot;)V

    .line 595
    iput-boolean v1, p0, Lcom/facebook/react/ReactRootView;->mIsAttachedToInstance:Z

    .line 597
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    .line 598
    iput-boolean v1, p0, Lcom/facebook/react/ReactRootView;->mShouldLogContentAppeared:Z

    .line 599
    return-void
.end method
