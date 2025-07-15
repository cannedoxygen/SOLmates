.class public Lcom/facebook/react/views/text/ReactTextViewManager;
.super Lcom/facebook/react/views/text/ReactTextAnchorViewManager;
.source "ReactTextViewManager.java"

# interfaces
.implements Lcom/facebook/react/uimanager/IViewManagerWithChildren;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "RCTText"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/views/text/ReactTextAnchorViewManager<",
        "Lcom/facebook/react/views/text/ReactTextView;",
        "Lcom/facebook/react/views/text/ReactTextShadowNode;",
        ">;",
        "Lcom/facebook/react/uimanager/IViewManagerWithChildren;"
    }
.end annotation


# static fields
.field public static final REACT_CLASS:Ljava/lang/String; = "RCTText"
    .annotation runtime Lcom/facebook/react/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ReactTextViewManager"

.field private static final TX_STATE_KEY_ATTRIBUTED_STRING:S = 0x0s

.field private static final TX_STATE_KEY_HASH:S = 0x2s

.field private static final TX_STATE_KEY_MOST_RECENT_EVENT_COUNT:S = 0x3s

.field private static final TX_STATE_KEY_PARAGRAPH_ATTRIBUTES:S = 0x1s


# instance fields
.field protected mReactTextViewManagerCallback:Lcom/facebook/react/views/text/ReactTextViewManagerCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/react/views/text/ReactTextViewManager;-><init>(Lcom/facebook/react/views/text/ReactTextViewManagerCallback;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/views/text/ReactTextViewManagerCallback;)V
    .locals 0
    .param p1, "reactTextViewManagerCallback"    # Lcom/facebook/react/views/text/ReactTextViewManagerCallback;

    .line 59
    invoke-direct {p0}, Lcom/facebook/react/views/text/ReactTextAnchorViewManager;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/facebook/react/views/text/ReactTextViewManager;->mReactTextViewManagerCallback:Lcom/facebook/react/views/text/ReactTextViewManagerCallback;

    .line 61
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextViewManager;->setupViewRecycling()V

    .line 62
    return-void
.end method

