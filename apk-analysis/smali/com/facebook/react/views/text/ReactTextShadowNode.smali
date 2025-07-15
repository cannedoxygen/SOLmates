.class public Lcom/facebook/react/views/text/ReactTextShadowNode;
.super Lcom/facebook/react/views/text/ReactBaseTextShadowNode;
.source "ReactTextShadowNode.java"


# static fields
.field private static final sTextPaintInstance:Landroid/text/TextPaint;


# instance fields
.field private mPreparedSpannableText:Landroid/text/Spannable;

.field private mShouldNotifyOnTextLayout:Z

.field private final mTextBaselineFunction:Lcom/facebook/yoga/YogaBaselineFunction;

.field private final mTextMeasureFunction:Lcom/facebook/yoga/YogaMeasureFunction;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPreparedSpannableText(Lcom/facebook/react/views/text/ReactTextShadowNode;)Landroid/text/Spannable;
    .locals 0

    iget-object p0, p0, Lcom/facebook/react/views/text/ReactTextShadowNode;->mPreparedSpannableText:Landroid/text/Spannable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShouldNotifyOnTextLayout(Lcom/facebook/react/views/text/ReactTextShadowNode;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/react/views/text/ReactTextShadowNode;->mShouldNotifyOnTextLayout:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mmeasureSpannedText(Lcom/facebook/react/views/text/ReactTextShadowNode;Landroid/text/Spannable;FLcom/facebook/yoga/YogaMeasureMode;)Landroid/text/Layout;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/react/views/text/ReactTextShadowNode;->measureSpannedText(Landroid/text/Spannable;FLcom/facebook/yoga/YogaMeasureMode;)Landroid/text/Layout;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetsTextPaintInstance()Landroid/text/TextPaint;
    .locals 1

    sget-object v0, Lcom/facebook/react/views/text/ReactTextShadowNode;->sTextPaintInstance:Landroid/text/TextPaint;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 57
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lcom/facebook/react/views/text/ReactTextShadowNode;->sTextPaintInstance:Landroid/text/TextPaint;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 182
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/react/views/text/ReactTextShadowNode;-><init>(Lcom/facebook/react/views/text/ReactTextViewManagerCallback;)V

    .line 183
    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/views/text/ReactTextViewManagerCallback;)V
    .locals 1
    .param p1, "reactTextViewManagerCallback"    # Lcom/facebook/react/views/text/ReactTextViewManagerCallback;

    .line 186
    invoke-direct {p0, p1}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;-><init>(Lcom/facebook/react/views/text/ReactTextViewManagerCallback;)V

    .line 63
    new-instance v0, Lcom/facebook/react/views/text/ReactTextShadowNode$1;

    invoke-direct {v0, p0}, Lcom/facebook/react/views/text/ReactTextShadowNode$1;-><init>(Lcom/facebook/react/views/text/ReactTextShadowNode;)V

    iput-object v0, p0, Lcom/facebook/react/views/text/ReactTextShadowNode;->mTextMeasureFunction:Lcom/facebook/yoga/YogaMeasureFunction;

    .line 167
    new-instance v0, Lcom/facebook/react/views/text/ReactTextShadowNode$2;

    invoke-direct {v0, p0}, Lcom/facebook/react/views/text/ReactTextShadowNode$2;-><init>(Lcom/facebook/react/views/text/ReactTextShadowNode;)V

    iput-object v0, p0, Lcom/facebook/react/views/text/ReactTextShadowNode;->mTextBaselineFunction:Lcom/facebook/yoga/YogaBaselineFunction;

    .line 187
    invoke-direct {p0}, Lcom/facebook/react/views/text/ReactTextShadowNode;->initMeasureFunction()V

    .line 188
    return-void
.end method

.method private getTextAlign()I
    .locals 3

    .line 283
    iget v0, p0, Lcom/facebook/react/views/text/ReactTextShadowNode;->mTextAlign:I

    .line 284
    .local v0, "textAlign":I
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextShadowNode;->getLayoutDirection()Lcom/facebook/yoga/YogaDirection;

    move-result-object v1

    sget-object v2, Lcom/facebook/yoga/YogaDirection;->RTL:Lcom/facebook/yoga/YogaDirection;

    if-ne v1, v2, :cond_1

    .line 285
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 286
    const/4 v0, 0x3

    goto :goto_0

    .line 287
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 288
    const/4 v0, 0x5

    .line 291
    :cond_1
    :goto_0
    return v0
.end method

