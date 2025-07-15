.class Lcom/facebook/react/views/scroll/ReactScrollViewAccessibilityDelegate;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "ReactScrollViewAccessibilityDelegate.java"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 25
    const-class v0, Lcom/facebook/react/views/scroll/ReactScrollViewAccessibilityDelegate;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollViewAccessibilityDelegate;->TAG:Ljava/lang/String;

    return-void
.end method

.method private onInitializeAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 59
    sget v0, Lcom/facebook/react/R$id;->accessibility_collection:I

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReadableMap;

    .line 62
    .local v0, "accessibilityCollection":Lcom/facebook/react/bridge/ReadableMap;
    if-eqz v0, :cond_9

    .line 63
    const-string v1, "itemCount"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 65
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_8

    .line 66
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    .line 67
    .local v1, "viewGroup":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 68
    .local v1, "contentView":Landroid/view/View;
    nop

    .line 71
    const/4 v3, 0x0

    .line 72
    .local v3, "firstVisibleIndex":Ljava/lang/Integer;
    const/4 v4, 0x0

    .line 74
    .local v4, "lastVisibleIndex":Ljava/lang/Integer;
    instance-of v5, v1, Landroid/view/ViewGroup;

    if-nez v5, :cond_0

    .line 75
    return-void

    .line 78
    :cond_0
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_0
    move-object v6, v1

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_9

    .line 79
    move-object v6, v1

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 81
    .local v6, "nextChild":Landroid/view/View;
    instance-of v7, p1, Lcom/facebook/react/views/scroll/ReactScrollView;

    if-eqz v7, :cond_1

    .line 82
    move-object v7, p1

    check-cast v7, Lcom/facebook/react/views/scroll/ReactScrollView;

    .line 83
    .local v7, "scrollView":Lcom/facebook/react/views/scroll/ReactScrollView;
    invoke-virtual {v7, v6}, Lcom/facebook/react/views/scroll/ReactScrollView;->isPartiallyScrolledInView(Landroid/view/View;)Z

    move-result v7

    .line 84
    .local v7, "isVisible":Z
    goto :goto_1

    .end local v7    # "isVisible":Z
    :cond_1
    instance-of v7, p1, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    if-eqz v7, :cond_7

    .line 85
    move-object v7, p1

    check-cast v7, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    .line 86
    .local v7, "scrollView":Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    invoke-virtual {v7, v6}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->isPartiallyScrolledInView(Landroid/view/View;)Z

    move-result v7

    .line 87
    .local v7, "isVisible":Z
    nop

    .line 90
    :goto_1
    sget v8, Lcom/facebook/react/R$id;->accessibility_collection_item:I

    .line 91
    invoke-virtual {v6, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/react/bridge/ReadableMap;

    .line 93
    .local v8, "accessibilityCollectionItem":Lcom/facebook/react/bridge/ReadableMap;
    instance-of v9, v6, Landroid/view/ViewGroup;

    if-nez v9, :cond_2

    .line 94
    return-void

    .line 97
    :cond_2
    move-object v9, v6

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    .line 103
    .local v9, "childCount":I
    if-lez v9, :cond_3

    if-nez v8, :cond_3

    .line 104
    move-object v10, v6

    check-cast v10, Landroid/view/ViewGroup;

    invoke-virtual {v10, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 105
    .local v10, "nestedNextChild":Landroid/view/View;
    if-eqz v10, :cond_3

    .line 106
    sget v11, Lcom/facebook/react/R$id;->accessibility_collection_item:I

    .line 107
    invoke-virtual {v10, v11}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/react/bridge/ReadableMap;

    .line 108
    .local v11, "nestedChildAccessibility":Lcom/facebook/react/bridge/ReadableMap;
    if-eqz v11, :cond_3

    .line 109
    move-object v8, v11

    .line 114
    .end local v10    # "nestedNextChild":Landroid/view/View;
    .end local v11    # "nestedChildAccessibility":Lcom/facebook/react/bridge/ReadableMap;
    :cond_3
    if-eqz v7, :cond_5

    if-eqz v8, :cond_5

    .line 115
    const-string v10, "itemIndex"

    if-nez v3, :cond_4

    .line 116
    invoke-interface {v8, v10}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 118
    :cond_4
    invoke-interface {v8, v10}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 121
    :cond_5
    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    .line 122
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p2, v10}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 123
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p2, v10}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 78
    .end local v6    # "nextChild":Landroid/view/View;
    .end local v7    # "isVisible":Z
    .end local v8    # "accessibilityCollectionItem":Lcom/facebook/react/bridge/ReadableMap;
    .end local v9    # "childCount":I
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 88
    .restart local v6    # "nextChild":Landroid/view/View;
    :cond_7
    return-void

    .line 69
    .end local v1    # "contentView":Landroid/view/View;
    .end local v3    # "firstVisibleIndex":Ljava/lang/Integer;
    .end local v4    # "lastVisibleIndex":Ljava/lang/Integer;
    .end local v5    # "index":I
    .end local v6    # "nextChild":Landroid/view/View;
    :cond_8
    return-void

    .line 127
    :cond_9
    return-void