.method private getReactTextUpdate(Lcom/facebook/react/views/text/ReactTextView;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/common/mapbuffer/MapBuffer;)Ljava/lang/Object;
    .locals 17
    .param p1, "view"    # Lcom/facebook/react/views/text/ReactTextView;
    .param p2, "props"    # Lcom/facebook/react/uimanager/ReactStylesDiffMap;
    .param p3, "state"    # Lcom/facebook/react/common/mapbuffer/MapBuffer;

    .line 153
    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getMapBuffer(I)Lcom/facebook/react/common/mapbuffer/MapBuffer;

    move-result-object v3

    .line 154
    .local v3, "attributedString":Lcom/facebook/react/common/mapbuffer/MapBuffer;
    const/4 v4, 0x1

    invoke-interface {v2, v4}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getMapBuffer(I)Lcom/facebook/react/common/mapbuffer/MapBuffer;

    move-result-object v4

    .line 155
    .local v4, "paragraphAttributes":Lcom/facebook/react/common/mapbuffer/MapBuffer;
    nop

    .line 157
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/react/views/text/ReactTextView;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v6, p0

    iget-object v7, v6, Lcom/facebook/react/views/text/ReactTextViewManager;->mReactTextViewManagerCallback:Lcom/facebook/react/views/text/ReactTextViewManagerCallback;

    .line 156
    invoke-static {v5, v3, v7}, Lcom/facebook/react/views/text/TextLayoutManager;->getOrCreateSpannableForText(Landroid/content/Context;Lcom/facebook/react/common/mapbuffer/MapBuffer;Lcom/facebook/react/views/text/ReactTextViewManagerCallback;)Landroid/text/Spannable;

    move-result-object v5

    .line 158
    .local v5, "spanned":Landroid/text/Spannable;
    invoke-virtual {v1, v5}, Lcom/facebook/react/views/text/ReactTextView;->setSpanned(Landroid/text/Spannable;)V

    .line 161
    nop

    .line 162
    const/4 v7, 0x6

    :try_start_0
    invoke-interface {v4, v7}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getDouble(I)D

    move-result-wide v7

    double-to-float v7, v7

    .line 163
    .local v7, "minimumFontSize":F
    invoke-virtual {v1, v7}, Lcom/facebook/react/views/text/ReactTextView;->setMinimumFontSize(F)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v7    # "minimumFontSize":F
    nop

    .line 173
    nop

    .line 175
    const/4 v7, 0x2

    invoke-interface {v4, v7}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 174
    invoke-static {v7}, Lcom/facebook/react/views/text/TextAttributeProps;->getTextBreakStrategy(Ljava/lang/String;)I

    move-result v7

    .line 177
    .local v7, "textBreakStrategy":I
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1a

    if-ge v8, v9, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/react/views/text/ReactTextView;->getJustificationMode()I

    move-result v0

    .line 179
    .local v0, "currentJustificationMode":I
    :goto_0
    new-instance v15, Lcom/facebook/react/views/text/ReactTextUpdate;

    .line 183
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/react/views/text/ReactTextView;->getGravityHorizontal()I

    move-result v8

    invoke-static {v3, v5, v8}, Lcom/facebook/react/views/text/TextLayoutManager;->getTextGravity(Lcom/facebook/react/common/mapbuffer/MapBuffer;Landroid/text/Spannable;I)I

    move-result v12

    .line 185
    move-object/from16 v14, p2

    invoke-static {v14, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->getJustificationMode(Lcom/facebook/react/uimanager/ReactStylesDiffMap;I)I

    move-result v16

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object v8, v15

    move-object v9, v5

    move v13, v7

    move/from16 v14, v16

    invoke-direct/range {v8 .. v14}, Lcom/facebook/react/views/text/ReactTextUpdate;-><init>(Landroid/text/Spannable;IZIII)V

    .line 179
    return-object v15

    .line 164
    .end local v0    # "currentJustificationMode":I
    .end local v7    # "textBreakStrategy":I
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    nop

    .line 169
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_1
    const-string v7, "<empty>"

    :goto_1
    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    .line 166
    const-string v8, "ReactTextViewManager"

    const-string v9, "Paragraph Attributes: %s"

    invoke-static {v8, v9, v7}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    throw v0
.end method


# virtual methods
.method public bridge synthetic createShadowNodeInstance()Lcom/facebook/react/uimanager/ReactShadowNode;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextViewManager;->createShadowNodeInstance()Lcom/facebook/react/views/text/ReactTextShadowNode;

    move-result-object v0

    return-object v0
.end method

.method public createShadowNodeInstance()Lcom/facebook/react/views/text/ReactTextShadowNode;
    .locals 2

    .line 115
    new-instance v0, Lcom/facebook/react/views/text/ReactTextShadowNode;

    iget-object v1, p0, Lcom/facebook/react/views/text/ReactTextViewManager;->mReactTextViewManagerCallback:Lcom/facebook/react/views/text/ReactTextViewManagerCallback;

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/ReactTextShadowNode;-><init>(Lcom/facebook/react/views/text/ReactTextViewManagerCallback;)V

    return-object v0
.end method

.method public createShadowNodeInstance(Lcom/facebook/react/views/text/ReactTextViewManagerCallback;)Lcom/facebook/react/views/text/ReactTextShadowNode;
    .locals 1
    .param p1, "reactTextViewManagerCallback"    # Lcom/facebook/react/views/text/ReactTextViewManagerCallback;

    .line 120
    new-instance v0, Lcom/facebook/react/views/text/ReactTextShadowNode;

    invoke-direct {v0, p1}, Lcom/facebook/react/views/text/ReactTextShadowNode;-><init>(Lcom/facebook/react/views/text/ReactTextViewManagerCallback;)V

    return-object v0
.end method

.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/text/ReactTextViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/text/ReactTextView;

    move-result-object p1

    return-object p1
.end method

.method public createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/text/ReactTextView;
    .locals 1
    .param p1, "context"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 85
    new-instance v0, Lcom/facebook/react/views/text/ReactTextView;

    invoke-direct {v0, p1}, Lcom/facebook/react/views/text/ReactTextView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getExportedCustomDirectEventTypeConstants()Ljava/util/Map;
    .locals 6

    .line 191
    invoke-super {p0}, Lcom/facebook/react/views/text/ReactTextAnchorViewManager;->getExportedCustomDirectEventTypeConstants()Ljava/util/Map;

    move-result-object v0

    .line 193
    .local v0, "baseEventTypeConstants":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 194
    .local v1, "eventTypeConstants":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    nop

    .line 196
    const-string/jumbo v2, "registrationName"

    const-string/jumbo v3, "onTextLayout"

    invoke-static {v2, v3}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 197
    const-string/jumbo v4, "onInlineViewLayout"

    invoke-static {v2, v4}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    .line 195
    const-string/jumbo v4, "topTextLayout"

    const-string/jumbo v5, "topInlineViewLayout"

    invoke-static {v4, v3, v5, v2}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    .line 194
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 198
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 80
    const-string v0, "RCTText"

    return-object v0
.end method

.method public getShadowNodeClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/react/views/text/ReactTextShadowNode;",
            ">;"
        }
    .end annotation

    .line 125
    const-class v0, Lcom/facebook/react/views/text/ReactTextShadowNode;

    return-object v0
