.class Lcom/facebook/react/views/text/ReactTextShadowNode$1;
.super Ljava/lang/Object;
.source "ReactTextShadowNode.java"

# interfaces
.implements Lcom/facebook/yoga/YogaMeasureFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/views/text/ReactTextShadowNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;


# direct methods
.method constructor <init>(Lcom/facebook/react/views/text/ReactTextShadowNode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/views/text/ReactTextShadowNode;

    .line 64
    iput-object p1, p0, Lcom/facebook/react/views/text/ReactTextShadowNode$1;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public measure(Lcom/facebook/yoga/YogaNode;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;)J
    .locals 18
    .param p1, "node"    # Lcom/facebook/yoga/YogaNode;
    .param p2, "width"    # F
    .param p3, "widthMode"    # Lcom/facebook/yoga/YogaMeasureMode;
    .param p4, "height"    # F
    .param p5, "heightMode"    # Lcom/facebook/yoga/YogaMeasureMode;

    .line 72
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    iget-object v4, v0, Lcom/facebook/react/views/text/ReactTextShadowNode$1;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    invoke-static {v4}, Lcom/facebook/react/views/text/ReactTextShadowNode;->-$$Nest$fgetmPreparedSpannableText(Lcom/facebook/react/views/text/ReactTextShadowNode;)Landroid/text/Spannable;

    move-result-object v4

    .line 73
    const-string v5, "Spannable element has not been prepared in onBeforeLayout"

    invoke-static {v4, v5}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/Spannable;

    .line 77
    .local v4, "text":Landroid/text/Spannable;
    iget-object v5, v0, Lcom/facebook/react/views/text/ReactTextShadowNode$1;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    invoke-static {v5, v4, v1, v2}, Lcom/facebook/react/views/text/ReactTextShadowNode;->-$$Nest$mmeasureSpannedText(Lcom/facebook/react/views/text/ReactTextShadowNode;Landroid/text/Spannable;FLcom/facebook/yoga/YogaMeasureMode;)Landroid/text/Layout;

    move-result-object v5

    .line 79
    .local v5, "layout":Landroid/text/Layout;
    iget-object v6, v0, Lcom/facebook/react/views/text/ReactTextShadowNode$1;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    iget-boolean v6, v6, Lcom/facebook/react/views/text/ReactTextShadowNode;->mAdjustsFontSizeToFit:Z

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v6, :cond_6

    .line 80
    iget-object v6, v0, Lcom/facebook/react/views/text/ReactTextShadowNode$1;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    iget-object v6, v6, Lcom/facebook/react/views/text/ReactTextShadowNode;->mTextAttributes:Lcom/facebook/react/views/text/TextAttributes;

    invoke-virtual {v6}, Lcom/facebook/react/views/text/TextAttributes;->getEffectiveFontSize()I

    move-result v6

    .line 81
    .local v6, "initialFontSize":I
    iget-object v10, v0, Lcom/facebook/react/views/text/ReactTextShadowNode$1;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    iget-object v10, v10, Lcom/facebook/react/views/text/ReactTextShadowNode;->mTextAttributes:Lcom/facebook/react/views/text/TextAttributes;

    invoke-virtual {v10}, Lcom/facebook/react/views/text/TextAttributes;->getEffectiveFontSize()I

    move-result v10

    .line 83
    .local v10, "currentFontSize":I
    iget-object v11, v0, Lcom/facebook/react/views/text/ReactTextShadowNode$1;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    iget v11, v11, Lcom/facebook/react/views/text/ReactTextShadowNode;->mMinimumFontScale:F

    int-to-float v12, v6

    mul-float/2addr v11, v12

    .line 84
    const/high16 v12, 0x40800000    # 4.0f

    invoke-static {v12}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    float-to-int v11, v11

    .line 85
    .local v11, "minimumFontSize":I
    :goto_0
    if-le v10, v11, :cond_5

    iget-object v12, v0, Lcom/facebook/react/views/text/ReactTextShadowNode$1;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    iget v12, v12, Lcom/facebook/react/views/text/ReactTextShadowNode;->mNumberOfLines:I

    if-eq v12, v7, :cond_0

    .line 86
    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    move-result v12

    iget-object v13, v0, Lcom/facebook/react/views/text/ReactTextShadowNode$1;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    iget v13, v13, Lcom/facebook/react/views/text/ReactTextShadowNode;->mNumberOfLines:I

    if-gt v12, v13, :cond_1

    :cond_0
    sget-object v12, Lcom/facebook/yoga/YogaMeasureMode;->UNDEFINED:Lcom/facebook/yoga/YogaMeasureMode;

    if-eq v3, v12, :cond_4

    .line 87
    invoke-virtual {v5}, Landroid/text/Layout;->getHeight()I

    move-result v12

    int-to-float v12, v12

    cmpl-float v12, v12, p4

    if-lez v12, :cond_3

    .line 91
    :cond_1
    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v12}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v12

    float-to-int v12, v12

    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    sub-int/2addr v10, v12

    .line 93
    int-to-float v12, v10

    int-to-float v13, v6

    div-float/2addr v12, v13

    .line 94
    .local v12, "ratio":F
    nop

    .line 95
    invoke-interface {v4}, Landroid/text/Spannable;->length()I

    move-result v13

    const-class v14, Lcom/facebook/react/views/text/internal/span/ReactAbsoluteSizeSpan;

    invoke-interface {v4, v8, v13, v14}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Lcom/facebook/react/views/text/internal/span/ReactAbsoluteSizeSpan;

    .line 96
    .local v13, "sizeSpans":[Lcom/facebook/react/views/text/internal/span/ReactAbsoluteSizeSpan;
    array-length v14, v13

    move v15, v8

    :goto_1
    if-ge v15, v14, :cond_2

    aget-object v8, v13, v15

    .line 97
    .local v8, "span":Lcom/facebook/react/views/text/internal/span/ReactAbsoluteSizeSpan;
    new-instance v9, Lcom/facebook/react/views/text/internal/span/ReactAbsoluteSizeSpan;

    .line 99
    invoke-virtual {v8}, Lcom/facebook/react/views/text/internal/span/ReactAbsoluteSizeSpan;->getSize()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v12

    move-object/from16 v16, v5

    .end local v5    # "layout":Landroid/text/Layout;
    .local v16, "layout":Landroid/text/Layout;
    int-to-float v5, v11

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v9, v5}, Lcom/facebook/react/views/text/internal/span/ReactAbsoluteSizeSpan;-><init>(I)V

    .line 100
    invoke-interface {v4, v8}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 101
    invoke-interface {v4, v8}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 102
    move/from16 v17, v6

    .end local v6    # "initialFontSize":I
    .local v17, "initialFontSize":I
    invoke-interface {v4, v8}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    .line 97
    invoke-interface {v4, v9, v5, v7, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 103
    invoke-interface {v4, v8}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 96
    .end local v8    # "span":Lcom/facebook/react/views/text/internal/span/ReactAbsoluteSizeSpan;
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v5, v16

    move/from16 v6, v17

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_1

    .line 105
    .end local v16    # "layout":Landroid/text/Layout;
    .end local v17    # "initialFontSize":I
    .restart local v5    # "layout":Landroid/text/Layout;
    .restart local v6    # "initialFontSize":I
    :cond_2
    move-object/from16 v16, v5

    move/from16 v17, v6

    .end local v5    # "layout":Landroid/text/Layout;
    .end local v6    # "initialFontSize":I
    .restart local v16    # "layout":Landroid/text/Layout;
    .restart local v17    # "initialFontSize":I
    iget-object v5, v0, Lcom/facebook/react/views/text/ReactTextShadowNode$1;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    invoke-static {v5, v4, v1, v2}, Lcom/facebook/react/views/text/ReactTextShadowNode;->-$$Nest$mmeasureSpannedText(Lcom/facebook/react/views/text/ReactTextShadowNode;Landroid/text/Spannable;FLcom/facebook/yoga/YogaMeasureMode;)Landroid/text/Layout;

    move-result-object v5

    .line 106
    .end local v12    # "ratio":F
    .end local v13    # "sizeSpans":[Lcom/facebook/react/views/text/internal/span/ReactAbsoluteSizeSpan;
    .end local v16    # "layout":Landroid/text/Layout;
    .restart local v5    # "layout":Landroid/text/Layout;
    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_0

    .line 87
    .end local v17    # "initialFontSize":I
    .restart local v6    # "initialFontSize":I
    :cond_3
    move-object/from16 v16, v5

    move/from16 v17, v6

    .end local v5    # "layout":Landroid/text/Layout;
    .end local v6    # "initialFontSize":I
    .restart local v16    # "layout":Landroid/text/Layout;
    .restart local v17    # "initialFontSize":I
    goto :goto_2

    .line 86
    .end local v16    # "layout":Landroid/text/Layout;
    .end local v17    # "initialFontSize":I
    .restart local v5    # "layout":Landroid/text/Layout;
    .restart local v6    # "initialFontSize":I
    :cond_4
    move-object/from16 v16, v5

    move/from16 v17, v6

    .end local v5    # "layout":Landroid/text/Layout;
    .end local v6    # "initialFontSize":I
    .restart local v16    # "layout":Landroid/text/Layout;
    .restart local v17    # "initialFontSize":I
    goto :goto_2

    .line 85
    .end local v16    # "layout":Landroid/text/Layout;
    .end local v17    # "initialFontSize":I
    .restart local v5    # "layout":Landroid/text/Layout;
    .restart local v6    # "initialFontSize":I
    :cond_5
    move-object/from16 v16, v5

    move/from16 v17, v6

    .line 109
    .end local v5    # "layout":Landroid/text/Layout;
    .end local v6    # "initialFontSize":I
    .end local v10    # "currentFontSize":I
    .end local v11    # "minimumFontSize":I
    .restart local v16    # "layout":Landroid/text/Layout;
    :goto_2
    move-object/from16 v5, v16

    .end local v16    # "layout":Landroid/text/Layout;
    .restart local v5    # "layout":Landroid/text/Layout;
    :cond_6
    iget-object v6, v0, Lcom/facebook/react/views/text/ReactTextShadowNode$1;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    invoke-static {v6}, Lcom/facebook/react/views/text/ReactTextShadowNode;->-$$Nest$fgetmShouldNotifyOnTextLayout(Lcom/facebook/react/views/text/ReactTextShadowNode;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 110
    iget-object v6, v0, Lcom/facebook/react/views/text/ReactTextShadowNode$1;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    invoke-virtual {v6}, Lcom/facebook/react/views/text/ReactTextShadowNode;->getThemedContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v6

    .line 111
    .local v6, "themedReactContext":Lcom/facebook/react/uimanager/ThemedReactContext;
    invoke-static {}, Lcom/facebook/react/views/text/ReactTextShadowNode;->-$$Nest$sfgetsTextPaintInstance()Landroid/text/TextPaint;

    move-result-object v7

    .line 112
    invoke-static {v4, v5, v7, v6}, Lcom/facebook/react/views/text/FontMetricsUtil;->getFontMetrics(Ljava/lang/CharSequence;Landroid/text/Layout;Landroid/text/TextPaint;Landroid/content/Context;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v7

    .line 114
    .local v7, "lines":Lcom/facebook/react/bridge/WritableArray;
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v8

    .line 115
    .local v8, "event":Lcom/facebook/react/bridge/WritableMap;
    const-string v9, "lines"

    invoke-interface {v8, v9, v7}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 116
    invoke-virtual {v6}, Lcom/facebook/react/uimanager/ThemedReactContext;->hasActiveReactInstance()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 117
    const-class v9, Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    .line 118
    invoke-virtual {v6, v9}, Lcom/facebook/react/uimanager/ThemedReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v9

    check-cast v9, Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    iget-object v10, v0, Lcom/facebook/react/views/text/ReactTextShadowNode$1;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    .line 119
    invoke-virtual {v10}, Lcom/facebook/react/views/text/ReactTextShadowNode;->getReactTag()I

    move-result v10

    const-string/jumbo v11, "topTextLayout"

    invoke-interface {v9, v10, v11, v8}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_3

    .line 121
    :cond_7
    new-instance v9, Lcom/facebook/react/bridge/ReactNoCrashSoftException;

    const-string v10, "Cannot get RCTEventEmitter, no CatalystInstance"

    invoke-direct {v9, v10}, Lcom/facebook/react/bridge/ReactNoCrashSoftException;-><init>(Ljava/lang/String;)V

    const-string v10, "ReactTextShadowNode"

    invoke-static {v10, v9}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    .end local v6    # "themedReactContext":Lcom/facebook/react/uimanager/ThemedReactContext;
    .end local v7    # "lines":Lcom/facebook/react/bridge/WritableArray;
    .end local v8    # "event":Lcom/facebook/react/bridge/WritableMap;
    :cond_8
    :goto_3
    iget-object v6, v0, Lcom/facebook/react/views/text/ReactTextShadowNode$1;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    iget v6, v6, Lcom/facebook/react/views/text/ReactTextShadowNode;->mNumberOfLines:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_9

    .line 129
    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    move-result v6

    goto :goto_4

    .line 130
    :cond_9
    iget-object v6, v0, Lcom/facebook/react/views/text/ReactTextShadowNode$1;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    iget v6, v6, Lcom/facebook/react/views/text/ReactTextShadowNode;->mNumberOfLines:I

    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    :goto_4
    nop

    .line 134
    .local v6, "lineCount":I
    const/4 v7, 0x0

    .line 135
    .local v7, "layoutWidth":F
    sget-object v8, Lcom/facebook/yoga/YogaMeasureMode;->EXACTLY:Lcom/facebook/yoga/YogaMeasureMode;

    if-ne v2, v8, :cond_a

    .line 136
    move/from16 v7, p2

    goto :goto_8

    .line 138
    :cond_a
    const/4 v8, 0x0

    .local v8, "lineIndex":I
    :goto_5
    if-ge v8, v6, :cond_f

    .line 139
    nop

    .line 140
    invoke-interface {v4}, Landroid/text/Spannable;->length()I

    move-result v9

    if-lez v9, :cond_b

    invoke-virtual {v5, v8}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    invoke-interface {v4, v9}, Landroid/text/Spannable;->charAt(I)C

    move-result v9

    const/16 v11, 0xa

    if-ne v9, v11, :cond_c

    move v9, v10

    goto :goto_6

    :cond_b
    const/4 v10, 0x1

    :cond_c
    const/4 v9, 0x0

    .line 142
    .local v9, "endsWithNewLine":Z
    :goto_6
    if-eqz v9, :cond_d

    invoke-virtual {v5, v8}, Landroid/text/Layout;->getLineMax(I)F

    move-result v11

    goto :goto_7

    :cond_d
    invoke-virtual {v5, v8}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v11

    .line 143
    .local v11, "lineWidth":F
    :goto_7
    cmpl-float v12, v11, v7

    if-lez v12, :cond_e

    .line 144
    move v7, v11

    .line 138
    .end local v9    # "endsWithNewLine":Z
    .end local v11    # "lineWidth":F
    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 147
    .end local v8    # "lineIndex":I
    :cond_f
    sget-object v8, Lcom/facebook/yoga/YogaMeasureMode;->AT_MOST:Lcom/facebook/yoga/YogaMeasureMode;

    if-ne v2, v8, :cond_10

    cmpl-float v8, v7, v1

    if-lez v8, :cond_10

    .line 148
    move/from16 v7, p2

    .line 152
    :cond_10
    :goto_8
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1d

    if-le v8, v9, :cond_11

    .line 153
    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-float v7, v8

    .line 155
    :cond_11
    move/from16 v8, p4

    .line 156
    .local v8, "layoutHeight":F
    sget-object v9, Lcom/facebook/yoga/YogaMeasureMode;->EXACTLY:Lcom/facebook/yoga/YogaMeasureMode;

    if-eq v3, v9, :cond_12

    .line 157
    add-int/lit8 v9, v6, -0x1

    invoke-virtual {v5, v9}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v9

    int-to-float v8, v9

    .line 158
    sget-object v9, Lcom/facebook/yoga/YogaMeasureMode;->AT_MOST:Lcom/facebook/yoga/YogaMeasureMode;

    if-ne v3, v9, :cond_12

    cmpl-float v9, v8, p4

    if-lez v9, :cond_12

    .line 159
    move/from16 v8, p4

    .line 163
    :cond_12
    invoke-static {v7, v8}, Lcom/facebook/yoga/YogaMeasureOutput;->make(FF)J

    move-result-wide v9

    return-wide v9
.end method
