.class public Lcom/facebook/react/views/scroll/ReactHorizontalScrollViewManager;
.super Lcom/facebook/react/uimanager/ViewGroupManager;
.source "ReactHorizontalScrollViewManager.java"

# interfaces
.implements Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollCommandHandler;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "AndroidHorizontalScrollView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/ViewGroupManager<",
        "Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;",
        ">;",
        "Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollCommandHandler<",
        "Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;",
        ">;"
    }
.end annotation


# static fields
.field public static final REACT_CLASS:Ljava/lang/String; = "AndroidHorizontalScrollView"

.field private static final SPACING_TYPES:[I


# instance fields
.field private mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 54
    const/4 v0, 0x1

    const/4 v1, 0x3

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x2

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollViewManager;->SPACING_TYPES:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollViewManager;-><init>(Lcom/facebook/react/views/scroll/FpsListener;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/views/scroll/FpsListener;)V
    .locals 1
    .param p1, "fpsListener"    # Lcom/facebook/react/views/scroll/FpsListener;

    .line 64
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ViewGroupManager;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollViewManager;->mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;

    .line 65
    iput-object p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollViewManager;->mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;

    .line 66
    return-void
.end method


# virtual methods
.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    move-result-object p1

    return-object p1
.end method

.method public createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .locals 2
    .param p1, "context"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 75
    new-instance v0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollViewManager;->mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;

    invoke-direct {v0, p1, v1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;-><init>(Landroid/content/Context;Lcom/facebook/react/views/scroll/FpsListener;)V

    return-object v0
.end method

.method public flashScrollIndicators(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;)V
    .locals 0
    .param p1, "scrollView"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    .line 210
    invoke-virtual {p1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->flashScrollIndicators()V

    .line 211
    return-void
.end method

.method public bridge synthetic flashScrollIndicators(Ljava/lang/Object;)V
    .locals 0

    .line 47
    check-cast p1, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    invoke-virtual {p0, p1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollViewManager;->flashScrollIndicators(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 70
    const-string v0, "AndroidHorizontalScrollView"

    return-object v0
.end method

.method public bridge synthetic receiveCommand(Landroid/view/View;ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 0

    .line 47
    check-cast p1, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollViewManager;->receiveCommand(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;ILcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public bridge synthetic receiveCommand(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0

    .line 47
    check-cast p1, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollViewManager;->receiveCommand(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public receiveCommand(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p1, "scrollView"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "commandId"    # I
    .param p3, "args"    # Lcom/facebook/react/bridge/ReadableArray;

    .line 199
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper;->receiveCommand(Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollCommandHandler;Ljava/lang/Object;ILcom/facebook/react/bridge/ReadableArray;)V

    .line 200
    return-void
.end method

.method public receiveCommand(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p1, "scrollView"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "commandId"    # Ljava/lang/String;
    .param p3, "args"    # Lcom/facebook/react/bridge/ReadableArray;

    .line 205
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper;->receiveCommand(Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollCommandHandler;Ljava/lang/Object;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 206
    return-void
.end method

.method public scrollTo(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollToCommandData;)V
    .locals 2
    .param p1, "scrollView"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "data"    # Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollToCommandData;

    .line 216
    invoke-virtual {p1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->abortAnimation()V

    .line 217
    iget-boolean v0, p2, Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollToCommandData;->mAnimated:Z

    if-eqz v0, :cond_0

    .line 218
    iget v0, p2, Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollToCommandData;->mDestX:I

    iget v1, p2, Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollToCommandData;->mDestY:I

    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->reactSmoothScrollTo(II)V

    goto :goto_0

    .line 220
    :cond_0
    iget v0, p2, Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollToCommandData;->mDestX:I

    iget v1, p2, Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollToCommandData;->mDestY:I

    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->scrollTo(II)V

    .line 222
    :goto_0
    return-void
.end method

.method public bridge synthetic scrollTo(Ljava/lang/Object;Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollToCommandData;)V
    .locals 0

    .line 47
    check-cast p1, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollViewManager;->scrollTo(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollToCommandData;)V

    return-void
.end method

.method public scrollToEnd(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollToEndCommandData;)V
    .locals 3
    .param p1, "scrollView"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "data"    # Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollToEndCommandData;

    .line 231
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 232
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 236
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    .line 237
    .local v1, "right":I
    invoke-virtual {p1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->abortAnimation()V

    .line 238
    iget-boolean v2, p2, Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollToEndCommandData;->mAnimated:Z

    if-eqz v2, :cond_0

    .line 239
    invoke-virtual {p1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->reactSmoothScrollTo(II)V

    goto :goto_0

    .line 241
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->scrollTo(II)V

    .line 243
    :goto_0
    return-void

    .line 233
    .end local v1    # "right":I
    :cond_1
    new-instance v1, Lcom/facebook/react/bridge/RetryableMountingLayerException;

    const-string/jumbo v2, "scrollToEnd called on HorizontalScrollView without child"

    invoke-direct {v1, v2}, Lcom/facebook/react/bridge/RetryableMountingLayerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic scrollToEnd(Ljava/lang/Object;Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollToEndCommandData;)V
    .locals 0

    .line 47
    check-cast p1, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollViewManager;->scrollToEnd(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollToEndCommandData;)V

    return-void
.end method

.method public bridge synthetic setBackgroundColor(Landroid/view/View;I)V
    .locals 0

    .line 47
    check-cast p1, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollViewManager;->setBackgroundColor(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;I)V

    return-void
.end method

.method public setBackgroundColor(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;I)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "backgroundColor"    # I

    .line 402
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBackgroundColor(Landroid/view/View;Ljava/lang/Integer;)V

    goto :goto_0

    .line 405
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/facebook/react/uimanager/ViewGroupManager;->setBackgroundColor(Landroid/view/View;I)V

    .line 407
    :goto_0
    return-void
.end method

.method public setBorderColor(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;ILjava/lang/Integer;)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "index"    # I
    .param p3, "color"    # Ljava/lang/Integer;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactPropGroup;
        customType = "Color"
        names = {
            "borderColor",
            "borderLeftColor",
            "borderRightColor",
            "borderTopColor",
            "borderBottomColor"
        }
    .end annotation

    .line 329
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    sget-object v0, Lcom/facebook/react/uimanager/style/LogicalEdge;->ALL:Lcom/facebook/react/uimanager/style/LogicalEdge;

    invoke-static {p1, v0, p3}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBorderColor(Landroid/view/View;Lcom/facebook/react/uimanager/style/LogicalEdge;Ljava/lang/Integer;)V

    goto :goto_0

    .line 332
    :cond_0
    sget-object v0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollViewManager;->SPACING_TYPES:[I

    aget v0, v0, p2

    invoke-virtual {p1, v0, p3}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setBorderColor(ILjava/lang/Integer;)V

    .line 334
    :goto_0
    return-void
.end method

.method public setBorderRadius(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;IF)V
    .locals 2
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "index"    # I
    .param p3, "borderRadius"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactPropGroup;
        defaultFloat = NaNf
        names = {
            "borderRadius",
            "borderTopLeftRadius",
            "borderTopRightRadius",
            "borderBottomRightRadius",
            "borderBottomLeftRadius"
        }
    .end annotation

    .line 267
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    const/4 v0, 0x0

    goto :goto_0

    .line 272
    :cond_0
    new-instance v0, Lcom/facebook/react/uimanager/LengthPercentage;

    sget-object v1, Lcom/facebook/react/uimanager/LengthPercentageType;->POINT:Lcom/facebook/react/uimanager/LengthPercentageType;

    invoke-direct {v0, p3, v1}, Lcom/facebook/react/uimanager/LengthPercentage;-><init>(FLcom/facebook/react/uimanager/LengthPercentageType;)V

    :goto_0
    nop

    .line 273
    .local v0, "radius":Lcom/facebook/react/uimanager/LengthPercentage;
    invoke-static {}, Lcom/facebook/react/uimanager/style/BorderRadiusProp;->values()[Lcom/facebook/react/uimanager/style/BorderRadiusProp;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-static {p1, v1, v0}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBorderRadius(Landroid/view/View;Lcom/facebook/react/uimanager/style/BorderRadiusProp;Lcom/facebook/react/uimanager/LengthPercentage;)V

    .line 274
    .end local v0    # "radius":Lcom/facebook/react/uimanager/LengthPercentage;
    goto :goto_1

    .line 275
    :cond_1
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    .line 276
    invoke-static {p3}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result p3

    .line 279
    :cond_2
    if-nez p2, :cond_3

    .line 280
    invoke-virtual {p1, p3}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setBorderRadius(F)V

    goto :goto_1

    .line 282
    :cond_3
    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p1, p3, v0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setBorderRadius(FI)V

    .line 285
    :goto_1
    return-void
.end method

.method public setBorderStyle(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "borderStyle"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "borderStyle"
    .end annotation

    .line 289
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/facebook/react/uimanager/style/BorderStyle;->fromString(Ljava/lang/String;)Lcom/facebook/react/uimanager/style/BorderStyle;

    move-result-object v0

    .line 293
    .local v0, "parsedBorderStyle":Lcom/facebook/react/uimanager/style/BorderStyle;
    :goto_0
    invoke-static {p1, v0}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBorderStyle(Landroid/view/View;Lcom/facebook/react/uimanager/style/BorderStyle;)V

    .line 294
    .end local v0    # "parsedBorderStyle":Lcom/facebook/react/uimanager/style/BorderStyle;
    goto :goto_1

    .line 295
    :cond_1
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setBorderStyle(Ljava/lang/String;)V

    .line 297
    :goto_1
    return-void
.end method

.method public setBorderWidth(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;IF)V
    .locals 2
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "index"    # I
    .param p3, "width"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactPropGroup;
        defaultFloat = NaNf
        names = {
            "borderWidth",
            "borderLeftWidth",
            "borderRightWidth",
            "borderTopWidth",
            "borderBottomWidth"
        }
    .end annotation

    .line 309
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    invoke-static {}, Lcom/facebook/react/uimanager/style/LogicalEdge;->values()[Lcom/facebook/react/uimanager/style/LogicalEdge;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBorderWidth(Landroid/view/View;Lcom/facebook/react/uimanager/style/LogicalEdge;Ljava/lang/Float;)V

    goto :goto_0

    .line 312
    :cond_0
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    .line 313
    invoke-static {p3}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result p3

    .line 315
    :cond_1
    sget-object v0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollViewManager;->SPACING_TYPES:[I

    aget v0, v0, p2

    invoke-virtual {p1, v0, p3}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setBorderWidth(IF)V

    .line 317
    :goto_0
    return-void
.end method

.method public setBottomFillColor(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;I)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "color"    # I
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        defaultInt = 0x0
        name = "endFillColor"
    .end annotation

    .line 254
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setEndFillColor(I)V

    .line 255
    return-void
.end method

.method public setBoxShadow(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "shadows"    # Lcom/facebook/react/bridge/ReadableArray;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "BoxShadow"
        name = "boxShadow"
    .end annotation

    .line 395
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    invoke-static {p1, p2}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBoxShadow(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 398
    :cond_0
    return-void
.end method

.method public setContentOffset(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 6
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "value"    # Lcom/facebook/react/bridge/ReadableMap;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "contentOffset"
    .end annotation

    .line 359
    if-eqz p2, :cond_2

    .line 360
    const-string/jumbo v0, "x"

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    .line 361
    .local v0, "x":D
    :goto_0
    const-string/jumbo v4, "y"

    invoke-interface {p2, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p2, v4}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 362
    .local v2, "y":D
    :cond_1
    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result v4

    float-to-int v4, v4

    invoke-static {v2, v3}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1, v4, v5}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->scrollTo(II)V

    .line 363
    .end local v0    # "x":D
    .end local v2    # "y":D
    goto :goto_1

    .line 364
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->scrollTo(II)V

    .line 366
    :goto_1
    return-void
.end method

.method public setDecelerationRate(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;F)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "decelerationRate"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "decelerationRate"
    .end annotation

    .line 97
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setDecelerationRate(F)V

    .line 98
    return-void
.end method

.method public setDisableIntervalMomentum(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Z)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "disableIntervalMomentum"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "disableIntervalMomentum"
    .end annotation

    .line 108
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setDisableIntervalMomentum(Z)V

    .line 109
    return-void
.end method

.method public setEnableSyncOnScroll(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Z)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "enableSyncOnScroll"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "enableSyncOnScroll"
    .end annotation

    .line 102
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setEnableSyncOnScroll(Z)V

    .line 103
    return-void
.end method

.method public setFadingEdgeLength(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;I)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "value"    # I
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "fadingEdgeLength"
    .end annotation

    .line 348
    if-lez p2, :cond_0

    .line 349
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 350
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setFadingEdgeLength(I)V

    goto :goto_0

    .line 352
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 353
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setFadingEdgeLength(I)V

    .line 355
    :goto_0
    return-void
.end method

.method public setHorizontal(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Z)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "horizontal"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "horizontal"
    .end annotation

    .line 391
    return-void
.end method

.method public setMaintainVisibleContentPosition(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "value"    # Lcom/facebook/react/bridge/ReadableMap;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "maintainVisibleContentPosition"
    .end annotation

    .line 370
    if-eqz p2, :cond_0

    .line 371
    nop

    .line 372
    invoke-static {p2}, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper$Config;->fromReadableMap(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper$Config;

    move-result-object v0

    .line 371
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setMaintainVisibleContentPosition(Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper$Config;)V

    goto :goto_0

    .line 374
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setMaintainVisibleContentPosition(Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper$Config;)V

    .line 376
    :goto_0
    return-void
.end method

.method public setNestedScrollEnabled(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Z)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "value"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "nestedScrollEnabled"
    .end annotation

    .line 193
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    .line 194
    return-void
.end method

.method public setOverScrollMode(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "overScrollMode"
    .end annotation

    .line 188
    invoke-static {p2}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->parseOverScrollMode(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setOverScrollMode(I)V

    .line 189
    return-void
.end method

.method public setOverflow(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "overflow"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "overflow"
    .end annotation

    .line 338
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setOverflow(Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method public setPagingEnabled(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Z)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "pagingEnabled"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "pagingEnabled"
    .end annotation

    .line 182
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setPagingEnabled(Z)V

    .line 183
    return-void
.end method

.method public setPersistentScrollbar(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Z)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "value"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "persistentScrollbar"
    .end annotation

    .line 343
    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setScrollbarFadingEnabled(Z)V

    .line 344
    return-void
.end method

.method public setPointerEvents(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "pointerEventsStr"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "pointerEvents"
    .end annotation

    .line 380
    invoke-static {p2}, Lcom/facebook/react/uimanager/PointerEvents;->parsePointerEvents(Ljava/lang/String;)Lcom/facebook/react/uimanager/PointerEvents;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setPointerEvents(Lcom/facebook/react/uimanager/PointerEvents;)V

    .line 381
    return-void
.end method

.method public setRemoveClippedSubviews(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Z)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "removeClippedSubviews"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "removeClippedSubviews"
    .end annotation

    .line 152
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setRemoveClippedSubviews(Z)V

    .line 153
    return-void
.end method

.method public setScrollEnabled(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Z)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "value"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = true
        name = "scrollEnabled"
    .end annotation

    .line 87
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setScrollEnabled(Z)V

    .line 88
    return-void
.end method

.method public setScrollEventThrottle(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;I)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "scrollEventThrottle"    # I
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "scrollEventThrottle"
    .end annotation

    .line 385
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setScrollEventThrottle(I)V

    .line 386
    return-void
.end method

.method public setScrollPerfTag(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "scrollPerfTag"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "scrollPerfTag"
    .end annotation

    .line 177
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setScrollPerfTag(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public setSendMomentumEvents(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Z)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "sendMomentumEvents"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "sendMomentumEvents"
    .end annotation

    .line 165
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setSendMomentumEvents(Z)V

    .line 166
    return-void
.end method

.method public setShowsHorizontalScrollIndicator(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Z)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "value"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = true
        name = "showsHorizontalScrollIndicator"
    .end annotation

    .line 92
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 93
    return-void
.end method

.method public setSnapToAlignment(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "alignment"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "snapToAlignment"
    .end annotation

    .line 120
    invoke-static {p2}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->parseSnapToAlignment(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setSnapToAlignment(I)V

    .line 121
    return-void
.end method

.method public setSnapToEnd(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Z)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "snapToEnd"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "snapToEnd"
    .end annotation

    .line 146
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setSnapToEnd(Z)V

    .line 147
    return-void
.end method

.method public setSnapToInterval(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;F)V
    .locals 2
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "snapToInterval"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "snapToInterval"
    .end annotation

    .line 114
    invoke-static {}, Lcom/facebook/react/uimanager/PixelUtil;->getDisplayMetricDensity()F

    move-result v0

    .line 115
    .local v0, "density":F
    mul-float v1, p2, v0

    float-to-int v1, v1

    invoke-virtual {p1, v1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setSnapInterval(I)V

    .line 116
    return-void
.end method

.method public setSnapToOffsets(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 7
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "snapToOffsets"    # Lcom/facebook/react/bridge/ReadableArray;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "snapToOffsets"
    .end annotation

    .line 126
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 131
    :cond_0
    invoke-static {}, Lcom/facebook/react/uimanager/PixelUtil;->getDisplayMetricDensity()F

    move-result v0

    .line 132
    .local v0, "density":F
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v1, "offsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 134
    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v3

    float-to-double v5, v0

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p1, v1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setSnapOffsets(Ljava/util/List;)V

    .line 137
    return-void

    .line 127
    .end local v0    # "density":F
    .end local v1    # "offsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setSnapOffsets(Ljava/util/List;)V

    .line 128
    return-void
.end method

.method public setSnapToStart(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Z)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "snapToStart"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "snapToStart"
    .end annotation

    .line 141
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setSnapToStart(Z)V

    .line 142
    return-void
.end method

.method public bridge synthetic updateState(Landroid/view/View;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/StateWrapper;)Ljava/lang/Object;
    .locals 0

    .line 47
    check-cast p1, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollViewManager;->updateState(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/StateWrapper;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updateState(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/StateWrapper;)Ljava/lang/Object;
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "props"    # Lcom/facebook/react/uimanager/ReactStylesDiffMap;
    .param p3, "stateWrapper"    # Lcom/facebook/react/uimanager/StateWrapper;

    .line 81
    invoke-virtual {p1, p3}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setStateWrapper(Lcom/facebook/react/uimanager/StateWrapper;)V

    .line 82
    const/4 v0, 0x0

    return-object v0
.end method