.end method

.method public measure(Landroid/content/Context;Lcom/facebook/react/common/mapbuffer/MapBuffer;Lcom/facebook/react/common/mapbuffer/MapBuffer;Lcom/facebook/react/common/mapbuffer/MapBuffer;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;[F)J
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "localData"    # Lcom/facebook/react/common/mapbuffer/MapBuffer;
    .param p3, "props"    # Lcom/facebook/react/common/mapbuffer/MapBuffer;
    .param p4, "state"    # Lcom/facebook/react/common/mapbuffer/MapBuffer;
    .param p5, "width"    # F
    .param p6, "widthMode"    # Lcom/facebook/yoga/YogaMeasureMode;
    .param p7, "height"    # F
    .param p8, "heightMode"    # Lcom/facebook/yoga/YogaMeasureMode;
    .param p9, "attachmentsPositions"    # [F

    .line 212
    move-object v0, p0

    iget-object v8, v0, Lcom/facebook/react/views/text/ReactTextViewManager;->mReactTextViewManagerCallback:Lcom/facebook/react/views/text/ReactTextViewManagerCallback;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v9, p9

    invoke-static/range {v1 .. v9}, Lcom/facebook/react/views/text/TextLayoutManager;->measureText(Landroid/content/Context;Lcom/facebook/react/common/mapbuffer/MapBuffer;Lcom/facebook/react/common/mapbuffer/MapBuffer;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;Lcom/facebook/react/views/text/ReactTextViewManagerCallback;[F)J

    move-result-wide v1

    return-wide v1
.end method

.method public needsCustomLayoutForChildren()Z
    .locals 1

    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic onAfterUpdateTransaction(Landroid/view/View;)V
    .locals 0

    .line 38
    check-cast p1, Lcom/facebook/react/views/text/ReactTextView;

    invoke-virtual {p0, p1}, Lcom/facebook/react/views/text/ReactTextViewManager;->onAfterUpdateTransaction(Lcom/facebook/react/views/text/ReactTextView;)V

    return-void
.end method

.method protected onAfterUpdateTransaction(Lcom/facebook/react/views/text/ReactTextView;)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/text/ReactTextView;

    .line 130
    invoke-super {p0, p1}, Lcom/facebook/react/views/text/ReactTextAnchorViewManager;->onAfterUpdateTransaction(Landroid/view/View;)V

    .line 131
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextView;->updateView()V

    .line 132
    return-void
.end method

.method protected bridge synthetic prepareToRecycleView(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 38
    check-cast p2, Lcom/facebook/react/views/text/ReactTextView;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/text/ReactTextViewManager;->prepareToRecycleView(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/views/text/ReactTextView;)Lcom/facebook/react/views/text/ReactTextView;

    move-result-object p1

    return-object p1
.end method

.method protected prepareToRecycleView(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/views/text/ReactTextView;)Lcom/facebook/react/views/text/ReactTextView;
    .locals 2
    .param p1, "reactContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;
    .param p2, "view"    # Lcom/facebook/react/views/text/ReactTextView;

    .line 68
    invoke-super {p0, p1, p2}, Lcom/facebook/react/views/text/ReactTextAnchorViewManager;->prepareToRecycleView(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/views/text/ReactTextView;

    .line 69
    .local v0, "preparedView":Lcom/facebook/react/views/text/ReactTextView;
    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Lcom/facebook/react/views/text/ReactTextView;->recycleView()V

    .line 73
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/text/ReactTextViewManager;->setSelectionColor(Lcom/facebook/react/views/text/ReactTextView;Ljava/lang/Integer;)V

    .line 75
    :cond_0
    return-object p2
.end method

.method public setOverflow(Lcom/facebook/react/views/text/ReactTextView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/text/ReactTextView;
    .param p2, "overflow"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "overflow"
    .end annotation

    .line 231
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/text/ReactTextView;->setOverflow(Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public bridge synthetic setPadding(Landroid/view/View;IIII)V
    .locals 6

    .line 38
    move-object v1, p1

    check-cast v1, Lcom/facebook/react/views/text/ReactTextView;

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/react/views/text/ReactTextViewManager;->setPadding(Lcom/facebook/react/views/text/ReactTextView;IIII)V

    return-void
.end method

.method public setPadding(Lcom/facebook/react/views/text/ReactTextView;IIII)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/text/ReactTextView;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 226
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/facebook/react/views/text/ReactTextView;->setPadding(IIII)V

    .line 227
    return-void
.end method

.method public bridge synthetic updateExtraData(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p1, Lcom/facebook/react/views/text/ReactTextView;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/text/ReactTextViewManager;->updateExtraData(Lcom/facebook/react/views/text/ReactTextView;Ljava/lang/Object;)V

    return-void
.end method

.method public updateExtraData(Lcom/facebook/react/views/text/ReactTextView;Ljava/lang/Object;)V
    .locals 6
    .param p1, "view"    # Lcom/facebook/react/views/text/ReactTextView;
    .param p2, "extraData"    # Ljava/lang/Object;

    .line 90
    new-instance v0, Lcom/facebook/react/internal/SystraceSection;

    const-string v1, "ReactTextViewManager.updateExtraData"

    invoke-direct {v0, v1}, Lcom/facebook/react/internal/SystraceSection;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, "s":Lcom/facebook/react/internal/SystraceSection;
    :try_start_0
    move-object v1, p2

    check-cast v1, Lcom/facebook/react/views/text/ReactTextUpdate;

    .line 92
    .local v1, "update":Lcom/facebook/react/views/text/ReactTextUpdate;
    invoke-virtual {v1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getText()Landroid/text/Spannable;

    move-result-object v2

    .line 93
    .local v2, "spannable":Landroid/text/Spannable;
    invoke-virtual {v1}, Lcom/facebook/react/views/text/ReactTextUpdate;->containsImages()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    invoke-static {v2, p1}, Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;->possiblyUpdateInlineImageSpans(Landroid/text/Spannable;Landroid/widget/TextView;)V

    .line 96
    :cond_0
    invoke-virtual {p1, v1}, Lcom/facebook/react/views/text/ReactTextView;->setText(Lcom/facebook/react/views/text/ReactTextUpdate;)V

    .line 100
    nop

    .line 101
    invoke-virtual {v1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getText()Landroid/text/Spannable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Spannable;->length()I

    move-result v3

    const-class v4, Lcom/facebook/react/views/text/internal/span/ReactClickableSpan;

    const/4 v5, 0x0

    invoke-interface {v2, v5, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/facebook/react/views/text/internal/span/ReactClickableSpan;

    .line 103
    .local v3, "clickableSpans":[Lcom/facebook/react/views/text/internal/span/ReactClickableSpan;
    array-length v4, v3

    if-lez v4, :cond_1

    .line 104
    sget v4, Lcom/facebook/react/R$id;->accessibility_links:I

    new-instance v5, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks;

    invoke-direct {v5, v3, v2}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks;-><init>([Landroid/text/style/ClickableSpan;Landroid/text/Spannable;)V

    invoke-virtual {p1, v4, v5}, Lcom/facebook/react/views/text/ReactTextView;->setTag(ILjava/lang/Object;)V

    .line 107
    nop

    .line 108
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextView;->isFocusable()Z

    move-result v4

    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextView;->getImportantForAccessibility()I

    move-result v5

    .line 107
    invoke-static {p1, v4, v5}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->resetDelegate(Landroid/view/View;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .end local v1    # "update":Lcom/facebook/react/views/text/ReactTextUpdate;
    .end local v2    # "spannable":Landroid/text/Spannable;
    .end local v3    # "clickableSpans":[Lcom/facebook/react/views/text/internal/span/ReactClickableSpan;
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/react/internal/SystraceSection;->close()V

    .line 111
    .end local v0    # "s":Lcom/facebook/react/internal/SystraceSection;
    return-void

    .line 90
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

.method public bridge synthetic updateState(Landroid/view/View;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/StateWrapper;)Ljava/lang/Object;
    .locals 0

    .line 38
    check-cast p1, Lcom/facebook/react/views/text/ReactTextView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/react/views/text/ReactTextViewManager;->updateState(Lcom/facebook/react/views/text/ReactTextView;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/StateWrapper;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updateState(Lcom/facebook/react/views/text/ReactTextView;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/StateWrapper;)Ljava/lang/Object;
    .locals 3
    .param p1, "view"    # Lcom/facebook/react/views/text/ReactTextView;
    .param p2, "props"    # Lcom/facebook/react/uimanager/ReactStylesDiffMap;
    .param p3, "stateWrapper"    # Lcom/facebook/react/uimanager/StateWrapper;

    .line 141
    new-instance v0, Lcom/facebook/react/internal/SystraceSection;

    const-string v1, "ReactTextViewManager.updateState"

    invoke-direct {v0, v1}, Lcom/facebook/react/internal/SystraceSection;-><init>(Ljava/lang/String;)V

    .line 142
    .local v0, "s":Lcom/facebook/react/internal/SystraceSection;
    :try_start_0
    invoke-interface {p3}, Lcom/facebook/react/uimanager/StateWrapper;->getStateDataMapBuffer()Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;

    move-result-object v1

    .line 143
    .local v1, "stateMapBuffer":Lcom/facebook/react/common/mapbuffer/MapBuffer;
    if-eqz v1, :cond_0

    .line 144
    invoke-direct {p0, p1, p2, v1}, Lcom/facebook/react/views/text/ReactTextViewManager;->getReactTextUpdate(Lcom/facebook/react/views/text/ReactTextView;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/common/mapbuffer/MapBuffer;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    invoke-virtual {v0}, Lcom/facebook/react/internal/SystraceSection;->close()V

    .line 144
    return-object v2

    .line 146
    :cond_0
    nop

    .line 148
    invoke-virtual {v0}, Lcom/facebook/react/internal/SystraceSection;->close()V

    .line 146
    const/4 v2, 0x0

    return-object v2

    .line 141
    .end local v1    # "stateMapBuffer":Lcom/facebook/react/common/mapbuffer/MapBuffer;
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
