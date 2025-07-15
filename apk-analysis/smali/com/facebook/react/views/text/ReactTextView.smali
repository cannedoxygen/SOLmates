.class public Lcom/facebook/react/views/text/ReactTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "ReactTextView.java"

# interfaces
.implements Lcom/facebook/react/uimanager/ReactCompoundView;


# static fields
.field private static final DEFAULT_GRAVITY:I = 0x800033

.field private static final EMPTY_LAYOUT_PARAMS:Landroid/view/ViewGroup$LayoutParams;


# instance fields
.field private mAdjustsFontSizeToFit:Z

.field private mContainsImages:Z

.field private mEllipsizeLocation:Landroid/text/TextUtils$TruncateAt;

.field private mFontSize:F

.field private mLetterSpacing:F

.field private mLinkifyMaskType:I

.field private mMinimumFontSize:F

.field private mNotifyOnInlineViewLayout:Z

.field private mNumberOfLines:I

.field private mOverflow:Lcom/facebook/react/uimanager/style/Overflow;

.field private mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

.field private mShouldAdjustSpannableFontSize:Z

.field private mSpanned:Landroid/text/Spannable;

.field private mTextIsSelectable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/facebook/react/views/text/ReactTextView;->EMPTY_LAYOUT_PARAMS:Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 87
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 81
    sget-object v0, Lcom/facebook/react/uimanager/style/Overflow;->VISIBLE:Lcom/facebook/react/uimanager/style/Overflow;

    iput-object v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mOverflow:Lcom/facebook/react/uimanager/style/Overflow;

    .line 88
    invoke-direct {p0}, Lcom/facebook/react/views/text/ReactTextView;->initView()V

    .line 89
    return-void
.end method

.method private applyTextAttributes()V
    .locals 2

    .line 796
    iget v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mFontSize:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 797
    const/4 v0, 0x0

    iget v1, p0, Lcom/facebook/react/views/text/ReactTextView;->mFontSize:F

    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/text/ReactTextView;->setTextSize(IF)V

    .line 800
    :cond_0
    iget v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mLetterSpacing:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    .line 801
    iget v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mLetterSpacing:F

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setLetterSpacing(F)V

    .line 803
    :cond_1
    return-void
.end method

.method private getReactContext()Lcom/facebook/react/bridge/ReactContext;
    .locals 2

    .line 189
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 190
    .local v0, "context":Landroid/content/Context;
    instance-of v1, v0, Landroidx/appcompat/widget/TintContextWrapper;

    if-eqz v1, :cond_0

    .line 191
    move-object v1, v0

    check-cast v1, Landroidx/appcompat/widget/TintContextWrapper;

    invoke-virtual {v1}, Landroidx/appcompat/widget/TintContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/ReactContext;

    goto :goto_0

    .line 192
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/facebook/react/bridge/ReactContext;

    .line 190
    :goto_0
    return-object v1
.end method

.method private initView()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->cleanup()V

    .line 101
    :cond_0
    new-instance v0, Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-direct {v0, p0}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    .line 103
    const v0, 0x7fffffff

    iput v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mNumberOfLines:I

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mAdjustsFontSizeToFit:Z

    .line 105
    iput v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mLinkifyMaskType:I

    .line 106
    iput-boolean v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mNotifyOnInlineViewLayout:Z

    .line 107
    iput-boolean v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mTextIsSelectable:Z

    .line 108
    iput-boolean v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mShouldAdjustSpannableFontSize:Z

    .line 109
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    iput-object v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mEllipsizeLocation:Landroid/text/TextUtils$TruncateAt;

    .line 110
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mFontSize:F

    .line 111
    iput v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mMinimumFontSize:F

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mLetterSpacing:F

    .line 113
    sget-object v0, Lcom/facebook/react/uimanager/style/Overflow;->VISIBLE:Lcom/facebook/react/uimanager/style/Overflow;

    iput-object v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mOverflow:Lcom/facebook/react/uimanager/style/Overflow;

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mSpanned:Landroid/text/Spannable;

    .line 115
    return-void
.end method