.method private initMeasureFunction()V
    .locals 1

    .line 191
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextShadowNode;->isVirtual()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactTextShadowNode;->mTextMeasureFunction:Lcom/facebook/yoga/YogaMeasureFunction;

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/ReactTextShadowNode;->setMeasureFunction(Lcom/facebook/yoga/YogaMeasureFunction;)V

    .line 193
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactTextShadowNode;->mTextBaselineFunction:Lcom/facebook/yoga/YogaBaselineFunction;

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/ReactTextShadowNode;->setBaselineFunction(Lcom/facebook/yoga/YogaBaselineFunction;)V

    .line 195
    :cond_0
    return-void
.end method

.method private measureSpannedText(Landroid/text/Spannable;FLcom/facebook/yoga/YogaMeasureMode;)Landroid/text/Layout;
    .locals 18
    .param p1, "text"    # Landroid/text/Spannable;
    .param p2, "width"    # F
    .param p3, "widthMode"    # Lcom/facebook/yoga/YogaMeasureMode;

    .line 199
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    sget-object v11, Lcom/facebook/react/views/text/ReactTextShadowNode;->sTextPaintInstance:Landroid/text/TextPaint;

    .line 200
    .local v11, "textPaint":Landroid/text/TextPaint;
    iget-object v1, v0, Lcom/facebook/react/views/text/ReactTextShadowNode;->mTextAttributes:Lcom/facebook/react/views/text/TextAttributes;

    invoke-virtual {v1}, Lcom/facebook/react/views/text/TextAttributes;->getEffectiveFontSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v11, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 202
    invoke-static {v9, v11}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;)Landroid/text/BoringLayout$Metrics;

    move-result-object v12

    .line 203
    .local v12, "boring":Landroid/text/BoringLayout$Metrics;
    if-nez v12, :cond_0

    invoke-static {v9, v11}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    goto :goto_0

    :cond_0
    const/high16 v1, 0x7fc00000    # Float.NaN

    :goto_0
    move v13, v1

    .line 206
    .local v13, "desiredWidth":F
    sget-object v1, Lcom/facebook/yoga/YogaMeasureMode;->UNDEFINED:Lcom/facebook/yoga/YogaMeasureMode;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v14, p3

    if-eq v14, v1, :cond_2

    cmpg-float v1, v10, v2

    if-gez v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v4

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v3

    :goto_2
    move v15, v1

    .line 208
    .local v15, "unconstrainedWidth":Z
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 209
    .local v1, "alignment":Landroid/text/Layout$Alignment;
    invoke-direct/range {p0 .. p0}, Lcom/facebook/react/views/text/ReactTextShadowNode;->getTextAlign()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    move-object v8, v1

    goto :goto_3

    .line 214
    :pswitch_1
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 215
    move-object v8, v1

    goto :goto_3

    .line 211
    :pswitch_2
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 212
    move-object v8, v1

    goto :goto_3

    .line 217
    :pswitch_3
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    move-object v8, v1

    .line 221
    .end local v1    # "alignment":Landroid/text/Layout$Alignment;
    .local v8, "alignment":Landroid/text/Layout$Alignment;
    :goto_3
    const/16 v1, 0x1c

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v12, :cond_6

    if-nez v15, :cond_3

    .line 223
    invoke-static {v13}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v6

    if-nez v6, :cond_6

    cmpg-float v6, v13, v10

    if-gtz v6, :cond_6

    .line 226
    :cond_3
    float-to-double v6, v13

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 227
    .local v6, "hintWidth":I
    nop

    .line 228
    invoke-interface/range {p1 .. p1}, Landroid/text/Spannable;->length()I

    move-result v7

    invoke-static {v9, v4, v7, v11, v6}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v4

    .line 229
    invoke-virtual {v4, v8}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v4

    .line 230
    invoke-virtual {v4, v2, v5}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    iget-boolean v4, v0, Lcom/facebook/react/views/text/ReactTextShadowNode;->mIncludeFontPadding:Z

    .line 231
    invoke-virtual {v2, v4}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    iget v4, v0, Lcom/facebook/react/views/text/ReactTextShadowNode;->mTextBreakStrategy:I

    .line 232
    invoke-virtual {v2, v4}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    iget v4, v0, Lcom/facebook/react/views/text/ReactTextShadowNode;->mHyphenationFrequency:I

    .line 233
    invoke-virtual {v2, v4}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 235
    .local v2, "builder":Landroid/text/StaticLayout$Builder;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_4

    .line 236
    iget v4, v0, Lcom/facebook/react/views/text/ReactTextShadowNode;->mJustificationMode:I

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout$Builder;->setJustificationMode(I)Landroid/text/StaticLayout$Builder;

    .line 238
    :cond_4
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v1, :cond_5

    .line 239
    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    .line 241
    :cond_5
    invoke-virtual {v2}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v1

    .line 243
    .end local v2    # "builder":Landroid/text/StaticLayout$Builder;
    .end local v6    # "hintWidth":I
    .local v1, "layout":Landroid/text/Layout;
    move-object/from16 v17, v12

    move-object v12, v8

    goto/16 :goto_7

    .end local v1    # "layout":Landroid/text/Layout;
    :cond_6
    if-eqz v12, :cond_9

    if-nez v15, :cond_8

    iget v6, v12, Landroid/text/BoringLayout$Metrics;->width:I

    int-to-float v6, v6

    cmpg-float v6, v6, v10

    if-gtz v6, :cond_7

    goto :goto_4

    :cond_7
    move-object/from16 v17, v12

    move-object v12, v8

    goto :goto_5

    .line 246
    :cond_8
    :goto_4
    iget v1, v12, Landroid/text/BoringLayout$Metrics;->width:I

    .line 250
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-boolean v7, v0, Lcom/facebook/react/views/text/ReactTextShadowNode;->mIncludeFontPadding:Z

    .line 247
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object v2, v11

    move-object v4, v8

    move/from16 v16, v7

    move-object v7, v12

    move-object/from16 v17, v12

    move-object v12, v8

    .end local v8    # "alignment":Landroid/text/Layout$Alignment;
    .local v12, "alignment":Landroid/text/Layout$Alignment;
    .local v17, "boring":Landroid/text/BoringLayout$Metrics;
    move/from16 v8, v16

    invoke-static/range {v1 .. v8}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v1

    .restart local v1    # "layout":Landroid/text/Layout;
    goto :goto_7

    .line 243
    .end local v1    # "layout":Landroid/text/Layout;
    .end local v17    # "boring":Landroid/text/BoringLayout$Metrics;
    .restart local v8    # "alignment":Landroid/text/Layout$Alignment;
    .local v12, "boring":Landroid/text/BoringLayout$Metrics;
    :cond_9
    move-object/from16 v17, v12

    move-object v12, v8

    .line 261
    .end local v8    # "alignment":Landroid/text/Layout$Alignment;
    .local v12, "alignment":Landroid/text/Layout$Alignment;
    .restart local v17    # "boring":Landroid/text/BoringLayout$Metrics;
    :goto_5
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1d

    if-le v6, v7, :cond_a

    .line 262
    float-to-double v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-float v6, v6

    .end local p2    # "width":F
    .local v6, "width":F
    goto :goto_6

    .line 261
    .end local v6    # "width":F
    .restart local p2    # "width":F
    :cond_a
    move v6, v10

    .line 265
    .end local p2    # "width":F
    .restart local v6    # "width":F
    :goto_6
    nop

    .line 266
    invoke-interface/range {p1 .. p1}, Landroid/text/Spannable;->length()I

    move-result v7

    float-to-int v8, v6

    invoke-static {v9, v4, v7, v11, v8}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v4

    .line 267
    invoke-virtual {v4, v12}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v4

    .line 268
    invoke-virtual {v4, v2, v5}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    iget-boolean v4, v0, Lcom/facebook/react/views/text/ReactTextShadowNode;->mIncludeFontPadding:Z

    .line 269
    invoke-virtual {v2, v4}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    iget v4, v0, Lcom/facebook/react/views/text/ReactTextShadowNode;->mTextBreakStrategy:I

    .line 270
    invoke-virtual {v2, v4}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    iget v4, v0, Lcom/facebook/react/views/text/ReactTextShadowNode;->mHyphenationFrequency:I

    .line 271
    invoke-virtual {v2, v4}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 273
    .restart local v2    # "builder":Landroid/text/StaticLayout$Builder;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v1, :cond_b

    .line 274
    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    .line 276
    :cond_b
    invoke-virtual {v2}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v1

    move v10, v6

    .line 278
    .end local v2    # "builder":Landroid/text/StaticLayout$Builder;
    .end local v6    # "width":F
    .restart local v1    # "layout":Landroid/text/Layout;
    .local v10, "width":F
    :goto_7
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public calculateLayoutOnChildren()Ljava/lang/Iterable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/facebook/react/uimanager/ReactShadowNode;",
            ">;"
        }
    .end annotation

    .line 356
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactTextShadowNode;->mInlineViews:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/react/views/text/ReactTextShadowNode;->mInlineViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactTextShadowNode;->mPreparedSpannableText:Landroid/text/Spannable;

    .line 361
    const-string v1, "Spannable element has not been prepared in onBeforeLayout"

    invoke-static {v0, v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    .line 363
    .local v0, "text":Landroid/text/Spanned;
    nop

    .line 364
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;

    .line 365
    .local v1, "placeholders":[Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;
    new-instance v2, Ljava/util/ArrayList;

    array-length v4, v1

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 367
    .local v2, "shadowNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/react/uimanager/ReactShadowNode;>;"
    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v1, v3

    .line 368
    .local v5, "placeholder":Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;
    iget-object v6, p0, Lcom/facebook/react/views/text/ReactTextShadowNode;->mInlineViews:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;->getReactTag()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/react/uimanager/ReactShadowNode;

    .line 369
    .local v6, "child":Lcom/facebook/react/uimanager/ReactShadowNode;
    invoke-interface {v6}, Lcom/facebook/react/uimanager/ReactShadowNode;->calculateLayout()V

    .line 370
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    .end local v5    # "placeholder":Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;
    .end local v6    # "child":Lcom/facebook/react/uimanager/ReactShadowNode;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 373
    :cond_1
    return-object v2

    .line 357
    .end local v0    # "text":Landroid/text/Spanned;
    .end local v1    # "placeholders":[Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;
    .end local v2    # "shadowNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/react/uimanager/ReactShadowNode;>;"
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public hoistNativeChildren()Z
    .locals 1

    .line 315
    const/4 v0, 0x1

    return v0
.end method

.method public isVirtualAnchor()Z
    .locals 1

    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public markUpdated()V
    .locals 0

    .line 320
    invoke-super {p0}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->markUpdated()V

    .line 322
    invoke-super {p0}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->dirty()V

    .line 323
    return-void
.end method

.method public onBeforeLayout(Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;)V
    .locals 2
    .param p1, "nativeViewHierarchyOptimizer"    # Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;

    .line 296
    nop

    .line 297
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p0, v0, v1, p1}, Lcom/facebook/react/views/text/ReactTextShadowNode;->spannedFromShadowNode(Lcom/facebook/react/views/text/ReactBaseTextShadowNode;Ljava/lang/String;ZLcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;)Landroid/text/Spannable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/views/text/ReactTextShadowNode;->mPreparedSpannableText:Landroid/text/Spannable;

    .line 302
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextShadowNode;->markUpdated()V

    .line 303
    return-void
.end method

.method public onCollectExtraUpdates(Lcom/facebook/react/uimanager/UIViewOperationQueue;)V
    .locals 12
    .param p1, "uiViewOperationQueue"    # Lcom/facebook/react/uimanager/UIViewOperationQueue;

    .line 327
    invoke-super {p0, p1}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->onCollectExtraUpdates(Lcom/facebook/react/uimanager/UIViewOperationQueue;)V

    .line 329
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactTextShadowNode;->mPreparedSpannableText:Landroid/text/Spannable;

    if-eqz v0, :cond_0

    .line 330
    new-instance v0, Lcom/facebook/react/views/text/ReactTextUpdate;

    iget-object v2, p0, Lcom/facebook/react/views/text/ReactTextShadowNode;->mPreparedSpannableText:Landroid/text/Spannable;

    iget-boolean v4, p0, Lcom/facebook/react/views/text/ReactTextShadowNode;->mContainsImages:Z

    .line 335
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/facebook/react/views/text/ReactTextShadowNode;->getPadding(I)F

    move-result v5

    .line 336
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/facebook/react/views/text/ReactTextShadowNode;->getPadding(I)F

    move-result v6

    .line 337
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/facebook/react/views/text/ReactTextShadowNode;->getPadding(I)F

    move-result v7

    .line 338
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/facebook/react/views/text/ReactTextShadowNode;->getPadding(I)F

    move-result v8

    .line 339
    invoke-direct {p0}, Lcom/facebook/react/views/text/ReactTextShadowNode;->getTextAlign()I

    move-result v9

    iget v10, p0, Lcom/facebook/react/views/text/ReactTextShadowNode;->mTextBreakStrategy:I

    iget v11, p0, Lcom/facebook/react/views/text/ReactTextShadowNode;->mJustificationMode:I

    const/4 v3, -0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/facebook/react/views/text/ReactTextUpdate;-><init>(Landroid/text/Spannable;IZFFFFIII)V

    .line 342
    .local v0, "reactTextUpdate":Lcom/facebook/react/views/text/ReactTextUpdate;
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextShadowNode;->getReactTag()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueUpdateExtraData(ILjava/lang/Object;)V

    .line 344
    .end local v0    # "reactTextUpdate":Lcom/facebook/react/views/text/ReactTextUpdate;
    :cond_0
    return-void
.end method

.method public setShouldNotifyOnTextLayout(Z)V
    .locals 0
    .param p1, "shouldNotifyOnTextLayout"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "onTextLayout"
    .end annotation

    .line 348
    iput-boolean p1, p0, Lcom/facebook/react/views/text/ReactTextShadowNode;->mShouldNotifyOnTextLayout:Z

    .line 349
    return-void
.end method