.end method

.method private onInitializeAccessibilityNodeInfoInternal(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 132
    invoke-static {p1}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->fromViewTag(Landroid/view/View;)Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    move-result-object v0

    .line 134
    .local v0, "accessibilityRole":Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->setRole(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;Landroid/content/Context;)V

    .line 138
    :cond_0
    sget v1, Lcom/facebook/react/R$id;->accessibility_collection:I

    .line 139
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/ReadableMap;

    .line 141
    .local v1, "accessibilityCollection":Lcom/facebook/react/bridge/ReadableMap;
    if-eqz v1, :cond_1

    .line 142
    const-string/jumbo v2, "rowCount"

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 143
    .local v2, "rowCount":I
    const-string v3, "columnCount"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 144
    .local v3, "columnCount":I
    const-string v4, "hierarchical"

    invoke-interface {v1, v4}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 146
    .local v4, "hierarchical":Z
    nop

    .line 147
    invoke-static {v2, v3, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object v5

    .line 149
    .local v5, "collectionInfoCompat":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;
    invoke-virtual {p2, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    .line 152
    .end local v2    # "rowCount":I
    .end local v3    # "columnCount":I
    .end local v4    # "hierarchical":Z
    .end local v5    # "collectionInfoCompat":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;
    :cond_1
    instance-of v2, p1, Lcom/facebook/react/views/scroll/ReactScrollView;

    if-eqz v2, :cond_2

    .line 153
    move-object v2, p1

    check-cast v2, Lcom/facebook/react/views/scroll/ReactScrollView;

    .line 154
    .local v2, "scrollView":Lcom/facebook/react/views/scroll/ReactScrollView;
    invoke-virtual {v2}, Lcom/facebook/react/views/scroll/ReactScrollView;->getScrollEnabled()Z

    move-result v3

    invoke-virtual {p2, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .end local v2    # "scrollView":Lcom/facebook/react/views/scroll/ReactScrollView;
    goto :goto_0

    .line 155
    :cond_2
    instance-of v2, p1, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    if-eqz v2, :cond_3

    .line 156
    move-object v2, p1

    check-cast v2, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    .line 157
    .local v2, "scrollView":Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    invoke-virtual {v2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getScrollEnabled()Z

    move-result v3

    invoke-virtual {p2, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    goto :goto_1

    .line 155
    .end local v2    # "scrollView":Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    :cond_3
    :goto_0
    nop

    .line 159
    :goto_1
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 29
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 30
    instance-of v0, p1, Lcom/facebook/react/views/scroll/ReactScrollView;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollViewAccessibilityDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Lcom/facebook/react/bridge/AssertionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReactScrollViewAccessibilityDelegate should only be used with ReactScrollView or ReactHorizontalScrollView, not with class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/bridge/AssertionException;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-static {v0, v1}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/views/scroll/ReactScrollViewAccessibilityDelegate;->onInitializeAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 40
    :goto_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 4
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 44
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 45
    instance-of v0, p1, Lcom/facebook/react/views/scroll/ReactScrollView;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollViewAccessibilityDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Lcom/facebook/react/bridge/AssertionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReactScrollViewAccessibilityDelegate should only be used with ReactScrollView or ReactHorizontalScrollView, not with class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/bridge/AssertionException;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-static {v0, v1}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/views/scroll/ReactScrollViewAccessibilityDelegate;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 55
    :goto_1
    return-void
.end method