.method private static inlineViewJson(IIIIII)Lcom/facebook/react/bridge/WritableMap;
    .locals 4
    .param p0, "visibility"    # I
    .param p1, "index"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 170
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 171
    .local v0, "json":Lcom/facebook/react/bridge/WritableMap;
    const/16 v1, 0x8

    const-string v2, "index"

    const-string/jumbo v3, "visibility"

    if-ne p0, v1, :cond_0

    .line 172
    const-string v1, "gone"

    invoke-interface {v0, v3, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-interface {v0, v2, p1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 174
    :cond_0
    if-nez p0, :cond_1

    .line 175
    const-string/jumbo v1, "visible"

    invoke-interface {v0, v3, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-interface {v0, v2, p1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 177
    int-to-float v1, p2

    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v1

    float-to-double v1, v1

    const-string v3, "left"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 178
    int-to-float v1, p3

    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v1

    float-to-double v1, v1

    const-string/jumbo v3, "top"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 179
    int-to-float v1, p4

    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v1

    float-to-double v1, v1

    const-string/jumbo v3, "right"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 180
    int-to-float v1, p5

    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v1

    float-to-double v1, v1

    const-string v3, "bottom"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 182
    :cond_1
    const-string/jumbo v1, "unknown"

    invoke-interface {v0, v3, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-interface {v0, v2, p1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 185
    :goto_0
    return-object v0
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 781
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->hasAccessibilityDelegate(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 782
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getAccessibilityDelegate(Landroid/view/View;)Landroidx/core/view/AccessibilityDelegateCompat;

    move-result-object v0

    .line 783
    .local v0, "delegate":Landroidx/core/view/AccessibilityDelegateCompat;
    instance-of v1, v0, Landroidx/customview/widget/ExploreByTouchHelper;

    if-eqz v1, :cond_2

    .line 784
    move-object v1, v0

    check-cast v1, Landroidx/customview/widget/ExploreByTouchHelper;

    invoke-virtual {v1, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 785
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 784
    :goto_1
    return v1

    .line 789
    .end local v0    # "delegate":Landroidx/core/view/AccessibilityDelegateCompat;
    :cond_2
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method getGravityHorizontal()I
    .locals 2

    .line 613
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getGravity()I

    move-result v0

    const v1, 0x800007

    and-int/2addr v0, v1

    return v0
.end method

.method public getSpanned()Landroid/text/Spannable;
    .locals 1

    .line 769
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mSpanned:Landroid/text/Spannable;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 609
    const/4 v0, 0x0

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 540
    iget-boolean v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mContainsImages:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    .line 541
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    .line 542
    .local v0, "text":Landroid/text/Spanned;
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;

    .line 543
    .local v1, "spans":[Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;
    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 544
    .local v4, "span":Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;
    invoke-virtual {v4}, Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-ne v5, p1, :cond_0

    .line 545
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->invalidate()V

    .line 543
    .end local v4    # "span":Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 549
    .end local v0    # "text":Landroid/text/Spanned;
    .end local v1    # "spans":[Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;
    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 550
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 5

    .line 584
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onAttachedToWindow()V

    .line 585
    iget-boolean v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mTextIsSelectable:Z

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/ReactTextView;->setTextIsSelectable(Z)V

    .line 586
    iget-boolean v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mContainsImages:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 587
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    .line 588
    .local v0, "text":Landroid/text/Spanned;
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;

    .line 589
    .local v1, "spans":[Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;
    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 590
    .local v4, "span":Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;
    invoke-virtual {v4}, Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;->onAttachedToWindow()V

    .line 589
    .end local v4    # "span":Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 593
    .end local v0    # "text":Landroid/text/Spanned;
    .end local v1    # "spans":[Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 5

    .line 554
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onDetachedFromWindow()V

    .line 555
    iget-boolean v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mContainsImages:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 556
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    .line 557
    .local v0, "text":Landroid/text/Spanned;
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;

    .line 558
    .local v1, "spans":[Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;
    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 559
    .local v4, "span":Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;
    invoke-virtual {v4}, Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;->onDetachedFromWindow()V

    .line 558
    .end local v4    # "span":Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 562
    .end local v0    # "text":Landroid/text/Spanned;
    .end local v1    # "spans":[Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 379
    new-instance v0, Lcom/facebook/react/internal/SystraceSection;

    const-string v1, "ReactTextView.onDraw"

    invoke-direct {v0, v1}, Lcom/facebook/react/internal/SystraceSection;-><init>(Ljava/lang/String;)V

    .line 380
    .local v0, "s":Lcom/facebook/react/internal/SystraceSection;
    :try_start_0
    iget-boolean v1, p0, Lcom/facebook/react/views/text/ReactTextView;->mAdjustsFontSizeToFit:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getSpanned()Landroid/text/Spannable;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/facebook/react/views/text/ReactTextView;->mShouldAdjustSpannableFontSize:Z

    if-eqz v1, :cond_0

    .line 381
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/react/views/text/ReactTextView;->mShouldAdjustSpannableFontSize:Z

    .line 382
    nop

    .line 383
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getSpanned()Landroid/text/Spannable;

    move-result-object v2

    .line 384
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getWidth()I

    move-result v1

    int-to-float v3, v1

    sget-object v4, Lcom/facebook/yoga/YogaMeasureMode;->EXACTLY:Lcom/facebook/yoga/YogaMeasureMode;

    .line 386
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getHeight()I

    move-result v1

    int-to-float v5, v1

    sget-object v6, Lcom/facebook/yoga/YogaMeasureMode;->EXACTLY:Lcom/facebook/yoga/YogaMeasureMode;

    iget v1, p0, Lcom/facebook/react/views/text/ReactTextView;->mMinimumFontSize:F

    float-to-double v7, v1

    iget v9, p0, Lcom/facebook/react/views/text/ReactTextView;->mNumberOfLines:I

    .line 390
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getIncludeFontPadding()Z

    move-result v10

    .line 391
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getBreakStrategy()I

    move-result v11

    .line 392
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getHyphenationFrequency()I

    move-result v12

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 382
    invoke-static/range {v2 .. v13}, Lcom/facebook/react/views/text/TextLayoutManager;->adjustSpannableFontToFit(Landroid/text/Spannable;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;DIZIILandroid/text/Layout$Alignment;)V

    .line 396
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getSpanned()Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/facebook/react/views/text/ReactTextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    :cond_0
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 400
    iget-object v1, p0, Lcom/facebook/react/views/text/ReactTextView;->mOverflow:Lcom/facebook/react/uimanager/style/Overflow;

    sget-object v2, Lcom/facebook/react/uimanager/style/Overflow;->VISIBLE:Lcom/facebook/react/uimanager/style/Overflow;

    if-eq v1, v2, :cond_2

    .line 401
    invoke-static {p0, p1}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->clipToPaddingBox(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 404
    :cond_1
    iget-object v1, p0, Lcom/facebook/react/views/text/ReactTextView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v1, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->maybeClipToPaddingBox(Landroid/graphics/Canvas;)V

    .line 407
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    invoke-virtual {v0}, Lcom/facebook/react/internal/SystraceSection;->close()V

    .line 409
    .end local v0    # "s":Lcom/facebook/react/internal/SystraceSection;
    return-void

    .line 379
    .restart local v0    # "s":Lcom/facebook/react/internal/SystraceSection;
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Lcom/facebook/react/internal/SystraceSection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
.end method

.method public onFinishTemporaryDetach()V
    .locals 5

    .line 597
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onFinishTemporaryDetach()V

    .line 598
    iget-boolean v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mContainsImages:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 599
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    .line 600
    .local v0, "text":Landroid/text/Spanned;
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;

    .line 601
    .local v1, "spans":[Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;
    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 602
    .local v4, "span":Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;
    invoke-virtual {v4}, Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;->onFinishTemporaryDetach()V

    .line 601
    .end local v4    # "span":Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 605
    .end local v0    # "text":Landroid/text/Spanned;
    .end local v1    # "spans":[Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 38
    .param p1, "changed"    # Z
    .param p2, "textViewLeft"    # I
    .param p3, "textViewTop"    # I
    .param p4, "textViewRight"    # I
    .param p5, "textViewBottom"    # I

    .line 199
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/text/ReactTextView;->getId()I

    move-result v1

    .line 200
    .local v1, "reactTag":I
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/text/ReactTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    instance-of v2, v2, Landroid/text/Spanned;

    if-eqz v2, :cond_1b

    .line 201
    invoke-static {v1}, Lcom/facebook/react/uimanager/common/ViewUtil;->getUIManagerType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    goto/16 :goto_12

    .line 218
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/facebook/react/views/text/ReactTextView;->getReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v2

    .line 219
    .local v2, "reactContext":Lcom/facebook/react/bridge/ReactContext;
    const-class v3, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 220
    invoke-virtual {v2, v3}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-static {v3}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 222
    .local v3, "uiManager":Lcom/facebook/react/uimanager/UIManagerModule;
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/text/ReactTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/Spanned;

    .line 223
    .local v4, "text":Landroid/text/Spanned;
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/text/ReactTextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    .line 224
    .local v5, "layout":Landroid/text/Layout;
    if-nez v5, :cond_1

    .line 232
    return-void

    .line 235
    :cond_1
    nop

    .line 236
    invoke-interface {v4}, Landroid/text/Spanned;->length()I

    move-result v6

    const-class v7, Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;

    const/4 v8, 0x0

    invoke-interface {v4, v8, v6, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;

    .line 238
    .local v6, "placeholders":[Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;
    iget-boolean v7, v0, Lcom/facebook/react/views/text/ReactTextView;->mNotifyOnInlineViewLayout:Z

    if-eqz v7, :cond_2

    new-instance v7, Ljava/util/ArrayList;

    array-length v9, v6

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    .line 239
    .local v7, "inlineViewInfoArray":Ljava/util/ArrayList;
    :goto_0
    sub-int v9, p4, p2

    .line 240
    .local v9, "textViewWidth":I
    sub-int v10, p5, p3

    .line 242
    .local v10, "textViewHeight":I
    array-length v11, v6

    move v12, v8

    :goto_1
    if-ge v12, v11, :cond_18

    aget-object v13, v6, v12

    .line 243
    .local v13, "placeholder":Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;
    invoke-virtual {v13}, Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;->getReactTag()I

    move-result v14

    invoke-virtual {v3, v14}, Lcom/facebook/react/uimanager/UIManagerModule;->resolveView(I)Landroid/view/View;

    move-result-object v14

    .line 245
    .local v14, "child":Landroid/view/View;
    invoke-interface {v4, v13}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v15

    .line 246
    .local v15, "start":I
    invoke-virtual {v5, v15}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    .line 247
    .local v8, "line":I
    invoke-virtual {v5, v8}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v16

    const/16 v17, 0x1

    if-lez v16, :cond_3

    move/from16 v16, v17

    goto :goto_2

    :cond_3
    const/16 v16, 0x0

    :goto_2
    move/from16 v21, v16

    .line 249
    .local v21, "isLineTruncated":Z
    move-object/from16 v22, v2

    .end local v2    # "reactContext":Lcom/facebook/react/bridge/ReactContext;
    .local v22, "reactContext":Lcom/facebook/react/bridge/ReactContext;
    if-eqz v21, :cond_5

    .line 253
    invoke-virtual {v5, v8}, Landroid/text/Layout;->getLineStart(I)I

    move-result v16

    invoke-virtual {v5, v8}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v18

    add-int v2, v16, v18

    if-ge v15, v2, :cond_4

    goto :goto_3

    :cond_4
    move-object/from16 v27, v4

    move-object/from16 v37, v5

    move-object/from16 v24, v6

    move/from16 v33, v8

    move/from16 v34, v9

    move/from16 v25, v11

    move-object/from16 v26, v13

    move v9, v15

    goto/16 :goto_f

    :cond_5
    :goto_3
    iget v2, v0, Lcom/facebook/react/views/text/ReactTextView;->mNumberOfLines:I

    if-ge v8, v2, :cond_16

    .line 261
    invoke-virtual {v5, v8}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    if-lt v15, v2, :cond_6

    move-object/from16 v27, v4

    move-object/from16 v37, v5

    move-object/from16 v24, v6

    move/from16 v33, v8

    move/from16 v34, v9

    move/from16 v25, v11

    move-object/from16 v26, v13

    move v9, v15

    goto/16 :goto_f

    .line 270
    :cond_6
    invoke-virtual {v13}, Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;->getWidth()I

    move-result v2

    .line 271
    .local v2, "width":I
    invoke-virtual {v13}, Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;->getHeight()I

    move-result v23

    .line 274
    .local v23, "height":I
    move-object/from16 v24, v6

    .end local v6    # "placeholders":[Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;
    .local v24, "placeholders":[Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;
    invoke-virtual {v5, v15}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v6

    .line 276
    .local v6, "isRtlChar":Z
    move/from16 v25, v11

    invoke-virtual {v5, v8}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    move-object/from16 v26, v13

    .end local v13    # "placeholder":Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;
    .local v26, "placeholder":Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;
    const/4 v13, -0x1

    if-ne v11, v13, :cond_7

    move/from16 v11, v17

    goto :goto_4

    :cond_7
    const/4 v11, 0x0

    .line 282
    .local v11, "isRtlParagraph":Z
    :goto_4
    invoke-interface {v4}, Landroid/text/Spanned;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v15, v13, :cond_c

    .line 283
    nop

    .line 284
    invoke-interface {v4}, Landroid/text/Spanned;->length()I

    move-result v13

    if-lez v13, :cond_8

    invoke-virtual {v5, v8}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-interface {v4, v13}, Landroid/text/Spanned;->charAt(I)C

    move-result v13

    move-object/from16 v27, v4

    .end local v4    # "text":Landroid/text/Spanned;
    .local v27, "text":Landroid/text/Spanned;
    const/16 v4, 0xa

    if-ne v13, v4, :cond_9

    move/from16 v4, v17

    goto :goto_5

    .end local v27    # "text":Landroid/text/Spanned;
    .restart local v4    # "text":Landroid/text/Spanned;
    :cond_8
    move-object/from16 v27, v4

    .end local v4    # "text":Landroid/text/Spanned;
    .restart local v27    # "text":Landroid/text/Spanned;
    :cond_9
    const/4 v4, 0x0

    .line 285
    .local v4, "endsWithNewLine":Z
    :goto_5
    if-eqz v4, :cond_a

    invoke-virtual {v5, v8}, Landroid/text/Layout;->getLineMax(I)F

    move-result v13

    goto :goto_6

    :cond_a
    invoke-virtual {v5, v8}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v13

    .line 287
    .local v13, "lineWidth":F
    :goto_6
    if-eqz v11, :cond_b

    .line 290
    move/from16 v16, v4

    .end local v4    # "endsWithNewLine":Z
    .local v16, "endsWithNewLine":Z
    float-to-int v4, v13

    sub-int v4, v9, v4

    goto :goto_7

    .line 291
    .end local v16    # "endsWithNewLine":Z
    .restart local v4    # "endsWithNewLine":Z
    :cond_b
    move/from16 v16, v4

    .end local v4    # "endsWithNewLine":Z
    .restart local v16    # "endsWithNewLine":Z
    invoke-virtual {v5, v8}, Landroid/text/Layout;->getLineRight(I)F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v4, v2

    :goto_7
    nop

    .line 292
    .end local v13    # "lineWidth":F
    .end local v16    # "endsWithNewLine":Z
    .local v4, "placeholderHorizontalPosition":I
    goto :goto_b

    .line 298
    .end local v27    # "text":Landroid/text/Spanned;
    .local v4, "text":Landroid/text/Spanned;
    :cond_c
    move-object/from16 v27, v4

    .end local v4    # "text":Landroid/text/Spanned;
    .restart local v27    # "text":Landroid/text/Spanned;
    if-ne v11, v6, :cond_d

    move/from16 v4, v17

    goto :goto_8

    :cond_d
    const/4 v4, 0x0

    .line 301
    .local v4, "characterAndParagraphDirectionMatch":Z
    :goto_8
    if-eqz v4, :cond_e

    .line 302
    invoke-virtual {v5, v15}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v13

    float-to-int v13, v13

    goto :goto_9

    .line 303
    :cond_e
    invoke-virtual {v5, v15}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v13

    float-to-int v13, v13

    :goto_9
    nop

    .line 305
    .local v13, "placeholderHorizontalPosition":I
    if-eqz v11, :cond_f

    .line 314
    nop

    .line 315
    move/from16 v16, v4

    .end local v4    # "characterAndParagraphDirectionMatch":Z
    .local v16, "characterAndParagraphDirectionMatch":Z
    invoke-virtual {v5, v8}, Landroid/text/Layout;->getLineRight(I)F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v4, v13

    sub-int v4, v9, v4

    .end local v13    # "placeholderHorizontalPosition":I
    .local v4, "placeholderHorizontalPosition":I
    goto :goto_a

    .line 305
    .end local v16    # "characterAndParagraphDirectionMatch":Z
    .local v4, "characterAndParagraphDirectionMatch":Z
    .restart local v13    # "placeholderHorizontalPosition":I
    :cond_f
    move/from16 v16, v4

    .end local v4    # "characterAndParagraphDirectionMatch":Z
    .restart local v16    # "characterAndParagraphDirectionMatch":Z
    move v4, v13

    .line 318
    .end local v13    # "placeholderHorizontalPosition":I
    .local v4, "placeholderHorizontalPosition":I
    :goto_a
    if-eqz v6, :cond_10

    .line 319
    sub-int/2addr v4, v2

    .line 324
    .end local v16    # "characterAndParagraphDirectionMatch":Z
    :cond_10
    :goto_b
    if-eqz v6, :cond_11

    .line 325
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/text/ReactTextView;->getTotalPaddingRight()I

    move-result v13

    add-int/2addr v13, v4

    goto :goto_c

    .line 326
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/text/ReactTextView;->getTotalPaddingLeft()I

    move-result v13

    add-int/2addr v13, v4

    :goto_c
    nop

    .line 328
    .local v13, "leftRelativeToTextView":I
    add-int v28, p2, v13

    .line 331
    .local v28, "left":I
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/text/ReactTextView;->getTotalPaddingTop()I

    move-result v16

    invoke-virtual {v5, v8}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v18

    add-int v16, v16, v18

    move/from16 v29, v4

    .end local v4    # "placeholderHorizontalPosition":I
    .local v29, "placeholderHorizontalPosition":I
    sub-int v4, v16, v23

    .line 332
    .local v4, "topRelativeToTextView":I
    add-int v30, p3, v4

    .line 334
    .local v30, "top":I
    if-le v9, v13, :cond_13

    if-gt v10, v4, :cond_12

    goto :goto_d

    :cond_12
    const/16 v17, 0x0

    :cond_13
    :goto_d
    move/from16 v31, v17

    .line 336
    .local v31, "isFullyClipped":Z
    if-eqz v31, :cond_14

    const/16 v19, 0x8

    goto :goto_e

    :cond_14
    const/16 v19, 0x0

    :goto_e
    move/from16 v32, v19

    .line 337
    .local v32, "layoutVisibility":I
    move/from16 v33, v28

    .line 338
    .local v33, "layoutLeft":I
    move/from16 v34, v30

    .line 339
    .local v34, "layoutTop":I
    move/from16 v35, v4

    .end local v4    # "topRelativeToTextView":I
    .local v35, "topRelativeToTextView":I
    add-int v4, v28, v2

    .line 340
    .local v4, "layoutRight":I
    move/from16 v36, v2

    .end local v2    # "width":I
    .local v36, "width":I
    add-int v2, v30, v23

    .line 343
    .local v2, "layoutBottom":I
    move-object/from16 v37, v5

    move/from16 v5, v32

    .end local v32    # "layoutVisibility":I
    .local v5, "layoutVisibility":I
    .local v37, "layout":Landroid/text/Layout;
    invoke-virtual {v14, v5}, Landroid/view/View;->setVisibility(I)V

    .line 344
    move/from16 v32, v6

    move/from16 v6, v33

    move/from16 v33, v8

    move/from16 v8, v34

    .end local v34    # "layoutTop":I
    .local v6, "layoutLeft":I
    .local v8, "layoutTop":I
    .local v32, "isRtlChar":Z
    .local v33, "line":I
    invoke-virtual {v14, v6, v8, v4, v2}, Landroid/view/View;->layout(IIII)V

    .line 345
    move/from16 v34, v9

    .end local v9    # "textViewWidth":I
    .local v34, "textViewWidth":I
    iget-boolean v9, v0, Lcom/facebook/react/views/text/ReactTextView;->mNotifyOnInlineViewLayout:Z

    if-eqz v9, :cond_15

    .line 346
    nop

    .line 347
    move v9, v15

    .end local v15    # "start":I
    .local v9, "start":I
    move v15, v5

    move/from16 v16, v9

    move/from16 v17, v6

    move/from16 v18, v8

    move/from16 v19, v4

    move/from16 v20, v2

    invoke-static/range {v15 .. v20}, Lcom/facebook/react/views/text/ReactTextView;->inlineViewJson(IIIIII)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v15

    .line 346
    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 345
    .end local v9    # "start":I
    .restart local v15    # "start":I
    :cond_15
    move v9, v15

    .end local v15    # "start":I
    .restart local v9    # "start":I
    goto :goto_10

    .line 253
    .end local v2    # "layoutBottom":I
    .end local v11    # "isRtlParagraph":Z
    .end local v23    # "height":I
    .end local v24    # "placeholders":[Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;
    .end local v26    # "placeholder":Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;
    .end local v27    # "text":Landroid/text/Spanned;
    .end local v28    # "left":I
    .end local v29    # "placeholderHorizontalPosition":I
    .end local v30    # "top":I
    .end local v31    # "isFullyClipped":Z
    .end local v32    # "isRtlChar":Z
    .end local v33    # "line":I
    .end local v34    # "textViewWidth":I
    .end local v35    # "topRelativeToTextView":I
    .end local v36    # "width":I
    .end local v37    # "layout":Landroid/text/Layout;
    .local v4, "text":Landroid/text/Spanned;
    .local v5, "layout":Landroid/text/Layout;
    .local v6, "placeholders":[Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;
    .local v8, "line":I
    .local v9, "textViewWidth":I
    .local v13, "placeholder":Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;
    .restart local v15    # "start":I
    :cond_16
    move-object/from16 v27, v4

    move-object/from16 v37, v5

    move-object/from16 v24, v6

    move/from16 v33, v8

    move/from16 v34, v9

    move/from16 v25, v11

    move-object/from16 v26, v13

    move v9, v15

    .line 265
    .end local v4    # "text":Landroid/text/Spanned;
    .end local v5    # "layout":Landroid/text/Layout;
    .end local v6    # "placeholders":[Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;
    .end local v8    # "line":I
    .end local v13    # "placeholder":Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;
    .end local v15    # "start":I
    .local v9, "start":I
    .restart local v24    # "placeholders":[Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;
    .restart local v26    # "placeholder":Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;
    .restart local v27    # "text":Landroid/text/Spanned;
    .restart local v33    # "line":I
    .restart local v34    # "textViewWidth":I
    .restart local v37    # "layout":Landroid/text/Layout;
    :goto_f
    const/16 v2, 0x8

    invoke-virtual {v14, v2}, Landroid/view/View;->setVisibility(I)V

    .line 266
    iget-boolean v2, v0, Lcom/facebook/react/views/text/ReactTextView;->mNotifyOnInlineViewLayout:Z

    if-eqz v2, :cond_17

    .line 267
    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v15, 0x8

    const/16 v17, -0x1

    const/16 v18, -0x1

    move/from16 v16, v9

    invoke-static/range {v15 .. v20}, Lcom/facebook/react/views/text/ReactTextView;->inlineViewJson(IIIIII)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    .end local v9    # "start":I
    .end local v14    # "child":Landroid/view/View;
    .end local v21    # "isLineTruncated":Z
    .end local v26    # "placeholder":Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;
    .end local v33    # "line":I
    :cond_17
    :goto_10
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, v22

    move-object/from16 v6, v24

    move/from16 v11, v25

    move-object/from16 v4, v27

    move/from16 v9, v34

    move-object/from16 v5, v37

    const/4 v8, 0x0

    goto/16 :goto_1

    .line 353
    .end local v22    # "reactContext":Lcom/facebook/react/bridge/ReactContext;
    .end local v24    # "placeholders":[Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;
    .end local v27    # "text":Landroid/text/Spanned;
    .end local v34    # "textViewWidth":I
    .end local v37    # "layout":Landroid/text/Layout;
    .local v2, "reactContext":Lcom/facebook/react/bridge/ReactContext;
    .restart local v4    # "text":Landroid/text/Spanned;
    .restart local v5    # "layout":Landroid/text/Layout;
    .restart local v6    # "placeholders":[Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;
    .local v9, "textViewWidth":I
    :cond_18
    move-object/from16 v22, v2

    move-object/from16 v27, v4

    move-object/from16 v37, v5

    move-object/from16 v24, v6

    move/from16 v34, v9

    .end local v2    # "reactContext":Lcom/facebook/react/bridge/ReactContext;
    .end local v4    # "text":Landroid/text/Spanned;
    .end local v5    # "layout":Landroid/text/Layout;
    .end local v6    # "placeholders":[Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;
    .end local v9    # "textViewWidth":I
    .restart local v22    # "reactContext":Lcom/facebook/react/bridge/ReactContext;
    .restart local v24    # "placeholders":[Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;
    .restart local v27    # "text":Landroid/text/Spanned;
    .restart local v34    # "textViewWidth":I
    .restart local v37    # "layout":Landroid/text/Layout;
    iget-boolean v2, v0, Lcom/facebook/react/views/text/ReactTextView;->mNotifyOnInlineViewLayout:Z

    if-eqz v2, :cond_1a

    .line 354
    new-instance v2, Lcom/facebook/react/views/text/ReactTextView$1;

    invoke-direct {v2, v0}, Lcom/facebook/react/views/text/ReactTextView$1;-><init>(Lcom/facebook/react/views/text/ReactTextView;)V

    invoke-static {v7, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 364
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v2

    .line 365
    .local v2, "inlineViewInfoArray2":Lcom/facebook/react/bridge/WritableArray;
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 366
    .local v5, "item":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {v2, v6}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 367
    .end local v5    # "item":Ljava/lang/Object;
    goto :goto_11

    .line 369
    :cond_19
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v4

    .line 370
    .local v4, "event":Lcom/facebook/react/bridge/WritableMap;
    const-string v5, "inlineViews"

    invoke-interface {v4, v5, v2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 371
    if-eqz v3, :cond_1a

    .line 372
    const-string/jumbo v5, "topInlineViewLayout"

    invoke-virtual {v3, v1, v5, v4}, Lcom/facebook/react/uimanager/UIManagerModule;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 375
    .end local v2    # "inlineViewInfoArray2":Lcom/facebook/react/bridge/WritableArray;
    .end local v4    # "event":Lcom/facebook/react/bridge/WritableMap;
    :cond_1a
    return-void

    .line 215
    .end local v3    # "uiManager":Lcom/facebook/react/uimanager/UIManagerModule;
    .end local v7    # "inlineViewInfoArray":Ljava/util/ArrayList;
    .end local v10    # "textViewHeight":I
    .end local v22    # "reactContext":Lcom/facebook/react/bridge/ReactContext;
    .end local v24    # "placeholders":[Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;
    .end local v27    # "text":Landroid/text/Spanned;
    .end local v34    # "textViewWidth":I
    .end local v37    # "layout":Landroid/text/Layout;
    :cond_1b
    :goto_12
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 413
    new-instance v0, Lcom/facebook/react/internal/SystraceSection;

    const-string v1, "ReactTextView.onMeasure"

    invoke-direct {v0, v1}, Lcom/facebook/react/internal/SystraceSection;-><init>(Ljava/lang/String;)V

    .line 414
    .local v0, "s":Lcom/facebook/react/internal/SystraceSection;
    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    invoke-virtual {v0}, Lcom/facebook/react/internal/SystraceSection;->close()V

    .line 416
    .end local v0    # "s":Lcom/facebook/react/internal/SystraceSection;
    return-void

    .line 413
    .restart local v0    # "s":Lcom/facebook/react/internal/SystraceSection;
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Lcom/facebook/react/internal/SystraceSection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public onStartTemporaryDetach()V
    .locals 5

    .line 566
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onStartTemporaryDetach()V

    .line 567
    iget-boolean v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mContainsImages:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 568
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    .line 569
    .local v0, "text":Landroid/text/Spanned;
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;

    .line 570
    .local v1, "spans":[Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;
    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 571
    .local v4, "span":Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;
    invoke-virtual {v4}, Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;->onStartTemporaryDetach()V

    .line 570
    .end local v4    # "span":Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 574
    .end local v0    # "text":Landroid/text/Spanned;
    .end local v1    # "spans":[Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;
    :cond_0
    return-void
.end method

.method public reactTagForTouch(FF)I
    .locals 18
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .line 473
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/text/ReactTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 474
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/text/ReactTextView;->getId()I

    move-result v2

    .line 476
    .local v2, "target":I
    move/from16 v3, p1

    float-to-int v4, v3

    .line 477
    .local v4, "x":I
    move/from16 v5, p2

    float-to-int v6, v5

    .line 479
    .local v6, "y":I
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/text/ReactTextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    .line 480
    .local v7, "layout":Landroid/text/Layout;
    if-nez v7, :cond_0

    .line 483
    return v2

    .line 485
    :cond_0
    invoke-virtual {v7, v6}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v8

    .line 487
    .local v8, "line":I
    invoke-virtual {v7, v8}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v0

    float-to-int v9, v0

    .line 488
    .local v9, "lineStartX":I
    invoke-virtual {v7, v8}, Landroid/text/Layout;->getLineRight(I)F

    move-result v0

    float-to-int v10, v0

    .line 491
    .local v10, "lineEndX":I
    instance-of v0, v1, Landroid/text/Spanned;

    if-eqz v0, :cond_5

    if-lt v4, v9, :cond_5

    if-gt v4, v10, :cond_5

    .line 492
    move-object v11, v1

    check-cast v11, Landroid/text/Spanned;

    .line 493
    .local v11, "spannedText":Landroid/text/Spanned;
    const/4 v12, -0x1

    .line 495
    .local v12, "index":I
    int-to-float v0, v4

    :try_start_0
    invoke-virtual {v7, v8, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    .end local v12    # "index":I
    .local v0, "index":I
    nop

    .line 506
    const-class v12, Lcom/facebook/react/views/text/internal/span/ReactTagSpan;

    invoke-interface {v11, v0, v0, v12}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/facebook/react/views/text/internal/span/ReactTagSpan;

    .line 508
    .local v12, "spans":[Lcom/facebook/react/views/text/internal/span/ReactTagSpan;
    if-eqz v12, :cond_4

    .line 509
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v13

    .line 510
    .local v13, "targetSpanTextLength":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    array-length v15, v12

    if-ge v14, v15, :cond_3

    .line 511
    aget-object v15, v12, v14

    invoke-interface {v11, v15}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v15

    .line 512
    .local v15, "spanStart":I
    move-object/from16 v16, v1

    .end local v1    # "text":Ljava/lang/CharSequence;
    .local v16, "text":Ljava/lang/CharSequence;
    aget-object v1, v12, v14

    invoke-interface {v11, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 513
    .local v1, "spanEnd":I
    if-lt v1, v0, :cond_1

    move/from16 v17, v0

    .end local v0    # "index":I
    .local v17, "index":I
    sub-int v0, v1, v15

    if-gt v0, v13, :cond_2

    .line 514
    aget-object v0, v12, v14

    invoke-virtual {v0}, Lcom/facebook/react/views/text/internal/span/ReactTagSpan;->getReactTag()I

    move-result v2

    .line 515
    sub-int v0, v1, v15

    move v13, v0

    .end local v13    # "targetSpanTextLength":I
    .local v0, "targetSpanTextLength":I
    goto :goto_1

    .line 513
    .end local v17    # "index":I
    .local v0, "index":I
    .restart local v13    # "targetSpanTextLength":I
    :cond_1
    move/from16 v17, v0

    .line 510
    .end local v0    # "index":I
    .end local v1    # "spanEnd":I
    .end local v15    # "spanStart":I
    .restart local v17    # "index":I
    :cond_2
    :goto_1
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, v16

    move/from16 v0, v17

    goto :goto_0

    .end local v16    # "text":Ljava/lang/CharSequence;
    .end local v17    # "index":I
    .restart local v0    # "index":I
    .local v1, "text":Ljava/lang/CharSequence;
    :cond_3
    move/from16 v17, v0

    move-object/from16 v16, v1

    .end local v0    # "index":I
    .end local v1    # "text":Ljava/lang/CharSequence;
    .restart local v16    # "text":Ljava/lang/CharSequence;
    .restart local v17    # "index":I
    goto :goto_2

    .line 508
    .end local v13    # "targetSpanTextLength":I
    .end local v14    # "i":I
    .end local v16    # "text":Ljava/lang/CharSequence;
    .end local v17    # "index":I
    .restart local v0    # "index":I
    .restart local v1    # "text":Ljava/lang/CharSequence;
    :cond_4
    move/from16 v17, v0

    move-object/from16 v16, v1

    .end local v0    # "index":I
    .end local v1    # "text":Ljava/lang/CharSequence;
    .restart local v16    # "text":Ljava/lang/CharSequence;
    .restart local v17    # "index":I
    goto :goto_2

    .line 496
    .end local v16    # "text":Ljava/lang/CharSequence;
    .end local v17    # "index":I
    .restart local v1    # "text":Ljava/lang/CharSequence;
    .local v12, "index":I
    :catch_0
    move-exception v0

    move-object/from16 v16, v1

    move-object v1, v0

    .end local v1    # "text":Ljava/lang/CharSequence;
    .restart local v16    # "text":Ljava/lang/CharSequence;
    move-object v0, v1

    .line 498
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Crash in HorizontalMeasurementProvider: "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v13, "ReactNative"

    invoke-static {v13, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    return v2

    .line 491
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v11    # "spannedText":Landroid/text/Spanned;
    .end local v12    # "index":I
    .end local v16    # "text":Ljava/lang/CharSequence;
    .restart local v1    # "text":Ljava/lang/CharSequence;
    :cond_5
    move-object/from16 v16, v1

    .line 521
    .end local v1    # "text":Ljava/lang/CharSequence;
    .restart local v16    # "text":Ljava/lang/CharSequence;
    :goto_2
    return v2
.end method

.method recycleView()V
    .locals 4

    .line 119
    invoke-direct {p0}, Lcom/facebook/react/views/text/ReactTextView;->initView()V

    .line 121
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-static {p0}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->reset(Landroid/view/View;)V

    .line 127
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/ReactTextView;->setBreakStrategy(I)V

    .line 128
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getDefaultMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/facebook/react/views/text/ReactTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 129
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    .line 130
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/ReactTextView;->setJustificationMode(I)V

    .line 134
    :cond_1
    sget-object v1, Lcom/facebook/react/views/text/ReactTextView;->EMPTY_LAYOUT_PARAMS:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v1}, Lcom/facebook/react/views/text/ReactTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    const/4 v1, 0x0

    invoke-super {p0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    invoke-direct {p0}, Lcom/facebook/react/views/text/ReactTextView;->applyTextAttributes()V

    .line 139
    const v1, 0x800033

    invoke-virtual {p0, v1}, Lcom/facebook/react/views/text/ReactTextView;->setGravity(I)V

    .line 140
    iget v1, p0, Lcom/facebook/react/views/text/ReactTextView;->mNumberOfLines:I

    invoke-virtual {p0, v1}, Lcom/facebook/react/views/text/ReactTextView;->setNumberOfLines(I)V

    .line 141
    iget-boolean v1, p0, Lcom/facebook/react/views/text/ReactTextView;->mAdjustsFontSizeToFit:Z

    invoke-virtual {p0, v1}, Lcom/facebook/react/views/text/ReactTextView;->setAdjustFontSizeToFit(Z)V

    .line 142
    iget v1, p0, Lcom/facebook/react/views/text/ReactTextView;->mLinkifyMaskType:I

    invoke-virtual {p0, v1}, Lcom/facebook/react/views/text/ReactTextView;->setLinkifyMask(I)V

    .line 143
    iget-boolean v1, p0, Lcom/facebook/react/views/text/ReactTextView;->mTextIsSelectable:Z

    invoke-virtual {p0, v1}, Lcom/facebook/react/views/text/ReactTextView;->setTextIsSelectable(Z)V

    .line 147
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/facebook/react/views/text/ReactTextView;->setIncludeFontPadding(Z)V

    .line 148
    invoke-virtual {p0, v1}, Lcom/facebook/react/views/text/ReactTextView;->setEnabled(Z)V

    .line 151
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/ReactTextView;->setLinkifyMask(I)V

    .line 153
    iget-object v3, p0, Lcom/facebook/react/views/text/ReactTextView;->mEllipsizeLocation:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v3}, Lcom/facebook/react/views/text/ReactTextView;->setEllipsizeLocation(Landroid/text/TextUtils$TruncateAt;)V

    .line 159
    invoke-virtual {p0, v1}, Lcom/facebook/react/views/text/ReactTextView;->setEnabled(Z)V

    .line 160
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_2

    .line 161
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/facebook/react/views/text/ReactTextView;->setFocusable(I)V

    .line 164
    :cond_2
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/ReactTextView;->setHyphenationFrequency(I)V

    .line 165
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->updateView()V

    .line 166
    return-void
.end method

.method public setAdjustFontSizeToFit(Z)V
    .locals 0
    .param p1, "adjustsFontSizeToFit"    # Z

    .line 644
    iput-boolean p1, p0, Lcom/facebook/react/views/text/ReactTextView;->mAdjustsFontSizeToFit:Z

    .line 645
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 712
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBackgroundColor(Landroid/view/View;Ljava/lang/Integer;)V

    goto :goto_0

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBackgroundColor(I)V

    .line 717
    :goto_0
    return-void
.end method

.method public setBorderColor(ILjava/lang/Integer;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "color"    # Ljava/lang/Integer;

    .line 729
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    invoke-static {}, Lcom/facebook/react/uimanager/style/LogicalEdge;->values()[Lcom/facebook/react/uimanager/style/LogicalEdge;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-static {p0, v0, p2}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBorderColor(Landroid/view/View;Lcom/facebook/react/uimanager/style/LogicalEdge;Ljava/lang/Integer;)V

    goto :goto_0

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBorderColor(ILjava/lang/Integer;)V

    .line 734
    :goto_0
    return-void
.end method

.method public setBorderRadius(F)V
    .locals 1
    .param p1, "borderRadius"    # F

    .line 737
    sget-object v0, Lcom/facebook/react/uimanager/style/BorderRadiusProp;->BORDER_RADIUS:Lcom/facebook/react/uimanager/style/BorderRadiusProp;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/style/BorderRadiusProp;->ordinal()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/views/text/ReactTextView;->setBorderRadius(FI)V

    .line 738
    return-void
.end method

.method public setBorderRadius(FI)V
    .locals 3
    .param p1, "borderRadius"    # F
    .param p2, "position"    # I

    .line 741
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 744
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 745
    const/4 v0, 0x0

    goto :goto_0

    .line 746
    :cond_0
    new-instance v0, Lcom/facebook/react/uimanager/LengthPercentage;

    .line 747
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v1

    sget-object v2, Lcom/facebook/react/uimanager/LengthPercentageType;->POINT:Lcom/facebook/react/uimanager/LengthPercentageType;

    invoke-direct {v0, v1, v2}, Lcom/facebook/react/uimanager/LengthPercentage;-><init>(FLcom/facebook/react/uimanager/LengthPercentageType;)V

    :goto_0
    nop

    .line 748
    .local v0, "radius":Lcom/facebook/react/uimanager/LengthPercentage;
    invoke-static {}, Lcom/facebook/react/uimanager/style/BorderRadiusProp;->values()[Lcom/facebook/react/uimanager/style/BorderRadiusProp;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-static {p0, v1, v0}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBorderRadius(Landroid/view/View;Lcom/facebook/react/uimanager/style/BorderRadiusProp;Lcom/facebook/react/uimanager/LengthPercentage;)V

    .line 749
    .end local v0    # "radius":Lcom/facebook/react/uimanager/LengthPercentage;
    goto :goto_1

    .line 750
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBorderRadius(FI)V

    .line 752
    :goto_1
    return-void
.end method

.method public setBorderStyle(Ljava/lang/String;)V
    .locals 1
    .param p1, "style"    # Ljava/lang/String;

    .line 755
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 756
    nop

    .line 757
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/facebook/react/uimanager/style/BorderStyle;->fromString(Ljava/lang/String;)Lcom/facebook/react/uimanager/style/BorderStyle;

    move-result-object v0

    .line 756
    :goto_0
    invoke-static {p0, v0}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBorderStyle(Landroid/view/View;Lcom/facebook/react/uimanager/style/BorderStyle;)V

    goto :goto_1

    .line 759
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBorderStyle(Ljava/lang/String;)V

    .line 761
    :goto_1
    return-void
.end method

.method public setBorderWidth(IF)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "width"    # F

    .line 720
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    nop

    .line 722
    invoke-static {}, Lcom/facebook/react/uimanager/style/LogicalEdge;->values()[Lcom/facebook/react/uimanager/style/LogicalEdge;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-static {p2}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 721
    invoke-static {p0, v0, v1}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBorderWidth(Landroid/view/View;Lcom/facebook/react/uimanager/style/LogicalEdge;Ljava/lang/Float;)V

    goto :goto_0

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBorderWidth(IF)V

    .line 726
    :goto_0
    return-void
.end method

.method public setBreakStrategy(I)V
    .locals 1
    .param p1, "breakStrategy"    # I

    .line 669
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setBreakStrategy(I)V

    .line 670
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mShouldAdjustSpannableFontSize:Z

    .line 671
    return-void
.end method

.method public setEllipsizeLocation(Landroid/text/TextUtils$TruncateAt;)V
    .locals 0
    .param p1, "ellipsizeLocation"    # Landroid/text/TextUtils$TruncateAt;

    .line 694
    iput-object p1, p0, Lcom/facebook/react/views/text/ReactTextView;->mEllipsizeLocation:Landroid/text/TextUtils$TruncateAt;

    .line 695
    return-void
.end method

.method public setFontSize(F)V
    .locals 2
    .param p1, "fontSize"    # F

    .line 648
    nop

    .line 649
    iget-boolean v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mAdjustsFontSizeToFit:Z

    if-eqz v0, :cond_0

    .line 650
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromSP(F)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0

    .line 651
    :cond_0
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    :goto_0
    iput v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mFontSize:F

    .line 653
    invoke-direct {p0}, Lcom/facebook/react/views/text/ReactTextView;->applyTextAttributes()V

    .line 654
    return-void
.end method

.method setGravityHorizontal(I)V
    .locals 2
    .param p1, "gravityHorizontal"    # I

    .line 618
    if-nez p1, :cond_0

    .line 619
    const p1, 0x800003

    .line 623
    :cond_0
    nop

    .line 624
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getGravity()I

    move-result v0

    and-int/lit8 v0, v0, -0x8

    const v1, -0x800008

    and-int/2addr v0, v1

    or-int/2addr v0, p1

    .line 623
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/ReactTextView;->setGravity(I)V

    .line 628
    return-void
.end method

.method setGravityVertical(I)V
    .locals 1
    .param p1, "gravityVertical"    # I

    .line 631
    if-nez p1, :cond_0

    .line 632
    const/16 p1, 0x30

    .line 634
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getGravity()I

    move-result v0

    and-int/lit8 v0, v0, -0x71

    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/ReactTextView;->setGravity(I)V

    .line 635
    return-void
.end method

.method public setHyphenationFrequency(I)V
    .locals 1
    .param p1, "hyphenationFrequency"    # I

    .line 675
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setHyphenationFrequency(I)V

    .line 676
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mShouldAdjustSpannableFontSize:Z

    .line 677
    return-void
.end method

.method public setIncludeFontPadding(Z)V
    .locals 1
    .param p1, "includepad"    # Z

    .line 663
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setIncludeFontPadding(Z)V

    .line 664
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mShouldAdjustSpannableFontSize:Z

    .line 665
    return-void
.end method

.method public setLetterSpacing(F)V
    .locals 2
    .param p1, "letterSpacing"    # F

    .line 680
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    return-void

    .line 684
    :cond_0
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v0

    .line 688
    .local v0, "letterSpacingPixels":F
    iget v1, p0, Lcom/facebook/react/views/text/ReactTextView;->mFontSize:F

    div-float v1, v0, v1

    iput v1, p0, Lcom/facebook/react/views/text/ReactTextView;->mLetterSpacing:F

    .line 690
    invoke-direct {p0}, Lcom/facebook/react/views/text/ReactTextView;->applyTextAttributes()V

    .line 691
    return-void
.end method

.method public setLinkifyMask(I)V
    .locals 0
    .param p1, "mask"    # I

    .line 773
    iput p1, p0, Lcom/facebook/react/views/text/ReactTextView;->mLinkifyMaskType:I

    .line 774
    return-void
.end method

.method public setMinimumFontSize(F)V
    .locals 1
    .param p1, "minimumFontSize"    # F

    .line 657
    iput p1, p0, Lcom/facebook/react/views/text/ReactTextView;->mMinimumFontSize:F

    .line 658
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mShouldAdjustSpannableFontSize:Z

    .line 659
    return-void
.end method

.method public setNotifyOnInlineViewLayout(Z)V
    .locals 0
    .param p1, "notifyOnInlineViewLayout"    # Z

    .line 698
    iput-boolean p1, p0, Lcom/facebook/react/views/text/ReactTextView;->mNotifyOnInlineViewLayout:Z

    .line 699
    return-void
.end method

.method public setNumberOfLines(I)V
    .locals 1
    .param p1, "numberOfLines"    # I

    .line 638
    if-nez p1, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iput v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mNumberOfLines:I

    .line 639
    iget v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mNumberOfLines:I

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/ReactTextView;->setMaxLines(I)V

    .line 640
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mShouldAdjustSpannableFontSize:Z

    .line 641
    return-void
.end method

.method public setOverflow(Ljava/lang/String;)V
    .locals 2
    .param p1, "overflow"    # Ljava/lang/String;

    .line 806
    if-nez p1, :cond_0

    .line 807
    sget-object v0, Lcom/facebook/react/uimanager/style/Overflow;->VISIBLE:Lcom/facebook/react/uimanager/style/Overflow;

    iput-object v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mOverflow:Lcom/facebook/react/uimanager/style/Overflow;

    goto :goto_1

    .line 809
    :cond_0
    invoke-static {p1}, Lcom/facebook/react/uimanager/style/Overflow;->fromString(Ljava/lang/String;)Lcom/facebook/react/uimanager/style/Overflow;

    move-result-object v0

    .line 810
    .local v0, "parsedOverflow":Lcom/facebook/react/uimanager/style/Overflow;
    if-nez v0, :cond_1

    sget-object v1, Lcom/facebook/react/uimanager/style/Overflow;->VISIBLE:Lcom/facebook/react/uimanager/style/Overflow;

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/facebook/react/views/text/ReactTextView;->mOverflow:Lcom/facebook/react/uimanager/style/Overflow;

    .line 813
    .end local v0    # "parsedOverflow":Lcom/facebook/react/uimanager/style/Overflow;
    :goto_1
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setOverflow(Ljava/lang/String;)V

    .line 814
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->invalidate()V

    .line 815
    return-void
.end method

.method public setSpanned(Landroid/text/Spannable;)V
    .locals 1
    .param p1, "spanned"    # Landroid/text/Spannable;

    .line 764
    iput-object p1, p0, Lcom/facebook/react/views/text/ReactTextView;->mSpanned:Landroid/text/Spannable;

    .line 765
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mShouldAdjustSpannableFontSize:Z

    .line 766
    return-void
.end method

.method public setText(Lcom/facebook/react/views/text/ReactTextUpdate;)V
    .locals 11
    .param p1, "update"    # Lcom/facebook/react/views/text/ReactTextUpdate;

    .line 419
    new-instance v0, Lcom/facebook/react/internal/SystraceSection;

    const-string v1, "ReactTextView.setText(ReactTextUpdate)"

    invoke-direct {v0, v1}, Lcom/facebook/react/internal/SystraceSection;-><init>(Ljava/lang/String;)V

    .line 420
    .local v0, "s":Lcom/facebook/react/internal/SystraceSection;
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->containsImages()Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/react/views/text/ReactTextView;->mContainsImages:Z

    .line 424
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_0

    .line 425
    sget-object v1, Lcom/facebook/react/views/text/ReactTextView;->EMPTY_LAYOUT_PARAMS:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v1}, Lcom/facebook/react/views/text/ReactTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 427
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getText()Landroid/text/Spannable;

    move-result-object v1

    .line 428
    .local v1, "spannable":Landroid/text/Spannable;
    iget v2, p0, Lcom/facebook/react/views/text/ReactTextView;->mLinkifyMaskType:I

    if-lez v2, :cond_1

    .line 429
    iget v2, p0, Lcom/facebook/react/views/text/ReactTextView;->mLinkifyMaskType:I

    invoke-static {v1, v2}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 430
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/facebook/react/views/text/ReactTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 432
    :cond_1
    invoke-virtual {p0, v1}, Lcom/facebook/react/views/text/ReactTextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getPaddingLeft()F

    move-result v2

    .line 434
    .local v2, "paddingLeft":F
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getPaddingTop()F

    move-result v3

    .line 435
    .local v3, "paddingTop":F
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getPaddingRight()F

    move-result v4

    .line 436
    .local v4, "paddingRight":F
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getPaddingBottom()F

    move-result v5

    .line 441
    .local v5, "paddingBottom":F
    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v7, v2, v6

    if-eqz v7, :cond_2

    cmpl-float v7, v3, v6

    if-eqz v7, :cond_2

    cmpl-float v7, v4, v6

    if-eqz v7, :cond_2

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_2

    .line 446
    float-to-double v6, v2

    .line 447
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    float-to-double v7, v3

    .line 448
    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v7, v7

    float-to-double v8, v4

    .line 449
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v8, v8

    float-to-double v9, v5

    .line 450
    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v9, v9

    .line 446
    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/facebook/react/views/text/ReactTextView;->setPadding(IIII)V

    .line 453
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getTextAlign()I

    move-result v6

    .line 454
    .local v6, "nextTextAlign":I
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getGravityHorizontal()I

    move-result v7

    if-eq v6, v7, :cond_3

    .line 455
    invoke-virtual {p0, v6}, Lcom/facebook/react/views/text/ReactTextView;->setGravityHorizontal(I)V

    .line 457
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getBreakStrategy()I

    move-result v7

    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getTextBreakStrategy()I

    move-result v8

    if-eq v7, v8, :cond_4

    .line 458
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getTextBreakStrategy()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/facebook/react/views/text/ReactTextView;->setBreakStrategy(I)V

    .line 460
    :cond_4
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1a

    if-lt v7, v8, :cond_5

    .line 461
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getJustificationMode()I

    move-result v7

    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getJustificationMode()I

    move-result v8

    if-eq v7, v8, :cond_5

    .line 462
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getJustificationMode()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/facebook/react/views/text/ReactTextView;->setJustificationMode(I)V

    .line 467
    :cond_5
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    .end local v1    # "spannable":Landroid/text/Spannable;
    .end local v2    # "paddingLeft":F
    .end local v3    # "paddingTop":F
    .end local v4    # "paddingRight":F
    .end local v5    # "paddingBottom":F
    .end local v6    # "nextTextAlign":I
    invoke-virtual {v0}, Lcom/facebook/react/internal/SystraceSection;->close()V

    .line 469
    .end local v0    # "s":Lcom/facebook/react/internal/SystraceSection;
    return-void

    .line 419
    .restart local v0    # "s":Lcom/facebook/react/internal/SystraceSection;
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Lcom/facebook/react/internal/SystraceSection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public setTextIsSelectable(Z)V
    .locals 0
    .param p1, "selectable"    # Z

    .line 578
    iput-boolean p1, p0, Lcom/facebook/react/views/text/ReactTextView;->mTextIsSelectable:Z

    .line 579
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextIsSelectable(Z)V

    .line 580
    return-void
.end method

.method public updateView()V
    .locals 2

    .line 704
    iget v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mNumberOfLines:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mAdjustsFontSizeToFit:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 706
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mEllipsizeLocation:Landroid/text/TextUtils$TruncateAt;

    goto :goto_1

    .line 705
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 706
    :goto_1
    nop

    .line 707
    .local v0, "ellipsizeLocation":Landroid/text/TextUtils$TruncateAt;
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/ReactTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 708
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 526
    iget-boolean v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mContainsImages:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    .line 527
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    .line 528
    .local v0, "text":Landroid/text/Spanned;
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;

    .line 529
    .local v1, "spans":[Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;
    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 530
    .local v4, "span":Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;
    invoke-virtual {v4}, Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-ne v5, p1, :cond_0

    .line 531
    const/4 v2, 0x1

    return v2

    .line 529
    .end local v4    # "span":Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 535
    .end local v0    # "text":Landroid/text/Spanned;
    .end local v1    # "spans":[Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;
    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method
