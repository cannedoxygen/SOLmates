.class public Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "ReactAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks;,
        Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;,
        Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$Role;
    }
.end annotation


# static fields
.field private static final SEND_EVENT:I = 0x1

.field private static final STATE_CHECKED:Ljava/lang/String; = "checked"

.field private static final STATE_DISABLED:Ljava/lang/String; = "disabled"

.field private static final STATE_SELECTED:Ljava/lang/String; = "selected"

.field private static final TAG:Ljava/lang/String; = "ReactAccessibilityDelegate"

.field private static final TIMEOUT_SEND_ACCESSIBILITY_EVENT:I = 0xc8

.field public static final TOP_ACCESSIBILITY_ACTION_EVENT:Ljava/lang/String; = "topAccessibilityAction"

.field private static final delimiter:Ljava/lang/String; = ", "

.field private static final delimiterLength:I

.field public static final sActionIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sCounter:I


# instance fields
.field private final mAccessibilityActionsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAccessibilityLabelledBy:Landroid/view/View;

.field private final mAccessibilityLinks:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks;

.field private mHandler:Landroid/os/Handler;

.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 64
    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->sCounter:I

    .line 68
    const-string v0, ", "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->delimiterLength:I

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->sActionIdMap:Ljava/util/HashMap;

    .line 73
    sget-object v0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->sActionIdMap:Ljava/util/HashMap;

    sget-object v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "activate"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->sActionIdMap:Ljava/util/HashMap;

    sget-object v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_LONG_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "longpress"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->sActionIdMap:Ljava/util/HashMap;

    sget-object v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_FORWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "increment"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->sActionIdMap:Ljava/util/HashMap;

    sget-object v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_BACKWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "decrement"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->sActionIdMap:Ljava/util/HashMap;

    sget-object v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_EXPAND:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "expand"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->sActionIdMap:Ljava/util/HashMap;

    sget-object v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_COLLAPSE:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "collapse"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/view/View;ZI)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "originalFocus"    # Z
    .param p3, "originalImportantForAccessibility"    # I

    .line 390
    invoke-direct {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 391
    iput-object p1, p0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->mView:Landroid/view/View;

    .line 392
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->mAccessibilityActionsMap:Ljava/util/HashMap;

    .line 393
    new-instance v0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$1;

    invoke-direct {v0, p0}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$1;-><init>(Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;)V

    iput-object v0, p0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->mHandler:Landroid/os/Handler;

    .line 406
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->mView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 407
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->mView:Landroid/view/View;

    invoke-static {v0, p3}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 408
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->mView:Landroid/view/View;

    sget v1, Lcom/facebook/react/R$id;->accessibility_links:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks;

    iput-object v0, p0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->mAccessibilityLinks:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks;

    .line 409
    return-void
.end method

.method public static createNodeInfoFromView(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 1138
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1139
    return-object v0

    .line 1142
    :cond_0
    invoke-static {}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    .line 1147
    .local v1, "nodeInfo":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :try_start_0
    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1153
    nop

    .line 1155
    return-object v1

    .line 1148
    :catch_0
    move-exception v2

    .line 1149
    .local v2, "e":Ljava/lang/NullPointerException;
    if-eqz v1, :cond_1

    .line 1150
    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 1152
    :cond_1
    return-object v0
.end method

.method private getBoundsInParent(Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks$AccessibleLink;)Landroid/graphics/Rect;
    .locals 24
    .param p1, "accessibleLink"    # Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks$AccessibleLink;

    .line 806
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->mView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 807
    new-instance v2, Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, v0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-direct {v2, v3, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2

    .line 810
    :cond_0
    iget-object v2, v0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->mView:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    .line 811
    .local v2, "textView":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 812
    .local v4, "textViewLayout":Landroid/text/Layout;
    if-nez v4, :cond_1

    .line 813
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v7

    invoke-direct {v5, v3, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v5

    .line 816
    :cond_1
    iget v5, v1, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks$AccessibleLink;->start:I

    int-to-double v5, v5

    .line 817
    .local v5, "startOffset":D
    iget v7, v1, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks$AccessibleLink;->end:I

    int-to-double v7, v7

    .line 821
    .local v7, "endOffset":D
    double-to-int v9, v5

    invoke-virtual {v4, v9}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    .line 822
    .local v9, "startOffsetLineNumber":I
    invoke-virtual {v4, v9}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v10

    .line 823
    .local v10, "lineEndOffset":I
    int-to-double v11, v10

    cmpl-double v11, v5, v11

    if-lez v11, :cond_2

    .line 824
    const/4 v3, 0x0

    return-object v3

    .line 827
    :cond_2
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 829
    .local v11, "rootRect":Landroid/graphics/Rect;
    double-to-int v12, v5

    invoke-virtual {v4, v12}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v12

    float-to-double v12, v12

    .line 831
    .local v12, "startXCoordinates":D
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 832
    .local v14, "paint":Landroid/graphics/Paint;
    iget v15, v1, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks$AccessibleLink;->start:I

    iget v3, v1, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks$AccessibleLink;->end:I

    move-wide/from16 v17, v5

    .end local v5    # "startOffset":D
    .local v17, "startOffset":D
    const-class v5, Landroid/text/style/AbsoluteSizeSpan;

    .line 833
    invoke-virtual {v0, v15, v3, v5}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->getFirstSpan(IILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/style/AbsoluteSizeSpan;

    .line 834
    .local v3, "sizeSpan":Landroid/text/style/AbsoluteSizeSpan;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result v5

    int-to-float v5, v5

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    .line 835
    .local v5, "textSize":F
    :goto_0
    invoke-virtual {v14, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 836
    iget-object v6, v1, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks$AccessibleLink;->description:Ljava/lang/String;

    invoke-virtual {v14, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-double v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 838
    .local v0, "textWidth":I
    double-to-int v1, v7

    invoke-virtual {v4, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 839
    .local v1, "endOffsetLineNumber":I
    if-eq v9, v1, :cond_4

    const/4 v6, 0x1

    move/from16 v16, v6

    goto :goto_1

    :cond_4
    const/16 v16, 0x0

    :goto_1
    move/from16 v6, v16

    .line 840
    .local v6, "isMultiline":Z
    invoke-virtual {v4, v9, v11}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 842
    invoke-virtual {v2}, Landroid/widget/TextView;->getScrollY()I

    move-result v15

    invoke-virtual {v2}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v16

    add-int v15, v15, v16

    .line 843
    .local v15, "verticalOffset":I
    move/from16 v16, v1

    .end local v1    # "endOffsetLineNumber":I
    .local v16, "endOffsetLineNumber":I
    iget v1, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v15

    iput v1, v11, Landroid/graphics/Rect;->top:I

    .line 844
    iget v1, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v15

    iput v1, v11, Landroid/graphics/Rect;->bottom:I

    .line 845
    iget v1, v11, Landroid/graphics/Rect;->left:I

    move-object/from16 v20, v3

    move-object/from16 v19, v4

    .end local v3    # "sizeSpan":Landroid/text/style/AbsoluteSizeSpan;
    .end local v4    # "textViewLayout":Landroid/text/Layout;
    .local v19, "textViewLayout":Landroid/text/Layout;
    .local v20, "sizeSpan":Landroid/text/style/AbsoluteSizeSpan;
    int-to-double v3, v1

    invoke-virtual {v2}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v1

    move-wide/from16 v21, v7

    .end local v7    # "endOffset":D
    .local v21, "endOffset":D
    int-to-double v7, v1

    add-double/2addr v7, v12

    invoke-virtual {v2}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    move-object/from16 v23, v2

    .end local v2    # "textView":Landroid/widget/TextView;
    .local v23, "textView":Landroid/widget/TextView;
    int-to-double v1, v1

    sub-double/2addr v7, v1

    add-double/2addr v3, v7

    double-to-int v1, v3

    iput v1, v11, Landroid/graphics/Rect;->left:I

    .line 852
    if-eqz v6, :cond_5

    .line 853
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v11, Landroid/graphics/Rect;->left:I

    iget v3, v11, Landroid/graphics/Rect;->top:I

    iget v4, v11, Landroid/graphics/Rect;->right:I

    iget v7, v11, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v2, v3, v4, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1

    .line 856
    :cond_5
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v11, Landroid/graphics/Rect;->left:I

    iget v3, v11, Landroid/graphics/Rect;->top:I

    iget v4, v11, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v0

    iget v7, v11, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v2, v3, v4, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public static getTalkbackDescription(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)Ljava/lang/CharSequence;
    .locals 16
    .param p0, "view"    # Landroid/view/View;
    .param p1, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 1178
    move-object/from16 v1, p0

    if-nez p1, :cond_0

    invoke-static/range {p0 .. p0}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->createNodeInfoFromView(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static/range {p1 .. p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    :goto_0
    move-object v2, v0

    .line 1180
    .local v2, "node":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    const/4 v0, 0x0

    if-nez v2, :cond_1

    .line 1181
    return-object v0

    .line 1184
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    .line 1185
    .local v3, "contentDescription":Ljava/lang/CharSequence;
    invoke-virtual {v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 1187
    .local v4, "nodeText":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 1188
    .local v5, "hasNodeText":Z
    :goto_1
    instance-of v6, v1, Landroid/widget/EditText;

    .line 1190
    .local v6, "isEditText":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1193
    .local v7, "talkbackSegments":Ljava/lang/StringBuilder;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    if-eqz v6, :cond_3

    if-nez v5, :cond_4

    .line 1195
    :cond_3
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1196
    nop

    .line 1235
    invoke-virtual {v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 1196
    return-object v7

    .line 1200
    :cond_4
    if-eqz v5, :cond_5

    .line 1204
    :try_start_1
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1205
    nop

    .line 1235
    invoke-virtual {v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 1205
    return-object v7

    .line 1210
    :cond_5
    :try_start_2
    instance-of v8, v1, Landroid/view/ViewGroup;

    if-eqz v8, :cond_8

    .line 1211
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1212
    .local v8, "concatChildDescription":Ljava/lang/StringBuilder;
    move-object v9, v1

    check-cast v9, Landroid/view/ViewGroup;

    .line 1214
    .local v9, "viewGroup":Landroid/view/ViewGroup;
    const/4 v10, 0x0

    .local v10, "i":I
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    .local v11, "count":I
    :goto_2
    if-ge v10, v11, :cond_7

    .line 1215
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1217
    .local v12, "child":Landroid/view/View;
    invoke-static {}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v13

    .line 1218
    .local v13, "childNodeInfo":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-static {v12, v13}, Landroidx/core/view/ViewCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 1220
    invoke-static {v13, v12}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->isSpeakingNode(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 1221
    invoke-static {v13, v12}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->isAccessibilityFocusable(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/View;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 1222
    invoke-static {v12, v0}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->getTalkbackDescription(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)Ljava/lang/CharSequence;

    move-result-object v14

    .line 1223
    .local v14, "childNodeDescription":Ljava/lang/CharSequence;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 1224
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v0, ", "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    .end local v14    # "childNodeDescription":Ljava/lang/CharSequence;
    :cond_6
    invoke-virtual {v13}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 1214
    .end local v12    # "child":Landroid/view/View;
    .end local v13    # "childNodeInfo":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    add-int/lit8 v10, v10, 0x1

    const/4 v0, 0x0

    goto :goto_2

    .line 1230
    .end local v10    # "i":I
    .end local v11    # "count":I
    :cond_7
    invoke-static {v8}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->removeFinalDelimiter(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1235
    invoke-virtual {v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 1230
    return-object v0

    .line 1233
    .end local v8    # "concatChildDescription":Ljava/lang/StringBuilder;
    .end local v9    # "viewGroup":Landroid/view/ViewGroup;
    :cond_8
    nop

    .line 1235
    invoke-virtual {v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 1233
    const/4 v0, 0x0

    return-object v0

    .line 1235
    .end local v3    # "contentDescription":Ljava/lang/CharSequence;
    .end local v4    # "nodeText":Ljava/lang/CharSequence;
    .end local v5    # "hasNodeText":Z
    .end local v6    # "isEditText":Z
    .end local v7    # "talkbackSegments":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 1236
    throw v0
.end method

.method public static hasNonActionableSpeakingDescendants(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/View;)Z
    .locals 7
    .param p0, "node"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .param p1, "view"    # Landroid/view/View;

    .line 971
    const/4 v0, 0x0

    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    instance-of v1, p1, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    goto :goto_3

    .line 975
    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    .line 976
    .local v1, "viewGroup":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .local v3, "count":I
    :goto_0
    if-ge v2, v3, :cond_8

    .line 977
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 979
    .local v4, "childView":Landroid/view/View;
    if-nez v4, :cond_1

    .line 980
    goto :goto_2

    .line 983
    :cond_1
    invoke-static {}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v5

    .line 985
    .local v5, "childNode":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :try_start_0
    invoke-static {v4, v5}, Landroidx/core/view/ViewCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 987
    invoke-virtual {v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isVisibleToUser()Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_2

    .line 999
    if-eqz v5, :cond_6

    .line 1000
    :goto_1
    invoke-virtual {v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    goto :goto_2

    .line 991
    :cond_2
    :try_start_1
    invoke-static {v5, v4}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->isAccessibilityFocusable(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 999
    if-eqz v5, :cond_6

    .line 1000
    goto :goto_1

    .line 995
    :cond_3
    invoke-static {v5, v4}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->isSpeakingNode(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/View;)Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_5

    .line 996
    nop

    .line 999
    if-eqz v5, :cond_4

    .line 1000
    invoke-virtual {v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 996
    :cond_4
    const/4 v0, 0x1

    return v0

    .line 999
    :cond_5
    if-eqz v5, :cond_6

    .line 1000
    goto :goto_1

    .line 976
    .end local v4    # "childView":Landroid/view/View;
    .end local v5    # "childNode":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 999
    .restart local v4    # "childView":Landroid/view/View;
    .restart local v5    # "childNode":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :catchall_0
    move-exception v0

    if-eqz v5, :cond_7

    .line 1000
    invoke-virtual {v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 1002
    :cond_7
    throw v0

    .line 1005
    .end local v2    # "i":I
    .end local v3    # "count":I
    .end local v4    # "childView":Landroid/view/View;
    .end local v5    # "childNode":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_8
    return v0

    .line 972
    .end local v1    # "viewGroup":Landroid/view/ViewGroup;
    :cond_9
    :goto_3
    return v0
.end method

.method private static hasStateDescription(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)Z
    .locals 1
    .param p0, "node"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 1040
    if-eqz p0, :cond_1

    .line 1041
    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getStateDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1042
    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isCheckable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1043
    invoke-static {p0}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->hasValidRangeInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1040
    :goto_0
    return v0
.end method

.method public static hasText(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)Z
    .locals 1
    .param p0, "node"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 1073
    if-eqz p0, :cond_1

    .line 1074
    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getCollectionInfo()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1075
    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1076
    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1077
    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getHintText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1073
    :goto_0
    return v0
.end method

.method public static hasValidRangeInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)Z
    .locals 7
    .param p0, "node"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 1015
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1016
    return v0

    .line 1019
    :cond_0
    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getRangeInfo()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;

    move-result-object v1

    .line 1020
    .local v1, "rangeInfo":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;
    if-nez v1, :cond_1

    .line 1021
    return v0

    .line 1024
    :cond_1
    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->getMax()F

    move-result v2

    .line 1025
    .local v2, "maxProgress":F
    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->getMin()F

    move-result v3

    .line 1026
    .local v3, "minProgress":F
    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->getCurrent()F

    move-result v4

    .line 1027
    .local v4, "currentProgress":F
    sub-float v5, v2, v3

    .line 1028
    .local v5, "diffProgress":F
    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-lez v6, :cond_2

    cmpl-float v6, v4, v3

    if-ltz v6, :cond_2

    cmpg-float v6, v4, v2

    if-gtz v6, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static isAccessibilityFocusable(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/View;)Z
    .locals 2
    .param p0, "node"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .param p1, "view"    # Landroid/view/View;

    .line 1094
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    .line 1099
    :cond_0
    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isVisibleToUser()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1100
    return v0

    .line 1104
    :cond_1
    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isScreenReaderFocusable()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->isActionableForAccessibility(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0

    .line 1095
    :cond_4
    :goto_0
    return v0
.end method

.method public static isActionableForAccessibility(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)Z
    .locals 4
    .param p0, "node"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 1116
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1117
    return v0

    .line 1120
    :cond_0
    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isClickable()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isLongClickable()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1124
    :cond_1
    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getActionList()Ljava/util/List;

    move-result-object v1

    .line 1125
    .local v1, "actionList":Ljava/util/List;
    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1126
    const/16 v3, 0x20

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1127
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v0, v2

    .line 1125
    :cond_3
    return v0

    .line 1121
    .end local v1    # "actionList":Ljava/util/List;
    :cond_4
    :goto_0
    return v2
.end method

.method public static isSpeakingNode(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/View;)Z
    .locals 3
    .param p0, "node"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .param p1, "view"    # Landroid/view/View;

    .line 1056
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_1

    .line 1060
    :cond_0
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v1

    .line 1061
    .local v1, "important":I
    const/4 v2, 0x4

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1062
    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getChildCount()I

    move-result v2

    if-gtz v2, :cond_1

    goto :goto_0

    .line 1066
    :cond_1
    invoke-static {p0}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->hasText(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1067
    invoke-static {p0}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->hasStateDescription(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1068
    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isCheckable()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1069
    invoke-static {p0, p1}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->hasNonActionableSpeakingDescendants(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 1066
    :cond_3
    return v0

    .line 1063
    :cond_4
    :goto_0
    return v0

    .line 1057
    .end local v1    # "important":I
    :cond_5
    :goto_1
    return v0
.end method

.method private static removeFinalDelimiter(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 2
    .param p0, "builder"    # Ljava/lang/StringBuilder;

    .line 1240
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 1241
    .local v0, "end":I
    if-lez v0, :cond_0

    .line 1242
    sget v1, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->delimiterLength:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1244
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static resetDelegate(Landroid/view/View;ZI)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "originalFocus"    # Z
    .param p2, "originalImportantForAccessibility"    # I

    .line 713
    new-instance v0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;-><init>(Landroid/view/View;ZI)V

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 716
    return-void
.end method

.method private scheduleAccessibilityEventSender(Landroid/view/View;)V
    .locals 4
    .param p1, "host"    # Landroid/view/View;

    .line 92
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 96
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 97
    return-void
.end method

.method public static setDelegate(Landroid/view/View;ZI)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "originalFocus"    # Z
    .param p2, "originalImportantForAccessibility"    # I

    .line 696
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->hasAccessibilityDelegate(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/facebook/react/R$id;->accessibility_role:I

    .line 697
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget v0, Lcom/facebook/react/R$id;->accessibility_state:I

    .line 698
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget v0, Lcom/facebook/react/R$id;->accessibility_actions:I

    .line 699
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget v0, Lcom/facebook/react/R$id;->react_test_id:I

    .line 700
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget v0, Lcom/facebook/react/R$id;->accessibility_collection_item:I

    .line 701
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget v0, Lcom/facebook/react/R$id;->accessibility_links:I

    .line 702
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget v0, Lcom/facebook/react/R$id;->role:I

    .line 703
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 704
    :cond_0
    new-instance v0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;-><init>(Landroid/view/View;ZI)V

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 708
    :cond_1
    return-void
.end method

.method public static setRole(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;Landroid/content/Context;)V
    .locals 2
    .param p0, "nodeInfo"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .param p1, "role"    # Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;
    .param p2, "context"    # Landroid/content/Context;

    .line 642
    if-nez p1, :cond_0

    .line 643
    sget-object p1, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->NONE:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    .line 645
    :cond_0
    invoke-static {p1}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->getValue(Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 646
    sget-object v0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->LINK:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 647
    sget v0, Lcom/facebook/react/R$string;->link_description:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 648
    :cond_1
    sget-object v0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->IMAGE:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 649
    sget v0, Lcom/facebook/react/R$string;->image_description:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 650
    :cond_2
    sget-object v0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->IMAGEBUTTON:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 651
    sget v0, Lcom/facebook/react/R$string;->imagebutton_description:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V

    .line 652
    invoke-virtual {p0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    goto/16 :goto_0

    .line 653
    :cond_3
    sget-object v0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->BUTTON:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 654
    invoke-virtual {p0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    goto/16 :goto_0

    .line 655
    :cond_4
    sget-object v0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->TOGGLEBUTTON:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 656
    invoke-virtual {p0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 657
    invoke-virtual {p0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCheckable(Z)V

    goto/16 :goto_0

    .line 658
    :cond_5
    sget-object v0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->SUMMARY:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 659
    sget v0, Lcom/facebook/react/R$string;->summary_description:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 660
    :cond_6
    sget-object v0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->HEADER:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 661
    invoke-virtual {p0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setHeading(Z)V

    goto/16 :goto_0

    .line 662
    :cond_7
    sget-object v0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->ALERT:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 663
    sget v0, Lcom/facebook/react/R$string;->alert_description:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 664
    :cond_8
    sget-object v0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->COMBOBOX:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 665
    sget v0, Lcom/facebook/react/R$string;->combobox_description:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 666
    :cond_9
    sget-object v0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->MENU:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 667
    sget v0, Lcom/facebook/react/R$string;->menu_description:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 668
    :cond_a
    sget-object v0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->MENUBAR:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 669
    sget v0, Lcom/facebook/react/R$string;->menubar_description:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 670
    :cond_b
    sget-object v0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->MENUITEM:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 671
    sget v0, Lcom/facebook/react/R$string;->menuitem_description:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 672
    :cond_c
    sget-object v0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->PROGRESSBAR:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 673
    sget v0, Lcom/facebook/react/R$string;->progressbar_description:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 674
    :cond_d
    sget-object v0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->RADIOGROUP:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 675
    sget v0, Lcom/facebook/react/R$string;->radiogroup_description:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 676
    :cond_e
    sget-object v0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->SCROLLBAR:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 677
    sget v0, Lcom/facebook/react/R$string;->scrollbar_description:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 678
    :cond_f
    sget-object v0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->SPINBUTTON:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 679
    sget v0, Lcom/facebook/react/R$string;->spinbutton_description:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 680
    :cond_10
    sget-object v0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->TAB:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 681
    sget v0, Lcom/facebook/react/R$string;->rn_tab_description:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 682
    :cond_11
    sget-object v0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->TABLIST:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 683
    sget v0, Lcom/facebook/react/R$string;->tablist_description:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 684
    :cond_12
    sget-object v0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->TIMER:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 685
    sget v0, Lcom/facebook/react/R$string;->timer_description:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 686
    :cond_13
    sget-object v0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->TOOLBAR:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 687
    sget v0, Lcom/facebook/react/R$string;->toolbar_description:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V

    .line 689
    :cond_14
    :goto_0
    return-void
.end method

.method private static setState(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Lcom/facebook/react/bridge/ReadableMap;Landroid/content/Context;)V
    .locals 6
    .param p0, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .param p1, "accessibilityState"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "context"    # Landroid/content/Context;

    .line 620
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v0

    .line 621
    .local v0, "i":Lcom/facebook/react/bridge/ReadableMapKeySetIterator;
    :goto_0
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 622
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v1

    .line 623
    .local v1, "state":Ljava/lang/String;
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDynamic(Ljava/lang/String;)Lcom/facebook/react/bridge/Dynamic;

    move-result-object v2

    .line 624
    .local v2, "value":Lcom/facebook/react/bridge/Dynamic;
    const-string/jumbo v3, "selected"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v3

    sget-object v4, Lcom/facebook/react/bridge/ReadableType;->Boolean:Lcom/facebook/react/bridge/ReadableType;

    if-ne v3, v4, :cond_0

    .line 625
    invoke-interface {v2}, Lcom/facebook/react/bridge/Dynamic;->asBoolean()Z

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setSelected(Z)V

    goto :goto_1

    .line 626
    :cond_0
    const-string v3, "disabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v3

    sget-object v5, Lcom/facebook/react/bridge/ReadableType;->Boolean:Lcom/facebook/react/bridge/ReadableType;

    if-ne v3, v5, :cond_1

    .line 627
    invoke-interface {v2}, Lcom/facebook/react/bridge/Dynamic;->asBoolean()Z

    move-result v3

    xor-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V

    goto :goto_1

    .line 628
    :cond_1
    const-string v3, "checked"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v3

    sget-object v5, Lcom/facebook/react/bridge/ReadableType;->Boolean:Lcom/facebook/react/bridge/ReadableType;

    if-ne v3, v5, :cond_2

    .line 629
    invoke-interface {v2}, Lcom/facebook/react/bridge/Dynamic;->asBoolean()Z

    move-result v3

    .line 630
    .local v3, "boolValue":Z
    invoke-virtual {p0, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCheckable(Z)V

    .line 631
    invoke-virtual {p0, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setChecked(Z)V

    .line 633
    .end local v1    # "state":Ljava/lang/String;
    .end local v2    # "value":Lcom/facebook/react/bridge/Dynamic;
    .end local v3    # "boolValue":Z
    :cond_2
    :goto_1
    goto :goto_0

    .line 634
    :cond_3
    return-void
.end method


# virtual methods
.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
    .locals 1
    .param p1, "host"    # Landroid/view/View;

    .line 949
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->mAccessibilityLinks:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks;

    if-eqz v0, :cond_0

    .line 950
    invoke-super {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->getAccessibilityNodeProvider(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    move-result-object v0

    return-object v0

    .line 953
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFirstSpan(IILjava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 866
    .local p3, "classType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->mView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-nez v0, :cond_0

    goto :goto_0

    .line 870
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->mView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    .line 871
    .local v0, "spanned":Landroid/text/Spanned;
    invoke-interface {v0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 872
    .local v2, "spans":[Ljava/lang/Object;, "[TT;"
    array-length v3, v2

    if-lez v3, :cond_1

    const/4 v1, 0x0

    aget-object v1, v2, v1

    :cond_1
    return-object v1

    .line 867
    .end local v0    # "spanned":Landroid/text/Spanned;
    .end local v2    # "spans":[Ljava/lang/Object;, "[TT;"
    :cond_2
    :goto_0
    return-object v1
.end method

.method protected getVirtualViewAt(FF)I
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 720
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->mAccessibilityLinks:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks;

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->mAccessibilityLinks:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks;

    .line 721
    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks;->size()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->mView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 727
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    instance-of v2, v2, Landroid/text/Spanned;

    if-nez v2, :cond_1

    .line 728
    return v1

    .line 731
    :cond_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 732
    .local v2, "layout":Landroid/text/Layout;
    if-nez v2, :cond_2

    .line 733
    return v1

    .line 736
    :cond_2
    invoke-virtual {v0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr p1, v3

    .line 737
    invoke-virtual {v0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr p2, v3

    .line 738
    invoke-virtual {v0}, Landroid/widget/TextView;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr p1, v3

    .line 739
    invoke-virtual {v0}, Landroid/widget/TextView;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr p2, v3

    .line 741
    float-to-int v3, p2

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v3

    .line 742
    .local v3, "line":I
    invoke-virtual {v2, v3, p1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v4

    .line 744
    .local v4, "charOffset":I
    const-class v5, Landroid/text/style/ClickableSpan;

    invoke-virtual {p0, v4, v4, v5}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->getFirstSpan(IILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/text/style/ClickableSpan;

    .line 745
    .local v5, "clickableSpan":Landroid/text/style/ClickableSpan;
    if-nez v5, :cond_3

    .line 746
    return v1

    .line 749
    :cond_3
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spanned;

    .line 750
    .local v6, "spanned":Landroid/text/Spanned;
    invoke-interface {v6, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 751
    .local v7, "start":I
    invoke-interface {v6, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .line 753
    .local v8, "end":I
    iget-object v9, p0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->mAccessibilityLinks:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks;

    invoke-virtual {v9, v7, v8}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks;->getLinkBySpanPos(II)Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks$AccessibleLink;

    move-result-object v9

    .line 754
    .local v9, "link":Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks$AccessibleLink;
    if-eqz v9, :cond_4

    iget v1, v9, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks$AccessibleLink;->id:I

    :cond_4
    return v1

    .line 723
    .end local v0    # "textView":Landroid/widget/TextView;
    .end local v2    # "layout":Landroid/text/Layout;
    .end local v3    # "line":I
    .end local v4    # "charOffset":I
    .end local v5    # "clickableSpan":Landroid/text/style/ClickableSpan;
    .end local v6    # "spanned":Landroid/text/Spanned;
    .end local v7    # "start":I
    .end local v8    # "end":I
    .end local v9    # "link":Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks$AccessibleLink;
    :cond_5
    :goto_0
    return v1
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 759
    .local p1, "virtualViewIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->mAccessibilityLinks:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks;

    if-nez v0, :cond_0

    .line 760
    return-void

    .line 763
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->mAccessibilityLinks:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks;

    invoke-virtual {v1}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 764
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 766
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 8
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 534
    invoke-super {p0, p1, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 537
    sget v0, Lcom/facebook/react/R$id;->accessibility_value:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReadableMap;

    .line 538
    .local v0, "accessibilityValue":Lcom/facebook/react/bridge/ReadableMap;
    if-eqz v0, :cond_0

    .line 539
    const-string v1, "min"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 540
    const-string/jumbo v2, "now"

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 541
    const-string v3, "max"

    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 542
    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDynamic(Ljava/lang/String;)Lcom/facebook/react/bridge/Dynamic;

    move-result-object v1

    .line 543
    .local v1, "minDynamic":Lcom/facebook/react/bridge/Dynamic;
    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getDynamic(Ljava/lang/String;)Lcom/facebook/react/bridge/Dynamic;

    move-result-object v2

    .line 544
    .local v2, "nowDynamic":Lcom/facebook/react/bridge/Dynamic;
    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/ReadableMap;->getDynamic(Ljava/lang/String;)Lcom/facebook/react/bridge/Dynamic;

    move-result-object v3

    .line 545
    .local v3, "maxDynamic":Lcom/facebook/react/bridge/Dynamic;
    if-eqz v1, :cond_0

    .line 546
    invoke-interface {v1}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v4

    sget-object v5, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    if-ne v4, v5, :cond_0

    if-eqz v2, :cond_0

    .line 548
    invoke-interface {v2}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v4

    sget-object v5, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    if-ne v4, v5, :cond_0

    if-eqz v3, :cond_0

    .line 550
    invoke-interface {v3}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v4

    sget-object v5, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    if-ne v4, v5, :cond_0

    .line 551
    invoke-interface {v1}, Lcom/facebook/react/bridge/Dynamic;->asInt()I

    move-result v4

    .line 552
    .local v4, "min":I
    invoke-interface {v2}, Lcom/facebook/react/bridge/Dynamic;->asInt()I

    move-result v5

    .line 553
    .local v5, "now":I
    invoke-interface {v3}, Lcom/facebook/react/bridge/Dynamic;->asInt()I

    move-result v6

    .line 554
    .local v6, "max":I
    if-le v6, v4, :cond_0

    if-lt v5, v4, :cond_0

    if-lt v6, v5, :cond_0

    .line 555
    sub-int v7, v6, v4

    invoke-virtual {p2, v7}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 556
    invoke-virtual {p2, v5}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 560
    .end local v1    # "minDynamic":Lcom/facebook/react/bridge/Dynamic;
    .end local v2    # "nowDynamic":Lcom/facebook/react/bridge/Dynamic;
    .end local v3    # "maxDynamic":Lcom/facebook/react/bridge/Dynamic;
    .end local v4    # "min":I
    .end local v5    # "now":I
    .end local v6    # "max":I
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 19
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 415
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-super/range {p0 .. p2}, Landroidx/customview/widget/ExploreByTouchHelper;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 416
    sget v3, Lcom/facebook/react/R$id;->accessibility_state_expanded:I

    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 417
    sget v3, Lcom/facebook/react/R$id;->accessibility_state_expanded:I

    .line 418
    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 419
    .local v3, "accessibilityStateExpanded":Z
    nop

    .line 420
    if-eqz v3, :cond_0

    .line 421
    const/high16 v4, 0x80000

    goto :goto_0

    .line 422
    :cond_0
    const/high16 v4, 0x40000

    .line 419
    :goto_0
    invoke-virtual {v2, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 424
    .end local v3    # "accessibilityStateExpanded":Z
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->fromViewTag(Landroid/view/View;)Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    move-result-object v3

    .line 425
    .local v3, "accessibilityRole":Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;
    sget v4, Lcom/facebook/react/R$id;->accessibility_hint:I

    invoke-virtual {v1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 426
    .local v4, "accessibilityHint":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 427
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v2, v3, v5}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->setRole(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;Landroid/content/Context;)V

    .line 430
    :cond_2
    if-eqz v4, :cond_3

    .line 431
    invoke-virtual {v2, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 434
    :cond_3
    sget v5, Lcom/facebook/react/R$id;->labelled_by:I

    invoke-virtual {v1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    .line 435
    .local v5, "accessibilityLabelledBy":Ljava/lang/Object;
    if-eqz v5, :cond_4

    .line 436
    nop

    .line 437
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/facebook/react/uimanager/util/ReactFindViewUtil;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v6

    iput-object v6, v0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->mAccessibilityLabelledBy:Landroid/view/View;

    .line 438
    iget-object v6, v0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->mAccessibilityLabelledBy:Landroid/view/View;

    if-eqz v6, :cond_4

    .line 439
    iget-object v6, v0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->mAccessibilityLabelledBy:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setLabeledBy(Landroid/view/View;)V

    .line 444
    :cond_4
    sget v6, Lcom/facebook/react/R$id;->accessibility_state:I

    invoke-virtual {v1, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/react/bridge/ReadableMap;

    .line 445
    .local v6, "accessibilityState":Lcom/facebook/react/bridge/ReadableMap;
    if-eqz v6, :cond_5

    .line 446
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v2, v6, v7}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->setState(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Lcom/facebook/react/bridge/ReadableMap;Landroid/content/Context;)V

    .line 448
    :cond_5
    sget v7, Lcom/facebook/react/R$id;->accessibility_actions:I

    .line 449
    invoke-virtual {v1, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/react/bridge/ReadableArray;

    .line 451
    .local v7, "accessibilityActions":Lcom/facebook/react/bridge/ReadableArray;
    sget v8, Lcom/facebook/react/R$id;->accessibility_collection_item:I

    .line 452
    invoke-virtual {v1, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/react/bridge/ReadableMap;

    .line 453
    .local v8, "accessibilityCollectionItem":Lcom/facebook/react/bridge/ReadableMap;
    if-eqz v8, :cond_6

    .line 454
    const-string/jumbo v9, "rowIndex"

    invoke-interface {v8, v9}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 455
    .local v9, "rowIndex":I
    const-string v10, "columnIndex"

    invoke-interface {v8, v10}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 456
    .local v10, "columnIndex":I
    const-string/jumbo v11, "rowSpan"

    invoke-interface {v8, v11}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 457
    .local v11, "rowSpan":I
    const-string v12, "columnSpan"

    invoke-interface {v8, v12}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 458
    .local v12, "columnSpan":I
    const-string v13, "heading"

    invoke-interface {v8, v13}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 460
    .local v13, "heading":Z
    nop

    .line 461
    invoke-static {v9, v11, v10, v12, v13}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v14

    .line 463
    .local v14, "collectionItemCompat":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;
    invoke-virtual {v2, v14}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 466
    .end local v9    # "rowIndex":I
    .end local v10    # "columnIndex":I
    .end local v11    # "rowSpan":I
    .end local v12    # "columnSpan":I
    .end local v13    # "heading":Z
    .end local v14    # "collectionItemCompat":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;
    :cond_6
    if-eqz v7, :cond_a

    .line 467
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    invoke-interface {v7}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v11

    if-ge v10, v11, :cond_a

    .line 468
    invoke-interface {v7, v10}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v11

    .line 469
    .local v11, "action":Lcom/facebook/react/bridge/ReadableMap;
    const-string v12, "name"

    invoke-interface {v11, v12}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 472
    sget v13, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->sCounter:I

    .line 473
    .local v13, "actionId":I
    const-string v14, "label"

    invoke-interface {v11, v14}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v11, v14}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    :cond_7
    const/4 v14, 0x0

    .line 474
    .local v14, "actionLabel":Ljava/lang/String;
    :goto_2
    sget-object v15, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->sActionIdMap:Ljava/util/HashMap;

    invoke-interface {v11, v12}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 475
    sget-object v9, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->sActionIdMap:Ljava/util/HashMap;

    invoke-interface {v11, v12}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v15, 0x1

    goto :goto_3

    .line 477
    :cond_8
    sget v9, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->sCounter:I

    const/4 v15, 0x1

    add-int/2addr v9, v15

    sput v9, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->sCounter:I

    .line 479
    :goto_3
    iget-object v9, v0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->mAccessibilityActionsMap:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v11, v12}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v15, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    new-instance v9, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {v9, v13, v14}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 482
    .local v9, "accessibilityAction":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;
    invoke-virtual {v2, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 467
    .end local v9    # "accessibilityAction":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;
    .end local v11    # "action":Lcom/facebook/react/bridge/ReadableMap;
    .end local v13    # "actionId":I
    .end local v14    # "actionLabel":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 470
    .restart local v11    # "action":Lcom/facebook/react/bridge/ReadableMap;
    :cond_9
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v12, "Unknown accessibility action."

    invoke-direct {v9, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 488
    .end local v10    # "i":I
    .end local v11    # "action":Lcom/facebook/react/bridge/ReadableMap;
    :cond_a
    sget v9, Lcom/facebook/react/R$id;->accessibility_value:I

    invoke-virtual {v1, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/react/bridge/ReadableMap;

    .line 489
    .local v9, "accessibilityValue":Lcom/facebook/react/bridge/ReadableMap;
    if-eqz v9, :cond_13

    .line 490
    const-string v11, "min"

    invoke-interface {v9, v11}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 491
    const-string/jumbo v12, "now"

    invoke-interface {v9, v12}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 492
    const-string v13, "max"

    invoke-interface {v9, v13}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 493
    invoke-interface {v9, v11}, Lcom/facebook/react/bridge/ReadableMap;->getDynamic(Ljava/lang/String;)Lcom/facebook/react/bridge/Dynamic;

    move-result-object v11

    .line 494
    .local v11, "minDynamic":Lcom/facebook/react/bridge/Dynamic;
    invoke-interface {v9, v12}, Lcom/facebook/react/bridge/ReadableMap;->getDynamic(Ljava/lang/String;)Lcom/facebook/react/bridge/Dynamic;

    move-result-object v12

    .line 495
    .local v12, "nowDynamic":Lcom/facebook/react/bridge/Dynamic;
    invoke-interface {v9, v13}, Lcom/facebook/react/bridge/ReadableMap;->getDynamic(Ljava/lang/String;)Lcom/facebook/react/bridge/Dynamic;

    move-result-object v13

    .line 496
    .local v13, "maxDynamic":Lcom/facebook/react/bridge/Dynamic;
    if-eqz v11, :cond_f

    .line 497
    invoke-interface {v11}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v14

    sget-object v15, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    if-ne v14, v15, :cond_e

    if-eqz v12, :cond_e

    .line 499
    invoke-interface {v12}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v14

    sget-object v15, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    if-ne v14, v15, :cond_d

    if-eqz v13, :cond_d

    .line 501
    invoke-interface {v13}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v14

    sget-object v15, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    if-ne v14, v15, :cond_c

    .line 502
    invoke-interface {v11}, Lcom/facebook/react/bridge/Dynamic;->asInt()I

    move-result v14

    .line 503
    .local v14, "min":I
    invoke-interface {v12}, Lcom/facebook/react/bridge/Dynamic;->asInt()I

    move-result v15

    .line 504
    .local v15, "now":I
    invoke-interface {v13}, Lcom/facebook/react/bridge/Dynamic;->asInt()I

    move-result v10

    .line 505
    .local v10, "max":I
    if-le v10, v14, :cond_b

    if-lt v15, v14, :cond_b

    if-lt v10, v15, :cond_b

    .line 506
    int-to-float v0, v14

    move-object/from16 v16, v4

    .end local v4    # "accessibilityHint":Ljava/lang/String;
    .local v16, "accessibilityHint":Ljava/lang/String;
    int-to-float v4, v10

    move-object/from16 v17, v8

    .end local v8    # "accessibilityCollectionItem":Lcom/facebook/react/bridge/ReadableMap;
    .local v17, "accessibilityCollectionItem":Lcom/facebook/react/bridge/ReadableMap;
    int-to-float v8, v15

    move-object/from16 v18, v9

    const/4 v9, 0x0

    .end local v9    # "accessibilityValue":Lcom/facebook/react/bridge/ReadableMap;
    .local v18, "accessibilityValue":Lcom/facebook/react/bridge/ReadableMap;
    invoke-static {v9, v0, v4, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->obtain(IFFF)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRangeInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;)V

    goto :goto_4

    .line 505
    .end local v16    # "accessibilityHint":Ljava/lang/String;
    .end local v17    # "accessibilityCollectionItem":Lcom/facebook/react/bridge/ReadableMap;
    .end local v18    # "accessibilityValue":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v4    # "accessibilityHint":Ljava/lang/String;
    .restart local v8    # "accessibilityCollectionItem":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v9    # "accessibilityValue":Lcom/facebook/react/bridge/ReadableMap;
    :cond_b
    move-object/from16 v16, v4

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    const/4 v9, 0x0

    .end local v4    # "accessibilityHint":Ljava/lang/String;
    .end local v8    # "accessibilityCollectionItem":Lcom/facebook/react/bridge/ReadableMap;
    .end local v9    # "accessibilityValue":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v16    # "accessibilityHint":Ljava/lang/String;
    .restart local v17    # "accessibilityCollectionItem":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v18    # "accessibilityValue":Lcom/facebook/react/bridge/ReadableMap;
    goto :goto_4

    .line 501
    .end local v10    # "max":I
    .end local v14    # "min":I
    .end local v15    # "now":I
    .end local v16    # "accessibilityHint":Ljava/lang/String;
    .end local v17    # "accessibilityCollectionItem":Lcom/facebook/react/bridge/ReadableMap;
    .end local v18    # "accessibilityValue":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v4    # "accessibilityHint":Ljava/lang/String;
    .restart local v8    # "accessibilityCollectionItem":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v9    # "accessibilityValue":Lcom/facebook/react/bridge/ReadableMap;
    :cond_c
    move-object/from16 v16, v4

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    const/4 v9, 0x0

    .end local v4    # "accessibilityHint":Ljava/lang/String;
    .end local v8    # "accessibilityCollectionItem":Lcom/facebook/react/bridge/ReadableMap;
    .end local v9    # "accessibilityValue":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v16    # "accessibilityHint":Ljava/lang/String;
    .restart local v17    # "accessibilityCollectionItem":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v18    # "accessibilityValue":Lcom/facebook/react/bridge/ReadableMap;
    goto :goto_4

    .line 499
    .end local v16    # "accessibilityHint":Ljava/lang/String;
    .end local v17    # "accessibilityCollectionItem":Lcom/facebook/react/bridge/ReadableMap;
    .end local v18    # "accessibilityValue":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v4    # "accessibilityHint":Ljava/lang/String;
    .restart local v8    # "accessibilityCollectionItem":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v9    # "accessibilityValue":Lcom/facebook/react/bridge/ReadableMap;
    :cond_d
    move-object/from16 v16, v4

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    const/4 v9, 0x0

    .end local v4    # "accessibilityHint":Ljava/lang/String;
    .end local v8    # "accessibilityCollectionItem":Lcom/facebook/react/bridge/ReadableMap;
    .end local v9    # "accessibilityValue":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v16    # "accessibilityHint":Ljava/lang/String;
    .restart local v17    # "accessibilityCollectionItem":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v18    # "accessibilityValue":Lcom/facebook/react/bridge/ReadableMap;
    goto :goto_4

    .line 497
    .end local v16    # "accessibilityHint":Ljava/lang/String;
    .end local v17    # "accessibilityCollectionItem":Lcom/facebook/react/bridge/ReadableMap;
    .end local v18    # "accessibilityValue":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v4    # "accessibilityHint":Ljava/lang/String;
    .restart local v8    # "accessibilityCollectionItem":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v9    # "accessibilityValue":Lcom/facebook/react/bridge/ReadableMap;
    :cond_e
    move-object/from16 v16, v4

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    const/4 v9, 0x0

    .end local v4    # "accessibilityHint":Ljava/lang/String;
    .end local v8    # "accessibilityCollectionItem":Lcom/facebook/react/bridge/ReadableMap;
    .end local v9    # "accessibilityValue":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v16    # "accessibilityHint":Ljava/lang/String;
    .restart local v17    # "accessibilityCollectionItem":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v18    # "accessibilityValue":Lcom/facebook/react/bridge/ReadableMap;
    goto :goto_4

    .line 496
    .end local v16    # "accessibilityHint":Ljava/lang/String;
    .end local v17    # "accessibilityCollectionItem":Lcom/facebook/react/bridge/ReadableMap;
    .end local v18    # "accessibilityValue":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v4    # "accessibilityHint":Ljava/lang/String;
    .restart local v8    # "accessibilityCollectionItem":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v9    # "accessibilityValue":Lcom/facebook/react/bridge/ReadableMap;
    :cond_f
    move-object/from16 v16, v4

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    const/4 v9, 0x0

    .end local v4    # "accessibilityHint":Ljava/lang/String;
    .end local v8    # "accessibilityCollectionItem":Lcom/facebook/react/bridge/ReadableMap;
    .end local v9    # "accessibilityValue":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v16    # "accessibilityHint":Ljava/lang/String;
    .restart local v17    # "accessibilityCollectionItem":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v18    # "accessibilityValue":Lcom/facebook/react/bridge/ReadableMap;
    goto :goto_4

    .line 492
    .end local v11    # "minDynamic":Lcom/facebook/react/bridge/Dynamic;
    .end local v12    # "nowDynamic":Lcom/facebook/react/bridge/Dynamic;
    .end local v13    # "maxDynamic":Lcom/facebook/react/bridge/Dynamic;
    .end local v16    # "accessibilityHint":Ljava/lang/String;
    .end local v17    # "accessibilityCollectionItem":Lcom/facebook/react/bridge/ReadableMap;
    .end local v18    # "accessibilityValue":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v4    # "accessibilityHint":Ljava/lang/String;
    .restart local v8    # "accessibilityCollectionItem":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v9    # "accessibilityValue":Lcom/facebook/react/bridge/ReadableMap;
    :cond_10
    move-object/from16 v16, v4

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    const/4 v9, 0x0

    .end local v4    # "accessibilityHint":Ljava/lang/String;
    .end local v8    # "accessibilityCollectionItem":Lcom/facebook/react/bridge/ReadableMap;
    .end local v9    # "accessibilityValue":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v16    # "accessibilityHint":Ljava/lang/String;
    .restart local v17    # "accessibilityCollectionItem":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v18    # "accessibilityValue":Lcom/facebook/react/bridge/ReadableMap;
    goto :goto_4

    .line 491
    .end local v16    # "accessibilityHint":Ljava/lang/String;
    .end local v17    # "accessibilityCollectionItem":Lcom/facebook/react/bridge/ReadableMap;
    .end local v18    # "accessibilityValue":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v4    # "accessibilityHint":Ljava/lang/String;
    .restart local v8    # "accessibilityCollectionItem":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v9    # "accessibilityValue":Lcom/facebook/react/bridge/ReadableMap;
    :cond_11
    move-object/from16 v16, v4

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    const/4 v9, 0x0

    .end local v4    # "accessibilityHint":Ljava/lang/String;
    .end local v8    # "accessibilityCollectionItem":Lcom/facebook/react/bridge/ReadableMap;
    .end local v9    # "accessibilityValue":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v16    # "accessibilityHint":Ljava/lang/String;
    .restart local v17    # "accessibilityCollectionItem":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v18    # "accessibilityValue":Lcom/facebook/react/bridge/ReadableMap;
    goto :goto_4

    .line 490
    .end local v16    # "accessibilityHint":Ljava/lang/String;
    .end local v17    # "accessibilityCollectionItem":Lcom/facebook/react/bridge/ReadableMap;
    .end local v18    # "accessibilityValue":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v4    # "accessibilityHint":Ljava/lang/String;
    .restart local v8    # "accessibilityCollectionItem":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v9    # "accessibilityValue":Lcom/facebook/react/bridge/ReadableMap;
    :cond_12
    move-object/from16 v16, v4

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    const/4 v9, 0x0

    .end local v4    # "accessibilityHint":Ljava/lang/String;
    .end local v8    # "accessibilityCollectionItem":Lcom/facebook/react/bridge/ReadableMap;
    .end local v9    # "accessibilityValue":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v16    # "accessibilityHint":Ljava/lang/String;
    .restart local v17    # "accessibilityCollectionItem":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v18    # "accessibilityValue":Lcom/facebook/react/bridge/ReadableMap;
    goto :goto_4

    .line 489
    .end local v16    # "accessibilityHint":Ljava/lang/String;
    .end local v17    # "accessibilityCollectionItem":Lcom/facebook/react/bridge/ReadableMap;
    .end local v18    # "accessibilityValue":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v4    # "accessibilityHint":Ljava/lang/String;
    .restart local v8    # "accessibilityCollectionItem":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v9    # "accessibilityValue":Lcom/facebook/react/bridge/ReadableMap;
    :cond_13
    move-object/from16 v16, v4

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    const/4 v9, 0x0

    .line 515
    .end local v4    # "accessibilityHint":Ljava/lang/String;
    .end local v8    # "accessibilityCollectionItem":Lcom/facebook/react/bridge/ReadableMap;
    .end local v9    # "accessibilityValue":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v16    # "accessibilityHint":Ljava/lang/String;
    .restart local v17    # "accessibilityCollectionItem":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v18    # "accessibilityValue":Lcom/facebook/react/bridge/ReadableMap;
    :goto_4
    sget v0, Lcom/facebook/react/R$id;->react_test_id:I

    invoke-virtual {v1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 516
    .local v0, "testId":Ljava/lang/String;
    if-eqz v0, :cond_14

    .line 517
    invoke-virtual {v2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setViewIdResourceName(Ljava/lang/String;)V

    .line 519
    :cond_14
    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 520
    .local v4, "missingContentDescription":Z
    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    .line 521
    .local v8, "missingText":Z
    if-eqz v4, :cond_15

    if-eqz v8, :cond_15

    const/4 v10, 0x1

    goto :goto_5

    :cond_15
    move v10, v9

    .line 522
    .local v10, "missingTextAndDescription":Z
    :goto_5
    if-nez v7, :cond_16

    if-nez v6, :cond_16

    if-nez v5, :cond_16

    if-eqz v3, :cond_17

    :cond_16
    const/4 v9, 0x1

    .line 527
    .local v9, "hasContentToAnnounce":Z
    :cond_17
    if-eqz v10, :cond_18

    if-eqz v9, :cond_18

    .line 528
    invoke-static/range {p1 .. p2}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->getTalkbackDescription(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 530
    :cond_18
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 862
    const/4 v0, 0x0

    return v0
.end method

.method protected onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 5
    .param p1, "virtualViewId"    # I
    .param p2, "node"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 774
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->mAccessibilityLinks:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks;

    const-string v1, ""

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 775
    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 776
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 777
    return-void

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->mAccessibilityLinks:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks;

    .line 781
    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks;->getLinkById(I)Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks$AccessibleLink;

    move-result-object v0

    .line 782
    .local v0, "accessibleTextSpan":Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks$AccessibleLink;
    if-nez v0, :cond_1

    .line 783
    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 784
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v3, v3, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 785
    return-void

    .line 790
    :cond_1
    invoke-direct {p0, v0}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->getBoundsInParent(Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks$AccessibleLink;)Landroid/graphics/Rect;

    move-result-object v4

    .line 791
    .local v4, "bounds":Landroid/graphics/Rect;
    if-nez v4, :cond_2

    .line 792
    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 793
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v3, v3, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 794
    return-void

    .line 797
    :cond_2
    iget-object v1, v0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks$AccessibleLink;->description:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 798
    const/16 v1, 0x10

    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 799
    invoke-virtual {p2, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 800
    iget-object v1, p0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/react/R$string;->link_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V

    .line 801
    sget-object v1, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->BUTTON:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    invoke-static {v1}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->getValue(Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 802
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 8
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .line 564
    const/high16 v0, 0x80000

    if-ne p2, v0, :cond_0

    .line 565
    sget v0, Lcom/facebook/react/R$id;->accessibility_state_expanded:I

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 567
    :cond_0
    const/high16 v0, 0x40000

    const/4 v1, 0x1

    if-ne p2, v0, :cond_1

    .line 568
    sget v0, Lcom/facebook/react/R$id;->accessibility_state_expanded:I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 570
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->mAccessibilityActionsMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 571
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 572
    .local v0, "event":Lcom/facebook/react/bridge/WritableMap;
    iget-object v2, p0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->mAccessibilityActionsMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "actionName"

    invoke-interface {v0, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/bridge/ReactContext;

    .line 574
    .local v2, "reactContext":Lcom/facebook/react/bridge/ReactContext;
    invoke-virtual {v2}, Lcom/facebook/react/bridge/ReactContext;->hasActiveReactInstance()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 575
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 576
    .local v3, "reactTag":I
    invoke-static {v2}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/content/Context;)I

    move-result v4

    .line 577
    .local v4, "surfaceId":I
    nop

    .line 578
    invoke-static {v3}, Lcom/facebook/react/uimanager/common/ViewUtil;->getUIManagerType(I)I

    move-result v5

    invoke-static {v2, v5}, Lcom/facebook/react/uimanager/UIManagerHelper;->getUIManager(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/bridge/UIManager;

    move-result-object v5

    .line 579
    .local v5, "uiManager":Lcom/facebook/react/bridge/UIManager;
    if-eqz v5, :cond_2

    .line 580
    nop

    .line 581
    invoke-interface {v5}, Lcom/facebook/react/bridge/UIManager;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v6

    new-instance v7, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$2;

    invoke-direct {v7, p0, v4, v3, v0}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$2;-><init>(Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;IILcom/facebook/react/bridge/WritableMap;)V

    .line 582
    invoke-interface {v6, v7}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 595
    .end local v3    # "reactTag":I
    .end local v4    # "surfaceId":I
    .end local v5    # "uiManager":Lcom/facebook/react/bridge/UIManager;
    :cond_2
    goto :goto_0

    .line 596
    :cond_3
    new-instance v3, Lcom/facebook/react/bridge/ReactNoCrashSoftException;

    const-string v4, "Cannot get RCTEventEmitter, no CatalystInstance"

    invoke-direct {v3, v4}, Lcom/facebook/react/bridge/ReactNoCrashSoftException;-><init>(Ljava/lang/String;)V

    const-string v4, "ReactAccessibilityDelegate"

    invoke-static {v4, v3}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 602
    :goto_0
    sget v3, Lcom/facebook/react/R$id;->accessibility_role:I

    .line 603
    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    .line 604
    .local v3, "accessibilityRole":Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;
    sget v4, Lcom/facebook/react/R$id;->accessibility_value:I

    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/bridge/ReadableMap;

    .line 605
    .local v4, "accessibilityValue":Lcom/facebook/react/bridge/ReadableMap;
    sget-object v5, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->ADJUSTABLE:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    if-ne v3, v5, :cond_6

    sget-object v5, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_FORWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 606
    invoke-virtual {v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v5

    if-eq p2, v5, :cond_4

    sget-object v5, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_BACKWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 607
    invoke-virtual {v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v5

    if-ne p2, v5, :cond_6

    .line 608
    :cond_4
    if-eqz v4, :cond_5

    const-string/jumbo v1, "text"

    invoke-interface {v4, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 609
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->scheduleAccessibilityEventSender(Landroid/view/View;)V

    .line 611
    :cond_5
    invoke-super {p0, p1, p2, p3}, Landroidx/customview/widget/ExploreByTouchHelper;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v1

    return v1

    .line 613
    :cond_6
    return v1

    .line 615
    .end local v0    # "event":Lcom/facebook/react/bridge/WritableMap;
    .end local v2    # "reactContext":Lcom/facebook/react/bridge/ReactContext;
    .end local v3    # "accessibilityRole":Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;
    .end local v4    # "accessibilityValue":Lcom/facebook/react/bridge/ReadableMap;
    :cond_7
    invoke-super {p0, p1, p2, p3}, Landroidx/customview/widget/ExploreByTouchHelper;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
