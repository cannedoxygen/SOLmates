.class public Lcom/facebook/react/views/text/TextLayoutManager;
.super Ljava/lang/Object;
.source "TextLayoutManager.java"


# static fields
.field public static final AS_KEY_CACHE_ID:S = 0x3s

.field public static final AS_KEY_FRAGMENTS:S = 0x2s

.field public static final AS_KEY_HASH:S = 0x0s

.field public static final AS_KEY_STRING:S = 0x1s

.field private static final DEFAULT_ADJUST_FONT_SIZE_TO_FIT:Z = false

.field private static final DEFAULT_INCLUDE_FONT_PADDING:Z = true

.field private static final ENABLE_MEASURE_LOGGING:Z

.field public static final FR_KEY_HEIGHT:S = 0x4s

.field public static final FR_KEY_IS_ATTACHMENT:S = 0x2s

.field public static final FR_KEY_REACT_TAG:S = 0x1s

.field public static final FR_KEY_STRING:S = 0x0s

.field public static final FR_KEY_TEXT_ATTRIBUTES:S = 0x5s

.field public static final FR_KEY_WIDTH:S = 0x3s

.field private static final INLINE_VIEW_PLACEHOLDER:Ljava/lang/String; = "0"

.field public static final PA_KEY_ADJUST_FONT_SIZE_TO_FIT:S = 0x3s

.field public static final PA_KEY_ELLIPSIZE_MODE:S = 0x1s

.field public static final PA_KEY_HYPHENATION_FREQUENCY:S = 0x5s

.field public static final PA_KEY_INCLUDE_FONT_PADDING:S = 0x4s

.field public static final PA_KEY_MAXIMUM_FONT_SIZE:S = 0x7s

.field public static final PA_KEY_MAX_NUMBER_OF_LINES:S = 0x0s

.field public static final PA_KEY_MINIMUM_FONT_SIZE:S = 0x6s

.field public static final PA_KEY_TEXT_BREAK_STRATEGY:S = 0x2s

.field private static final TAG:Ljava/lang/String;

.field private static final sTagToSpannableCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/text/Spannable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTextPaintInstance:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 84
    sget-boolean v0, Lcom/facebook/react/common/build/ReactBuildConfig;->DEBUG:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/react/views/text/TextLayoutManager;->ENABLE_MEASURE_LOGGING:Z

    .line 86
    const-class v0, Lcom/facebook/react/views/text/TextLayoutManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/react/views/text/TextLayoutManager;->TAG:Ljava/lang/String;

    .line 91
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lcom/facebook/react/views/text/TextLayoutManager;->sTextPaintInstance:Landroid/text/TextPaint;

    .line 99
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/react/views/text/TextLayoutManager;->sTagToSpannableCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustSpannableFontToFit(Landroid/text/Spannable;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;DIZIILandroid/text/Layout$Alignment;)V
    .locals 18
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "width"    # F
    .param p2, "widthYogaMeasureMode"    # Lcom/facebook/yoga/YogaMeasureMode;
    .param p3, "height"    # F
    .param p4, "heightYogaMeasureMode"    # Lcom/facebook/yoga/YogaMeasureMode;
    .param p5, "minimumFontSizeAttr"    # D
    .param p7, "maximumNumberOfLines"    # I
    .param p8, "includeFontPadding"    # Z
    .param p9, "textBreakStrategy"    # I
    .param p10, "hyphenationFrequency"    # I
    .param p11, "alignment"    # Landroid/text/Layout$Alignment;

    .line 505
    move-object/from16 v8, p0

    move/from16 v9, p7

    sget-object v0, Lcom/facebook/react/views/text/TextLayoutManager;->sTextPaintInstance:Landroid/text/TextPaint;

    invoke-static {v8, v0}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;)Landroid/text/BoringLayout$Metrics;

    move-result-object v10

    .line 506
    .local v10, "boring":Landroid/text/BoringLayout$Metrics;
    nop

    .line 507
    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p8

    move/from16 v5, p9

    move/from16 v6, p10

    move-object/from16 v7, p11

    invoke-static/range {v0 .. v7}, Lcom/facebook/react/views/text/TextLayoutManager;->createLayout(Landroid/text/Spannable;Landroid/text/BoringLayout$Metrics;FLcom/facebook/yoga/YogaMeasureMode;ZIILandroid/text/Layout$Alignment;)Landroid/text/Layout;

    move-result-object v0

    .line 520
    .local v0, "layout":Landroid/text/Layout;
    invoke-static/range {p5 .. p6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v1

    float-to-double v1, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v1, p5

    :goto_0
    double-to-int v11, v1

    .line 523
    .local v11, "minimumFontSize":I
    move v1, v11

    .line 524
    .local v1, "currentFontSize":I
    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->length()I

    move-result v2

    const-class v3, Lcom/facebook/react/views/text/internal/span/ReactAbsoluteSizeSpan;

    const/4 v12, 0x0

    invoke-interface {v8, v12, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, [Lcom/facebook/react/views/text/internal/span/ReactAbsoluteSizeSpan;

    .line 525
    .local v13, "spans":[Lcom/facebook/react/views/text/internal/span/ReactAbsoluteSizeSpan;
    array-length v2, v13

    move v3, v12

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v13, v3

    .line 526
    .local v4, "span":Lcom/facebook/react/views/text/internal/span/ReactAbsoluteSizeSpan;
    invoke-virtual {v4}, Lcom/facebook/react/views/text/internal/span/ReactAbsoluteSizeSpan;->getSize()I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 525
    .end local v4    # "span":Lcom/facebook/react/views/text/internal/span/ReactAbsoluteSizeSpan;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 529
    :cond_1
    move v14, v1

    move-object v15, v0

    .line 530
    .end local v0    # "layout":Landroid/text/Layout;
    .local v14, "initialFontSize":I
    .local v15, "layout":Landroid/text/Layout;
    :goto_2
    if-le v1, v11, :cond_5

    const/4 v0, -0x1

    if-eq v9, v0, :cond_3

    if-eqz v9, :cond_3

    .line 533
    invoke-virtual {v15}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    if-gt v0, v9, :cond_2

    goto :goto_3

    :cond_2
    move-object/from16 v7, p4

    goto :goto_4

    :cond_3
    :goto_3
    sget-object v0, Lcom/facebook/yoga/YogaMeasureMode;->UNDEFINED:Lcom/facebook/yoga/YogaMeasureMode;

    move-object/from16 v7, p4

    if-eq v7, v0, :cond_5

    .line 535
    invoke-virtual {v15}, Landroid/text/Layout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, p3

    if-lez v0, :cond_5

    .line 538
    :goto_4
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v0

    float-to-int v0, v0

    const/4 v2, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int v6, v1, v0

    .line 540
    .end local v1    # "currentFontSize":I
    .local v6, "currentFontSize":I
    int-to-float v0, v6

    int-to-float v1, v14

    div-float v16, v0, v1

    .line 541
    .local v16, "ratio":F
    nop

    .line 542
    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Lcom/facebook/react/views/text/internal/span/ReactAbsoluteSizeSpan;

    invoke-interface {v8, v12, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [Lcom/facebook/react/views/text/internal/span/ReactAbsoluteSizeSpan;

    .line 543
    .local v5, "sizeSpans":[Lcom/facebook/react/views/text/internal/span/ReactAbsoluteSizeSpan;
    array-length v0, v5

    move v1, v12

    :goto_5
    if-ge v1, v0, :cond_4

    aget-object v2, v5, v1

    .line 544
    .local v2, "span":Lcom/facebook/react/views/text/internal/span/ReactAbsoluteSizeSpan;
    new-instance v3, Lcom/facebook/react/views/text/internal/span/ReactAbsoluteSizeSpan;

    .line 545
    invoke-virtual {v2}, Lcom/facebook/react/views/text/internal/span/ReactAbsoluteSizeSpan;->getSize()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v16

    int-to-float v12, v11

    invoke-static {v4, v12}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v3, v4}, Lcom/facebook/react/views/text/internal/span/ReactAbsoluteSizeSpan;-><init>(I)V

    .line 546
    invoke-interface {v8, v2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 547
    invoke-interface {v8, v2}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    .line 548
    move/from16 v17, v0

    invoke-interface {v8, v2}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 544
    invoke-interface {v8, v3, v4, v12, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 549
    invoke-interface {v8, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 543
    .end local v2    # "span":Lcom/facebook/react/views/text/internal/span/ReactAbsoluteSizeSpan;
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v17

    const/4 v12, 0x0

    goto :goto_5

    .line 551
    :cond_4
    nop

    .line 552
    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p8

    move-object v12, v5

    .end local v5    # "sizeSpans":[Lcom/facebook/react/views/text/internal/span/ReactAbsoluteSizeSpan;
    .local v12, "sizeSpans":[Lcom/facebook/react/views/text/internal/span/ReactAbsoluteSizeSpan;
    move/from16 v5, p9

    move/from16 v17, v6

    .end local v6    # "currentFontSize":I
    .local v17, "currentFontSize":I
    move/from16 v6, p10

    move-object/from16 v7, p11

    invoke-static/range {v0 .. v7}, Lcom/facebook/react/views/text/TextLayoutManager;->createLayout(Landroid/text/Spannable;Landroid/text/BoringLayout$Metrics;FLcom/facebook/yoga/YogaMeasureMode;ZIILandroid/text/Layout$Alignment;)Landroid/text/Layout;

    move-result-object v15

    .line 561
    .end local v12    # "sizeSpans":[Lcom/facebook/react/views/text/internal/span/ReactAbsoluteSizeSpan;
    .end local v16    # "ratio":F
    move/from16 v1, v17

    const/4 v12, 0x0

    goto/16 :goto_2

    .line 562
    .end local v17    # "currentFontSize":I
    .restart local v1    # "currentFontSize":I
    :cond_5
    return-void
.end method

.method private static buildSpannableFromFragments(Landroid/content/Context;Lcom/facebook/react/common/mapbuffer/MapBuffer;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragments"    # Lcom/facebook/react/common/mapbuffer/MapBuffer;
    .param p2, "sb"    # Landroid/text/SpannableStringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/react/common/mapbuffer/MapBuffer;",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/util/List<",
            "Lcom/facebook/react/views/text/internal/span/SetSpanOperation;",
            ">;)V"
        }
    .end annotation

    .line 205
    .local p3, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/views/text/internal/span/SetSpanOperation;>;"
    move-object/from16 v0, p3

    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface/range {p1 .. p1}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getCount()I

    move-result v2

    .local v2, "length":I
    :goto_0
    if-ge v1, v2, :cond_11

    .line 206
    move-object/from16 v3, p1

    invoke-interface {v3, v1}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getMapBuffer(I)Lcom/facebook/react/common/mapbuffer/MapBuffer;

    move-result-object v4

    .line 207
    .local v4, "fragment":Lcom/facebook/react/common/mapbuffer/MapBuffer;
    invoke-virtual/range {p2 .. p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 209
    .local v5, "start":I
    nop

    .line 210
    const/4 v6, 0x5

    invoke-interface {v4, v6}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getMapBuffer(I)Lcom/facebook/react/common/mapbuffer/MapBuffer;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/react/views/text/TextAttributeProps;->fromMapBuffer(Lcom/facebook/react/common/mapbuffer/MapBuffer;)Lcom/facebook/react/views/text/TextAttributeProps;

    move-result-object v6

    .line 212
    .local v6, "textAttributes":Lcom/facebook/react/views/text/TextAttributeProps;
    nop

    .line 213
    const/4 v7, 0x0

    invoke-interface {v4, v7}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v6, Lcom/facebook/react/views/text/TextAttributeProps;->mTextTransform:Lcom/facebook/react/views/text/TextTransform;

    invoke-static {v8, v9}, Lcom/facebook/react/views/text/TextTransform;->apply(Ljava/lang/String;Lcom/facebook/react/views/text/TextTransform;)Ljava/lang/String;

    move-result-object v8

    .line 212
    move-object/from16 v9, p2

    invoke-virtual {v9, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    .line 217
    .local v8, "end":I
    const/4 v10, 0x1

    invoke-interface {v4, v10}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->contains(I)Z

    move-result v11

    const/4 v12, -0x1

    if-eqz v11, :cond_0

    invoke-interface {v4, v10}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getInt(I)I

    move-result v11

    goto :goto_1

    :cond_0
    move v11, v12

    .line 218
    .local v11, "reactTag":I
    :goto_1
    const/4 v13, 0x2

    invoke-interface {v4, v13}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->contains(I)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v4, v13}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getBoolean(I)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 219
    const/4 v7, 0x3

    invoke-interface {v4, v7}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getDouble(I)D

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromSP(D)F

    move-result v7

    .line 220
    .local v7, "width":F
    const/4 v10, 0x4

    invoke-interface {v4, v10}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getDouble(I)D

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromSP(D)F

    move-result v10

    .line 221
    .local v10, "height":F
    new-instance v12, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;

    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v13

    const-string v14, "0"

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v13, v14

    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v14

    new-instance v15, Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;

    move/from16 v16, v2

    .end local v2    # "length":I
    .local v16, "length":I
    float-to-int v2, v7

    float-to-int v3, v10

    invoke-direct {v15, v11, v2, v3}, Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;-><init>(III)V

    invoke-direct {v12, v13, v14, v15}, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;-><init>(IILcom/facebook/react/views/text/internal/span/ReactSpan;)V

    .line 221
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v7    # "width":F
    .end local v10    # "height":F
    goto/16 :goto_3

    .line 218
    .end local v16    # "length":I
    .restart local v2    # "length":I
    :cond_1
    move/from16 v16, v2

    .line 226
    .end local v2    # "length":I
    .restart local v16    # "length":I
    if-lt v8, v5, :cond_10

    .line 228
    iget-object v2, v6, Lcom/facebook/react/views/text/TextAttributeProps;->mRole:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$Role;

    if-eqz v2, :cond_2

    .line 229
    iget-object v2, v6, Lcom/facebook/react/views/text/TextAttributeProps;->mRole:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$Role;

    sget-object v3, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$Role;->LINK:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$Role;

    if-ne v2, v3, :cond_3

    move v7, v10

    goto :goto_2

    .line 230
    :cond_2
    iget-object v2, v6, Lcom/facebook/react/views/text/TextAttributeProps;->mAccessibilityRole:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    sget-object v3, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->LINK:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    if-ne v2, v3, :cond_3

    move v7, v10

    :cond_3
    :goto_2
    move v2, v7

    .line 231
    .local v2, "roleIsLink":Z
    if-eqz v2, :cond_4

    .line 232
    new-instance v3, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;

    new-instance v7, Lcom/facebook/react/views/text/internal/span/ReactClickableSpan;

    invoke-direct {v7, v11}, Lcom/facebook/react/views/text/internal/span/ReactClickableSpan;-><init>(I)V

    invoke-direct {v3, v5, v8, v7}, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;-><init>(IILcom/facebook/react/views/text/internal/span/ReactSpan;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_4
    iget-boolean v3, v6, Lcom/facebook/react/views/text/TextAttributeProps;->mIsColorSet:Z

    if-eqz v3, :cond_5

    .line 235
    new-instance v3, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;

    new-instance v7, Lcom/facebook/react/views/text/internal/span/ReactForegroundColorSpan;

    iget v10, v6, Lcom/facebook/react/views/text/TextAttributeProps;->mColor:I

    invoke-direct {v7, v10}, Lcom/facebook/react/views/text/internal/span/ReactForegroundColorSpan;-><init>(I)V

    invoke-direct {v3, v5, v8, v7}, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;-><init>(IILcom/facebook/react/views/text/internal/span/ReactSpan;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_5
    iget-boolean v3, v6, Lcom/facebook/react/views/text/TextAttributeProps;->mIsBackgroundColorSet:Z

    if-eqz v3, :cond_6

    .line 240
    new-instance v3, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;

    new-instance v7, Lcom/facebook/react/views/text/internal/span/ReactBackgroundColorSpan;

    iget v10, v6, Lcom/facebook/react/views/text/TextAttributeProps;->mBackgroundColor:I

    invoke-direct {v7, v10}, Lcom/facebook/react/views/text/internal/span/ReactBackgroundColorSpan;-><init>(I)V

    invoke-direct {v3, v5, v8, v7}, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;-><init>(IILcom/facebook/react/views/text/internal/span/ReactSpan;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_6
    invoke-virtual {v6}, Lcom/facebook/react/views/text/TextAttributeProps;->getOpacity()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_7

    .line 245
    new-instance v3, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;

    new-instance v7, Lcom/facebook/react/views/text/internal/span/ReactOpacitySpan;

    .line 246
    invoke-virtual {v6}, Lcom/facebook/react/views/text/TextAttributeProps;->getOpacity()F

    move-result v10

    invoke-direct {v7, v10}, Lcom/facebook/react/views/text/internal/span/ReactOpacitySpan;-><init>(F)V

    invoke-direct {v3, v5, v8, v7}, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;-><init>(IILcom/facebook/react/views/text/internal/span/ReactSpan;)V

    .line 245
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_7
    invoke-virtual {v6}, Lcom/facebook/react/views/text/TextAttributeProps;->getLetterSpacing()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_8

    .line 249
    new-instance v3, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;

    new-instance v7, Lcom/facebook/react/views/text/internal/span/CustomLetterSpacingSpan;

    .line 251
    invoke-virtual {v6}, Lcom/facebook/react/views/text/TextAttributeProps;->getLetterSpacing()F

    move-result v10

    invoke-direct {v7, v10}, Lcom/facebook/react/views/text/internal/span/CustomLetterSpacingSpan;-><init>(F)V

    invoke-direct {v3, v5, v8, v7}, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;-><init>(IILcom/facebook/react/views/text/internal/span/ReactSpan;)V

    .line 249
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_8
    new-instance v3, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;

    new-instance v7, Lcom/facebook/react/views/text/internal/span/ReactAbsoluteSizeSpan;

    iget v10, v6, Lcom/facebook/react/views/text/TextAttributeProps;->mFontSize:I

    invoke-direct {v7, v10}, Lcom/facebook/react/views/text/internal/span/ReactAbsoluteSizeSpan;-><init>(I)V

    invoke-direct {v3, v5, v8, v7}, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;-><init>(IILcom/facebook/react/views/text/internal/span/ReactSpan;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    iget v3, v6, Lcom/facebook/react/views/text/TextAttributeProps;->mFontStyle:I

    if-ne v3, v12, :cond_9

    iget v3, v6, Lcom/facebook/react/views/text/TextAttributeProps;->mFontWeight:I

    if-ne v3, v12, :cond_9

    iget-object v3, v6, Lcom/facebook/react/views/text/TextAttributeProps;->mFontFamily:Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 258
    :cond_9
    new-instance v3, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;

    new-instance v7, Lcom/facebook/react/views/text/internal/span/CustomStyleSpan;

    iget v10, v6, Lcom/facebook/react/views/text/TextAttributeProps;->mFontStyle:I

    iget v12, v6, Lcom/facebook/react/views/text/TextAttributeProps;->mFontWeight:I

    iget-object v13, v6, Lcom/facebook/react/views/text/TextAttributeProps;->mFontFeatureSettings:Ljava/lang/String;

    iget-object v14, v6, Lcom/facebook/react/views/text/TextAttributeProps;->mFontFamily:Ljava/lang/String;

    .line 267
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v22

    move-object/from16 v17, v7

    move/from16 v18, v10

    move/from16 v19, v12

    move-object/from16 v20, v13

    move-object/from16 v21, v14

    invoke-direct/range {v17 .. v22}, Lcom/facebook/react/views/text/internal/span/CustomStyleSpan;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/content/res/AssetManager;)V

    invoke-direct {v3, v5, v8, v7}, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;-><init>(IILcom/facebook/react/views/text/internal/span/ReactSpan;)V

    .line 258
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_a
    iget-boolean v3, v6, Lcom/facebook/react/views/text/TextAttributeProps;->mIsUnderlineTextDecorationSet:Z

    if-eqz v3, :cond_b

    .line 270
    new-instance v3, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;

    new-instance v7, Lcom/facebook/react/views/text/internal/span/ReactUnderlineSpan;

    invoke-direct {v7}, Lcom/facebook/react/views/text/internal/span/ReactUnderlineSpan;-><init>()V

    invoke-direct {v3, v5, v8, v7}, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;-><init>(IILcom/facebook/react/views/text/internal/span/ReactSpan;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_b
    iget-boolean v3, v6, Lcom/facebook/react/views/text/TextAttributeProps;->mIsLineThroughTextDecorationSet:Z

    if-eqz v3, :cond_c

    .line 273
    new-instance v3, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;

    new-instance v7, Lcom/facebook/react/views/text/internal/span/ReactStrikethroughSpan;

    invoke-direct {v7}, Lcom/facebook/react/views/text/internal/span/ReactStrikethroughSpan;-><init>()V

    invoke-direct {v3, v5, v8, v7}, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;-><init>(IILcom/facebook/react/views/text/internal/span/ReactSpan;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_c
    iget v3, v6, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDx:F

    const/4 v7, 0x0

    cmpl-float v3, v3, v7

    if-nez v3, :cond_d

    iget v3, v6, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDy:F

    cmpl-float v3, v3, v7

    if-nez v3, :cond_d

    iget v3, v6, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowRadius:F

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_e

    :cond_d
    iget v3, v6, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowColor:I

    .line 278
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    if-eqz v3, :cond_e

    .line 279
    new-instance v3, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;

    new-instance v7, Lcom/facebook/react/views/text/internal/span/ShadowStyleSpan;

    iget v10, v6, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDx:F

    iget v12, v6, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDy:F

    iget v13, v6, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowRadius:F

    iget v14, v6, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowColor:I

    invoke-direct {v7, v10, v12, v13, v14}, Lcom/facebook/react/views/text/internal/span/ShadowStyleSpan;-><init>(FFFI)V

    invoke-direct {v3, v5, v8, v7}, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;-><init>(IILcom/facebook/react/views/text/internal/span/ReactSpan;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_e
    invoke-virtual {v6}, Lcom/facebook/react/views/text/TextAttributeProps;->getEffectiveLineHeight()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_f

    .line 290
    new-instance v3, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;

    new-instance v7, Lcom/facebook/react/views/text/internal/span/CustomLineHeightSpan;

    .line 292
    invoke-virtual {v6}, Lcom/facebook/react/views/text/TextAttributeProps;->getEffectiveLineHeight()F

    move-result v10

    invoke-direct {v7, v10}, Lcom/facebook/react/views/text/internal/span/CustomLineHeightSpan;-><init>(F)V

    invoke-direct {v3, v5, v8, v7}, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;-><init>(IILcom/facebook/react/views/text/internal/span/ReactSpan;)V

    .line 290
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    :cond_f
    new-instance v3, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;

    new-instance v7, Lcom/facebook/react/views/text/internal/span/ReactTagSpan;

    invoke-direct {v7, v11}, Lcom/facebook/react/views/text/internal/span/ReactTagSpan;-><init>(I)V

    invoke-direct {v3, v5, v8, v7}, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;-><init>(IILcom/facebook/react/views/text/internal/span/ReactSpan;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 226
    .end local v2    # "roleIsLink":Z
    :cond_10
    :goto_3
    nop

    .line 205
    .end local v4    # "fragment":Lcom/facebook/react/common/mapbuffer/MapBuffer;
    .end local v5    # "start":I
    .end local v6    # "textAttributes":Lcom/facebook/react/views/text/TextAttributeProps;
    .end local v8    # "end":I
    .end local v11    # "reactTag":I
    :goto_4
    add-int/lit8 v1, v1, 0x1

    move/from16 v2, v16

    goto/16 :goto_0

    .line 298
    .end local v1    # "i":I
    .end local v16    # "length":I
    :cond_11
    return-void
.end method

.method public static createLayout(Landroid/content/Context;Lcom/facebook/react/common/mapbuffer/MapBuffer;Lcom/facebook/react/common/mapbuffer/MapBuffer;FFLcom/facebook/react/views/text/ReactTextViewManagerCallback;)Landroid/text/Layout;
    .locals 27
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attributedString"    # Lcom/facebook/react/common/mapbuffer/MapBuffer;
    .param p2, "paragraphAttributes"    # Lcom/facebook/react/common/mapbuffer/MapBuffer;
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "reactTextViewManagerCallback"    # Lcom/facebook/react/views/text/ReactTextViewManagerCallback;

    .line 437
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 438
    move-object/from16 v2, p0

    move-object/from16 v3, p5

    invoke-static {v2, v0, v3}, Lcom/facebook/react/views/text/TextLayoutManager;->getOrCreateSpannableForText(Landroid/content/Context;Lcom/facebook/react/common/mapbuffer/MapBuffer;Lcom/facebook/react/views/text/ReactTextViewManagerCallback;)Landroid/text/Spannable;

    move-result-object v15

    .line 439
    .local v15, "text":Landroid/text/Spannable;
    sget-object v4, Lcom/facebook/react/views/text/TextLayoutManager;->sTextPaintInstance:Landroid/text/TextPaint;

    invoke-static {v15, v4}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;)Landroid/text/BoringLayout$Metrics;

    move-result-object v21

    .line 441
    .local v21, "boring":Landroid/text/BoringLayout$Metrics;
    nop

    .line 443
    const/4 v4, 0x2

    invoke-interface {v1, v4}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 442
    invoke-static {v4}, Lcom/facebook/react/views/text/TextAttributeProps;->getTextBreakStrategy(Ljava/lang/String;)I

    move-result v22

    .line 445
    .local v22, "textBreakStrategy":I
    const/4 v4, 0x4

    invoke-interface {v1, v4}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->contains(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 446
    invoke-interface {v1, v4}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getBoolean(I)Z

    move-result v4

    move v12, v4

    goto :goto_0

    .line 447
    :cond_0
    const/4 v4, 0x1

    move v12, v4

    :goto_0
    nop

    .line 448
    .local v12, "includeFontPadding":Z
    nop

    .line 450
    const/4 v4, 0x5

    invoke-interface {v1, v4}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 449
    invoke-static {v4}, Lcom/facebook/react/views/text/TextAttributeProps;->getHyphenationFrequency(Ljava/lang/String;)I

    move-result v23

    .line 452
    .local v23, "hyphenationFrequency":I
    const/4 v4, 0x3

    invoke-interface {v1, v4}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->contains(I)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 453
    invoke-interface {v1, v4}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getBoolean(I)Z

    move-result v4

    goto :goto_1

    .line 454
    :cond_1
    move v4, v6

    :goto_1
    move/from16 v24, v4

    .line 456
    .local v24, "adjustFontSizeToFit":Z
    invoke-interface {v1, v6}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 457
    invoke-interface {v1, v6}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getInt(I)I

    move-result v4

    move v11, v4

    goto :goto_2

    .line 458
    :cond_2
    const/4 v4, -0x1

    move v11, v4

    :goto_2
    nop

    .line 460
    .local v11, "maximumNumberOfLines":I
    invoke-static {v0, v15}, Lcom/facebook/react/views/text/TextLayoutManager;->getTextAlignment(Lcom/facebook/react/common/mapbuffer/MapBuffer;Landroid/text/Spannable;)Landroid/text/Layout$Alignment;

    move-result-object v25

    .line 462
    .local v25, "alignment":Landroid/text/Layout$Alignment;
    if-eqz v24, :cond_4

    .line 464
    const/4 v4, 0x6

    invoke-interface {v1, v4}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->contains(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 465
    invoke-interface {v1, v4}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getDouble(I)D

    move-result-wide v4

    move-wide v9, v4

    goto :goto_3

    .line 466
    :cond_3
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    move-wide v9, v4

    :goto_3
    nop

    .line 468
    .local v9, "minimumFontSize":D
    sget-object v6, Lcom/facebook/yoga/YogaMeasureMode;->EXACTLY:Lcom/facebook/yoga/YogaMeasureMode;

    sget-object v8, Lcom/facebook/yoga/YogaMeasureMode;->UNDEFINED:Lcom/facebook/yoga/YogaMeasureMode;

    move-object v4, v15

    move/from16 v5, p3

    move/from16 v7, p4

    move/from16 v13, v22

    move/from16 v14, v23

    move-object/from16 v26, v15

    .end local v15    # "text":Landroid/text/Spannable;
    .local v26, "text":Landroid/text/Spannable;
    move-object/from16 v15, v25

    invoke-static/range {v4 .. v15}, Lcom/facebook/react/views/text/TextLayoutManager;->adjustSpannableFontToFit(Landroid/text/Spannable;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;DIZIILandroid/text/Layout$Alignment;)V

    goto :goto_4

    .line 462
    .end local v9    # "minimumFontSize":D
    .end local v26    # "text":Landroid/text/Spannable;
    .restart local v15    # "text":Landroid/text/Spannable;
    :cond_4
    move-object/from16 v26, v15

    .line 482
    .end local v15    # "text":Landroid/text/Spannable;
    .restart local v26    # "text":Landroid/text/Spannable;
    :goto_4
    sget-object v16, Lcom/facebook/yoga/YogaMeasureMode;->EXACTLY:Lcom/facebook/yoga/YogaMeasureMode;

    move-object/from16 v13, v26

    move-object/from16 v14, v21

    move/from16 v15, p3

    move/from16 v17, v12

    move/from16 v18, v22

    move/from16 v19, v23

    move-object/from16 v20, v25

    invoke-static/range {v13 .. v20}, Lcom/facebook/react/views/text/TextLayoutManager;->createLayout(Landroid/text/Spannable;Landroid/text/BoringLayout$Metrics;FLcom/facebook/yoga/YogaMeasureMode;ZIILandroid/text/Layout$Alignment;)Landroid/text/Layout;

    move-result-object v4

    return-object v4
.end method

.method private static createLayout(Landroid/text/Spannable;Landroid/text/BoringLayout$Metrics;FLcom/facebook/yoga/YogaMeasureMode;ZIILandroid/text/Layout$Alignment;)Landroid/text/Layout;
    .locals 20
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "boring"    # Landroid/text/BoringLayout$Metrics;
    .param p2, "width"    # F
    .param p3, "widthYogaMeasureMode"    # Lcom/facebook/yoga/YogaMeasureMode;
    .param p4, "includeFontPadding"    # Z
    .param p5, "textBreakStrategy"    # I
    .param p6, "hyphenationFrequency"    # I
    .param p7, "alignment"    # Landroid/text/Layout$Alignment;

    .line 358
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p6

    move-object/from16 v15, p7

    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->length()I

    move-result v7

    .line 359
    .local v7, "spanLength":I
    sget-object v0, Lcom/facebook/yoga/YogaMeasureMode;->UNDEFINED:Lcom/facebook/yoga/YogaMeasureMode;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v11, v0, :cond_1

    cmpg-float v0, v10, v2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    move/from16 v16, v0

    .line 361
    .local v16, "unconstrainedWidth":Z
    if-nez v9, :cond_2

    sget-object v0, Lcom/facebook/react/views/text/TextLayoutManager;->sTextPaintInstance:Landroid/text/TextPaint;

    invoke-static {v8, v0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    goto :goto_2

    :cond_2
    const/high16 v0, 0x7fc00000    # Float.NaN

    :goto_2
    move/from16 v17, v0

    .line 362
    .local v17, "desiredWidth":F
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    invoke-interface {v0, v8, v3, v7}, Landroid/text/TextDirectionHeuristic;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v18

    .line 364
    .local v18, "isScriptRTL":Z
    const/high16 v0, 0x3f800000    # 1.0f

    if-nez v9, :cond_6

    if-nez v16, :cond_3

    .line 366
    invoke-static/range {v17 .. v17}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v4

    if-nez v4, :cond_6

    cmpg-float v4, v17, v10

    if-gtz v4, :cond_6

    .line 370
    :cond_3
    sget-object v1, Lcom/facebook/yoga/YogaMeasureMode;->EXACTLY:Lcom/facebook/yoga/YogaMeasureMode;

    if-ne v11, v1, :cond_4

    .line 371
    move/from16 v17, p2

    move/from16 v1, v17

    goto :goto_3

    .line 370
    :cond_4
    move/from16 v1, v17

    .line 374
    .end local v17    # "desiredWidth":F
    .local v1, "desiredWidth":F
    :goto_3
    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 375
    .local v4, "hintWidth":I
    sget-object v5, Lcom/facebook/react/views/text/TextLayoutManager;->sTextPaintInstance:Landroid/text/TextPaint;

    .line 376
    invoke-static {v8, v3, v7, v5, v4}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 377
    invoke-virtual {v3, v15}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 378
    invoke-virtual {v3, v2, v0}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 379
    invoke-virtual {v0, v12}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 380
    invoke-virtual {v0, v13}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 381
    invoke-virtual {v0, v14}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 383
    if-eqz v18, :cond_5

    sget-object v2, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_4

    :cond_5
    sget-object v2, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 382
    :goto_4
    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 384
    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v0

    .line 386
    .end local v4    # "hintWidth":I
    .local v0, "layout":Landroid/text/Layout;
    move/from16 v17, v1

    move v9, v7

    goto/16 :goto_9

    .end local v0    # "layout":Landroid/text/Layout;
    .end local v1    # "desiredWidth":F
    .restart local v17    # "desiredWidth":F
    :cond_6
    if-eqz v9, :cond_b

    if-nez v16, :cond_8

    iget v4, v9, Landroid/text/BoringLayout$Metrics;->width:I

    int-to-float v4, v4

    cmpg-float v4, v4, v10

    if-gtz v4, :cond_7

    goto :goto_5

    :cond_7
    move v9, v7

    goto :goto_7

    .line 387
    :cond_8
    :goto_5
    iget v0, v9, Landroid/text/BoringLayout$Metrics;->width:I

    .line 388
    .local v0, "boringLayoutWidth":I
    sget-object v1, Lcom/facebook/yoga/YogaMeasureMode;->EXACTLY:Lcom/facebook/yoga/YogaMeasureMode;

    if-ne v11, v1, :cond_9

    .line 389
    float-to-double v1, v10

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    .line 391
    :cond_9
    iget v1, v9, Landroid/text/BoringLayout$Metrics;->width:I

    if-gez v1, :cond_a

    .line 392
    sget-object v1, Lcom/facebook/react/views/text/TextLayoutManager;->TAG:Ljava/lang/String;

    new-instance v2, Lcom/facebook/react/bridge/ReactNoCrashSoftException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Text width is invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v9, Landroid/text/BoringLayout$Metrics;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/react/bridge/ReactNoCrashSoftException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 394
    const/4 v0, 0x0

    move/from16 v19, v0

    goto :goto_6

    .line 391
    :cond_a
    move/from16 v19, v0

    .line 398
    .end local v0    # "boringLayoutWidth":I
    .local v19, "boringLayoutWidth":I
    :goto_6
    sget-object v1, Lcom/facebook/react/views/text/TextLayoutManager;->sTextPaintInstance:Landroid/text/TextPaint;

    .line 399
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, v19

    move-object/from16 v3, p7

    move-object/from16 v6, p1

    move v9, v7

    .end local v7    # "spanLength":I
    .local v9, "spanLength":I
    move/from16 v7, p4

    invoke-static/range {v0 .. v7}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v0

    .line 408
    .end local v19    # "boringLayoutWidth":I
    .local v0, "layout":Landroid/text/Layout;
    goto :goto_9

    .line 386
    .end local v0    # "layout":Landroid/text/Layout;
    .end local v9    # "spanLength":I
    .restart local v7    # "spanLength":I
    :cond_b
    move v9, v7

    .line 410
    .end local v7    # "spanLength":I
    .restart local v9    # "spanLength":I
    :goto_7
    sget-object v4, Lcom/facebook/react/views/text/TextLayoutManager;->sTextPaintInstance:Landroid/text/TextPaint;

    float-to-double v5, v10

    .line 412
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 411
    invoke-static {v8, v3, v9, v4, v5}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 413
    invoke-virtual {v3, v15}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 414
    invoke-virtual {v3, v2, v0}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 415
    invoke-virtual {v0, v12}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 416
    invoke-virtual {v0, v13}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 417
    invoke-virtual {v0, v14}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 419
    if-eqz v18, :cond_c

    sget-object v2, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_8

    :cond_c
    sget-object v2, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 418
    :goto_8
    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 421
    .local v0, "builder":Landroid/text/StaticLayout$Builder;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_d

    .line 422
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    .line 425
    :cond_d
    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v1

    move-object v0, v1

    .line 427
    .local v0, "layout":Landroid/text/Layout;
    :goto_9
    return-object v0
.end method

.method private static createSpannableFromAttributedString(Landroid/content/Context;Lcom/facebook/react/common/mapbuffer/MapBuffer;Lcom/facebook/react/views/text/ReactTextViewManagerCallback;)Landroid/text/Spannable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attributedString"    # Lcom/facebook/react/common/mapbuffer/MapBuffer;
    .param p2, "reactTextViewManagerCallback"    # Lcom/facebook/react/views/text/ReactTextViewManagerCallback;

    .line 323
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 328
    .local v0, "sb":Landroid/text/SpannableStringBuilder;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v1, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/views/text/internal/span/SetSpanOperation;>;"
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getMapBuffer(I)Lcom/facebook/react/common/mapbuffer/MapBuffer;

    move-result-object v2

    invoke-static {p0, v2, v0, v1}, Lcom/facebook/react/views/text/TextLayoutManager;->buildSpannableFromFragments(Landroid/content/Context;Lcom/facebook/react/common/mapbuffer/MapBuffer;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    .line 334
    const/4 v2, 0x0

    .local v2, "priorityIndex":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 335
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;

    .line 339
    .local v3, "op":Lcom/facebook/react/views/text/internal/span/SetSpanOperation;
    invoke-virtual {v3, v0, v2}, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;->execute(Landroid/text/SpannableStringBuilder;I)V

    .line 334
    .end local v3    # "op":Lcom/facebook/react/views/text/internal/span/SetSpanOperation;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 342
    .end local v2    # "priorityIndex":I
    :cond_0
    if-eqz p2, :cond_1

    .line 343
    invoke-interface {p2, v0}, Lcom/facebook/react/views/text/ReactTextViewManagerCallback;->onPostProcessSpannable(Landroid/text/Spannable;)V

    .line 345
    :cond_1
    return-object v0
.end method

.method public static deleteCachedSpannableForTag(I)V
    .locals 3
    .param p0, "reactTag"    # I

    .line 110
    sget-boolean v0, Lcom/facebook/react/views/text/TextLayoutManager;->ENABLE_MEASURE_LOGGING:Z

    if-eqz v0, :cond_0

    .line 111
    sget-object v0, Lcom/facebook/react/views/text/TextLayoutManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delete cached spannable for tag["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_0
    sget-object v0, Lcom/facebook/react/views/text/TextLayoutManager;->sTagToSpannableCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-void
.end method

.method public static getOrCreateSpannableForText(Landroid/content/Context;Lcom/facebook/react/common/mapbuffer/MapBuffer;Lcom/facebook/react/views/text/ReactTextViewManagerCallback;)Landroid/text/Spannable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attributedString"    # Lcom/facebook/react/common/mapbuffer/MapBuffer;
    .param p2, "reactTextViewManagerCallback"    # Lcom/facebook/react/views/text/ReactTextViewManagerCallback;

    .line 305
    const/4 v0, 0x0

    .line 306
    .local v0, "text":Landroid/text/Spannable;
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 307
    invoke-interface {p1, v1}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 308
    .local v1, "cacheId":Ljava/lang/Integer;
    sget-object v2, Lcom/facebook/react/views/text/TextLayoutManager;->sTagToSpannableCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/text/Spannable;

    .line 309
    .end local v1    # "cacheId":Ljava/lang/Integer;
    goto :goto_0

    .line 310
    :cond_0
    nop

    .line 311
    invoke-static {p0, p1, p2}, Lcom/facebook/react/views/text/TextLayoutManager;->createSpannableFromAttributedString(Landroid/content/Context;Lcom/facebook/react/common/mapbuffer/MapBuffer;Lcom/facebook/react/views/text/ReactTextViewManagerCallback;)Landroid/text/Spannable;

    move-result-object v0

    .line 315
    :goto_0
    return-object v0
.end method

.method public static getTextAlignment(Lcom/facebook/react/common/mapbuffer/MapBuffer;Landroid/text/Spannable;)Landroid/text/Layout$Alignment;
    .locals 9
    .param p0, "attributedString"    # Lcom/facebook/react/common/mapbuffer/MapBuffer;
    .param p1, "spanned"    # Landroid/text/Spannable;

    .line 143
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    return-object v0

    .line 151
    :cond_0
    invoke-static {p0}, Lcom/facebook/react/views/text/TextLayoutManager;->isRTL(Lcom/facebook/react/common/mapbuffer/MapBuffer;)Z

    move-result v1

    .line 152
    .local v1, "isParagraphRTL":Z
    sget-object v2, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 153
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v2, p1, v4, v3}, Landroid/text/TextDirectionHeuristic;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v2

    .line 154
    .local v2, "isScriptRTL":Z
    if-eq v1, v2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    .line 157
    .local v3, "swapNormalAndOpposite":Z
    :goto_0
    if-eqz v3, :cond_2

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_1

    :cond_2
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 159
    .local v5, "alignment":Landroid/text/Layout$Alignment;
    :goto_1
    invoke-interface {p0, v0}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getMapBuffer(I)Lcom/facebook/react/common/mapbuffer/MapBuffer;

    move-result-object v0

    .line 160
    .local v0, "fragments":Lcom/facebook/react/common/mapbuffer/MapBuffer;
    invoke-interface {v0}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getCount()I

    move-result v6

    if-eqz v6, :cond_5

    .line 161
    invoke-interface {v0, v4}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getMapBuffer(I)Lcom/facebook/react/common/mapbuffer/MapBuffer;

    move-result-object v4

    .line 162
    .local v4, "fragment":Lcom/facebook/react/common/mapbuffer/MapBuffer;
    const/4 v6, 0x5

    invoke-interface {v4, v6}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getMapBuffer(I)Lcom/facebook/react/common/mapbuffer/MapBuffer;

    move-result-object v6

    .line 164
    .local v6, "textAttributes":Lcom/facebook/react/common/mapbuffer/MapBuffer;
    const/16 v7, 0xc

    invoke-interface {v6, v7}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->contains(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 165
    invoke-interface {v6, v7}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 167
    .local v7, "alignmentAttr":Ljava/lang/String;
    const-string v8, "center"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 168
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_3

    .line 169
    :cond_3
    const-string/jumbo v8, "right"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 171
    if-eqz v3, :cond_4

    .line 172
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_2

    .line 173
    :cond_4
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_2
    move-object v5, v8

    .line 178
    .end local v4    # "fragment":Lcom/facebook/react/common/mapbuffer/MapBuffer;
    .end local v6    # "textAttributes":Lcom/facebook/react/common/mapbuffer/MapBuffer;
    .end local v7    # "alignmentAttr":Ljava/lang/String;
    :cond_5
    :goto_3
    return-object v5
.end method

.method public static getTextGravity(Lcom/facebook/react/common/mapbuffer/MapBuffer;Landroid/text/Spannable;I)I
    .locals 6
    .param p0, "attributedString"    # Lcom/facebook/react/common/mapbuffer/MapBuffer;
    .param p1, "spanned"    # Landroid/text/Spannable;
    .param p2, "defaultValue"    # I

    .line 183
    move v0, p2

    .line 184
    .local v0, "gravity":I
    invoke-static {p0, p1}, Lcom/facebook/react/views/text/TextLayoutManager;->getTextAlignment(Lcom/facebook/react/common/mapbuffer/MapBuffer;Landroid/text/Spannable;)Landroid/text/Layout$Alignment;

    move-result-object v1

    .line 188
    .local v1, "alignment":Landroid/text/Layout$Alignment;
    sget-object v2, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 189
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v2, p1, v4, v3}, Landroid/text/TextDirectionHeuristic;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v2

    .line 191
    .local v2, "swapLeftAndRight":Z
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v4, 0x5

    const/4 v5, 0x3

    if-ne v1, v3, :cond_1

    .line 192
    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    move v0, v4

    goto :goto_1

    .line 193
    :cond_1
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v1, v3, :cond_3

    .line 194
    if-eqz v2, :cond_2

    move v4, v5

    :cond_2
    move v0, v4

    goto :goto_1

    .line 195
    :cond_3
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v1, v3, :cond_4

    .line 196
    const/4 v0, 0x1

    .line 199
    :cond_4
    :goto_1
    return v0
.end method

.method public static isRTL(Lcom/facebook/react/common/mapbuffer/MapBuffer;)Z
    .locals 6
    .param p0, "attributedString"    # Lcom/facebook/react/common/mapbuffer/MapBuffer;

    .line 119
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->contains(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 120
    return v2

    .line 123
    :cond_0
    invoke-interface {p0, v0}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getMapBuffer(I)Lcom/facebook/react/common/mapbuffer/MapBuffer;

    move-result-object v0

    .line 124
    .local v0, "fragments":Lcom/facebook/react/common/mapbuffer/MapBuffer;
    invoke-interface {v0}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 125
    return v2

    .line 128
    :cond_1
    invoke-interface {v0, v2}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getMapBuffer(I)Lcom/facebook/react/common/mapbuffer/MapBuffer;

    move-result-object v1

    .line 129
    .local v1, "fragment":Lcom/facebook/react/common/mapbuffer/MapBuffer;
    const/4 v3, 0x5

    invoke-interface {v1, v3}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getMapBuffer(I)Lcom/facebook/react/common/mapbuffer/MapBuffer;

    move-result-object v3

    .line 131
    .local v3, "textAttributes":Lcom/facebook/react/common/mapbuffer/MapBuffer;
    const/16 v4, 0x17

    invoke-interface {v3, v4}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->contains(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 132
    return v2

    .line 135
    :cond_2
    nop

    .line 136
    invoke-interface {v3, v4}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 135
    invoke-static {v4}, Lcom/facebook/react/views/text/TextAttributeProps;->getLayoutDirection(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    move v2, v5

    :cond_3
    return v2
.end method

.method public static measureLines(Landroid/content/Context;Lcom/facebook/react/common/mapbuffer/MapBuffer;Lcom/facebook/react/common/mapbuffer/MapBuffer;FF)Lcom/facebook/react/bridge/WritableArray;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attributedString"    # Lcom/facebook/react/common/mapbuffer/MapBuffer;
    .param p2, "paragraphAttributes"    # Lcom/facebook/react/common/mapbuffer/MapBuffer;
    .param p3, "width"    # F
    .param p4, "height"    # F

    .line 748
    nop

    .line 749
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/facebook/react/views/text/TextLayoutManager;->createLayout(Landroid/content/Context;Lcom/facebook/react/common/mapbuffer/MapBuffer;Lcom/facebook/react/common/mapbuffer/MapBuffer;FFLcom/facebook/react/views/text/ReactTextViewManagerCallback;)Landroid/text/Layout;

    move-result-object v0

    .line 750
    .local v0, "layout":Landroid/text/Layout;
    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    sget-object v2, Lcom/facebook/react/views/text/TextLayoutManager;->sTextPaintInstance:Landroid/text/TextPaint;

    invoke-static {v1, v0, v2, p0}, Lcom/facebook/react/views/text/FontMetricsUtil;->getFontMetrics(Ljava/lang/CharSequence;Landroid/text/Layout;Landroid/text/TextPaint;Landroid/content/Context;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    return-object v1
.end method

.method public static measureText(Landroid/content/Context;Lcom/facebook/react/common/mapbuffer/MapBuffer;Lcom/facebook/react/common/mapbuffer/MapBuffer;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;Lcom/facebook/react/views/text/ReactTextViewManagerCallback;[F)J
    .locals 27
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attributedString"    # Lcom/facebook/react/common/mapbuffer/MapBuffer;
    .param p2, "paragraphAttributes"    # Lcom/facebook/react/common/mapbuffer/MapBuffer;
    .param p3, "width"    # F
    .param p4, "widthYogaMeasureMode"    # Lcom/facebook/yoga/YogaMeasureMode;
    .param p5, "height"    # F
    .param p6, "heightYogaMeasureMode"    # Lcom/facebook/yoga/YogaMeasureMode;
    .param p7, "reactTextViewManagerCallback"    # Lcom/facebook/react/views/text/ReactTextViewManagerCallback;
    .param p8, "attachmentsPositions"    # [F

    .line 576
    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p6

    .line 577
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p5

    move-object/from16 v5, p7

    invoke-static/range {v0 .. v5}, Lcom/facebook/react/views/text/TextLayoutManager;->createLayout(Landroid/content/Context;Lcom/facebook/react/common/mapbuffer/MapBuffer;Lcom/facebook/react/common/mapbuffer/MapBuffer;FFLcom/facebook/react/views/text/ReactTextViewManagerCallback;)Landroid/text/Layout;

    move-result-object v0

    .line 584
    .local v0, "layout":Landroid/text/Layout;
    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 586
    .local v1, "text":Landroid/text/Spannable;
    if-nez v1, :cond_0

    .line 587
    const-wide/16 v2, 0x0

    return-wide v2

    .line 591
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->contains(I)Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_1

    .line 592
    invoke-interface {v6, v2}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getInt(I)I

    move-result v3

    goto :goto_0

    .line 593
    :cond_1
    move v3, v4

    :goto_0
    nop

    .line 596
    .local v3, "maximumNumberOfLines":I
    if-eq v3, v4, :cond_3

    if-nez v3, :cond_2

    goto :goto_1

    .line 598
    :cond_2
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_2

    .line 597
    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    .line 598
    :goto_2
    nop

    .line 602
    .local v5, "calculatedLineCount":I
    const/4 v9, 0x0

    .line 603
    .local v9, "calculatedWidth":F
    sget-object v10, Lcom/facebook/yoga/YogaMeasureMode;->EXACTLY:Lcom/facebook/yoga/YogaMeasureMode;

    const/16 v11, 0xa

    const/4 v12, 0x1

    if-ne v7, v10, :cond_4

    .line 604
    move/from16 v9, p3

    goto :goto_6

    .line 606
    :cond_4
    const/4 v10, 0x0

    .local v10, "lineIndex":I
    :goto_3
    if-ge v10, v5, :cond_8

    .line 607
    nop

    .line 608
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v13

    if-lez v13, :cond_5

    invoke-virtual {v0, v10}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v13

    sub-int/2addr v13, v12

    invoke-interface {v1, v13}, Landroid/text/Spannable;->charAt(I)C

    move-result v13

    if-ne v13, v11, :cond_5

    move v13, v12

    goto :goto_4

    :cond_5
    move v13, v2

    .line 610
    .local v13, "endsWithNewLine":Z
    :goto_4
    if-eqz v13, :cond_6

    invoke-virtual {v0, v10}, Landroid/text/Layout;->getLineMax(I)F

    move-result v14

    goto :goto_5

    :cond_6
    invoke-virtual {v0, v10}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v14

    .line 611
    .local v14, "lineWidth":F
    :goto_5
    cmpl-float v15, v14, v9

    if-lez v15, :cond_7

    .line 612
    move v9, v14

    .line 606
    .end local v13    # "endsWithNewLine":Z
    .end local v14    # "lineWidth":F
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 615
    .end local v10    # "lineIndex":I
    :cond_8
    sget-object v10, Lcom/facebook/yoga/YogaMeasureMode;->AT_MOST:Lcom/facebook/yoga/YogaMeasureMode;

    if-ne v7, v10, :cond_9

    cmpl-float v10, v9, p3

    if-lez v10, :cond_9

    .line 616
    move/from16 v9, p3

    .line 623
    :cond_9
    :goto_6
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x1d

    if-le v10, v13, :cond_a

    .line 624
    float-to-double v13, v9

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-float v9, v13

    .line 627
    :cond_a
    move/from16 v10, p5

    .line 628
    .local v10, "calculatedHeight":F
    sget-object v13, Lcom/facebook/yoga/YogaMeasureMode;->EXACTLY:Lcom/facebook/yoga/YogaMeasureMode;

    if-eq v8, v13, :cond_b

    .line 629
    add-int/lit8 v13, v5, -0x1

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v13

    int-to-float v10, v13

    .line 630
    sget-object v13, Lcom/facebook/yoga/YogaMeasureMode;->AT_MOST:Lcom/facebook/yoga/YogaMeasureMode;

    if-ne v8, v13, :cond_b

    cmpl-float v13, v10, p5

    if-lez v13, :cond_b

    .line 631
    move/from16 v10, p5

    .line 638
    :cond_b
    const/4 v13, 0x0

    .line 640
    .local v13, "attachmentIndex":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_7
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v15

    if-ge v14, v15, :cond_1a

    .line 641
    nop

    .line 642
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v15

    const-class v2, Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;

    invoke-interface {v1, v14, v15, v2}, Landroid/text/Spannable;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v2

    .line 643
    .local v2, "lastAttachmentFoundInSpan":I
    const-class v15, Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;

    .line 644
    invoke-interface {v1, v14, v2, v15}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;

    .line 645
    .local v15, "placeholders":[Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;
    array-length v11, v15

    const/4 v12, 0x0

    :goto_8
    if-ge v12, v11, :cond_19

    aget-object v4, v15, v12

    .line 646
    .local v4, "placeholder":Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;
    move/from16 v19, v3

    .end local v3    # "maximumNumberOfLines":I
    .local v19, "maximumNumberOfLines":I
    invoke-interface {v1, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 647
    .local v3, "start":I
    move/from16 v20, v5

    .end local v5    # "calculatedLineCount":I
    .local v20, "calculatedLineCount":I
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    .line 648
    .local v5, "line":I
    invoke-virtual {v0, v5}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v21

    if-lez v21, :cond_c

    const/16 v21, 0x1

    goto :goto_9

    :cond_c
    const/16 v21, 0x0

    .line 653
    .local v21, "isLineTruncated":Z
    :goto_9
    if-eqz v21, :cond_e

    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineStart(I)I

    move-result v22

    invoke-virtual {v0, v5}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v23

    add-int v6, v22, v23

    if-lt v3, v6, :cond_e

    .line 654
    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v6

    if-lt v3, v6, :cond_d

    goto :goto_a

    :cond_d
    move/from16 v23, v11

    move/from16 v18, v14

    const/16 v17, 0x1

    goto/16 :goto_12

    .line 655
    :cond_e
    :goto_a
    invoke-virtual {v4}, Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;->getWidth()I

    move-result v6

    int-to-float v6, v6

    .line 656
    .local v6, "placeholderWidth":F
    invoke-virtual {v4}, Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;->getHeight()I

    move-result v7

    int-to-float v7, v7

    .line 658
    .local v7, "placeholderHeight":F
    move-object/from16 v22, v4

    .end local v4    # "placeholder":Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;
    .local v22, "placeholder":Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;
    invoke-virtual {v0, v3}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v4

    .line 659
    .local v4, "isRtlChar":Z
    invoke-virtual {v0, v5}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v8

    move/from16 v23, v11

    const/4 v11, -0x1

    if-ne v8, v11, :cond_f

    const/4 v8, 0x1

    goto :goto_b

    :cond_f
    const/4 v8, 0x0

    .line 664
    .local v8, "isRtlParagraph":Z
    :goto_b
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v18

    const/16 v17, 0x1

    add-int/lit8 v11, v18, -0x1

    if-ne v3, v11, :cond_14

    .line 665
    nop

    .line 666
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v11

    if-lez v11, :cond_10

    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-interface {v1, v11}, Landroid/text/Spannable;->charAt(I)C

    move-result v11

    move/from16 v18, v14

    const/16 v14, 0xa

    .end local v14    # "i":I
    .local v18, "i":I
    if-ne v11, v14, :cond_11

    move/from16 v11, v17

    goto :goto_c

    .end local v18    # "i":I
    .restart local v14    # "i":I
    :cond_10
    move/from16 v18, v14

    const/16 v14, 0xa

    .end local v14    # "i":I
    .restart local v18    # "i":I
    :cond_11
    const/4 v11, 0x0

    .line 667
    .local v11, "endsWithNewLine":Z
    :goto_c
    if-eqz v11, :cond_12

    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineMax(I)F

    move-result v16

    goto :goto_d

    :cond_12
    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v16

    .line 669
    .local v16, "lineWidth":F
    :goto_d
    if-eqz v8, :cond_13

    .line 673
    sub-float v24, v9, v16

    goto :goto_e

    .line 674
    :cond_13
    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineRight(I)F

    move-result v24

    sub-float v24, v24, v6

    :goto_e
    move/from16 v11, v24

    .line 675
    .end local v16    # "lineWidth":F
    .local v11, "placeholderLeftPosition":F
    goto :goto_11

    .line 683
    .end local v11    # "placeholderLeftPosition":F
    .end local v18    # "i":I
    .restart local v14    # "i":I
    :cond_14
    move/from16 v18, v14

    const/16 v14, 0xa

    .end local v14    # "i":I
    .restart local v18    # "i":I
    if-ne v8, v4, :cond_15

    move/from16 v11, v17

    goto :goto_f

    :cond_15
    const/4 v11, 0x0

    .line 685
    .local v11, "characterAndParagraphDirectionMatch":Z
    :goto_f
    if-eqz v11, :cond_16

    .line 686
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v16

    goto :goto_10

    .line 687
    :cond_16
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v16

    :goto_10
    nop

    .line 688
    .local v16, "placeholderLeftPosition":F
    if-eqz v8, :cond_17

    if-nez v4, :cond_17

    .line 698
    nop

    .line 699
    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineRight(I)F

    move-result v24

    sub-float v24, v24, v16

    sub-float v16, v9, v24

    .line 701
    :cond_17
    if-eqz v4, :cond_18

    .line 702
    sub-float v16, v16, v6

    move/from16 v11, v16

    goto :goto_11

    .line 701
    :cond_18
    move/from16 v11, v16

    .line 706
    .end local v16    # "placeholderLeftPosition":F
    .local v11, "placeholderLeftPosition":F
    :goto_11
    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v14

    int-to-float v14, v14

    sub-float/2addr v14, v7

    .line 707
    .local v14, "placeholderTopPosition":F
    mul-int/lit8 v24, v13, 0x2

    .line 710
    .local v24, "attachmentPosition":I
    nop

    .line 711
    invoke-static {v14}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v25

    aput v25, p8, v24

    .line 712
    add-int/lit8 v25, v24, 0x1

    .line 713
    invoke-static {v11}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v26

    aput v26, p8, v25

    .line 714
    add-int/lit8 v13, v13, 0x1

    .line 645
    .end local v3    # "start":I
    .end local v4    # "isRtlChar":Z
    .end local v5    # "line":I
    .end local v6    # "placeholderWidth":F
    .end local v7    # "placeholderHeight":F
    .end local v8    # "isRtlParagraph":Z
    .end local v11    # "placeholderLeftPosition":F
    .end local v14    # "placeholderTopPosition":F
    .end local v21    # "isLineTruncated":Z
    .end local v22    # "placeholder":Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;
    .end local v24    # "attachmentPosition":I
    :goto_12
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p6

    move/from16 v14, v18

    move/from16 v3, v19

    move/from16 v5, v20

    move/from16 v11, v23

    const/4 v4, -0x1

    goto/16 :goto_8

    .end local v18    # "i":I
    .end local v19    # "maximumNumberOfLines":I
    .end local v20    # "calculatedLineCount":I
    .local v3, "maximumNumberOfLines":I
    .local v5, "calculatedLineCount":I
    .local v14, "i":I
    :cond_19
    move/from16 v19, v3

    move/from16 v20, v5

    move/from16 v18, v14

    const/16 v17, 0x1

    .line 640
    .end local v3    # "maximumNumberOfLines":I
    .end local v5    # "calculatedLineCount":I
    .end local v14    # "i":I
    .end local v15    # "placeholders":[Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;
    .restart local v18    # "i":I
    .restart local v19    # "maximumNumberOfLines":I
    .restart local v20    # "calculatedLineCount":I
    move v14, v2

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p6

    move/from16 v12, v17

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/16 v11, 0xa

    .end local v18    # "i":I
    .restart local v14    # "i":I
    goto/16 :goto_7

    .end local v2    # "lastAttachmentFoundInSpan":I
    .end local v19    # "maximumNumberOfLines":I
    .end local v20    # "calculatedLineCount":I
    .restart local v3    # "maximumNumberOfLines":I
    .restart local v5    # "calculatedLineCount":I
    :cond_1a
    move/from16 v19, v3

    move/from16 v20, v5

    move/from16 v18, v14

    .line 719
    .end local v3    # "maximumNumberOfLines":I
    .end local v5    # "calculatedLineCount":I
    .end local v14    # "i":I
    .restart local v19    # "maximumNumberOfLines":I
    .restart local v20    # "calculatedLineCount":I
    invoke-static {v9}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v2

    .line 720
    .local v2, "widthInSP":F
    invoke-static {v10}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v3

    .line 722
    .local v3, "heightInSP":F
    sget-boolean v4, Lcom/facebook/react/views/text/TextLayoutManager;->ENABLE_MEASURE_LOGGING:Z

    if-eqz v4, :cond_1b

    .line 723
    sget-object v4, Lcom/facebook/react/views/text/TextLayoutManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TextMeasure call (\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'): w: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " px - h: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " px - w : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sp - h: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    :cond_1b
    invoke-static {v2, v3}, Lcom/facebook/yoga/YogaMeasureOutput;->make(FF)J

    move-result-wide v4

    return-wide v4
.end method

.method public static setCachedSpannableForTag(ILandroid/text/Spannable;)V
    .locals 3
    .param p0, "reactTag"    # I
    .param p1, "sp"    # Landroid/text/Spannable;

    .line 103
    sget-boolean v0, Lcom/facebook/react/views/text/TextLayoutManager;->ENABLE_MEASURE_LOGGING:Z

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Lcom/facebook/react/views/text/TextLayoutManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set cached spannable for tag["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    sget-object v0, Lcom/facebook/react/views/text/TextLayoutManager;->sTagToSpannableCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-void
.end method
