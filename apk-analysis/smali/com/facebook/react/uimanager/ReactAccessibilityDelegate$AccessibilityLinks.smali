.class public Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks;
.super Ljava/lang/Object;
.source "ReactAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessibilityLinks"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks$AccessibleLink;
    }
.end annotation


# instance fields
.field private final mLinks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks$AccessibleLink;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Landroid/text/style/ClickableSpan;Landroid/text/Spannable;)V
    .locals 7
    .param p1, "spans"    # [Landroid/text/style/ClickableSpan;
    .param p2, "text"    # Landroid/text/Spannable;

    .line 878
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 879
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 880
    .local v0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks$AccessibleLink;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 881
    aget-object v2, p1, v1

    .line 882
    .local v2, "span":Landroid/text/style/ClickableSpan;
    invoke-interface {p2, v2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 883
    .local v3, "start":I
    invoke-interface {p2, v2}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 885
    .local v4, "end":I
    if-eq v3, v4, :cond_1

    if-ltz v3, :cond_1

    if-ltz v4, :cond_1

    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v5

    if-gt v3, v5, :cond_1

    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 886
    goto :goto_1

    .line 889
    :cond_0
    new-instance v5, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks$AccessibleLink;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks$AccessibleLink;-><init>(Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks$AccessibleLink-IA;)V

    .line 890
    .local v5, "link":Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks$AccessibleLink;
    invoke-interface {p2, v3, v4}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks$AccessibleLink;->description:Ljava/lang/String;

    .line 891
    iput v3, v5, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks$AccessibleLink;->start:I

    .line 892
    iput v4, v5, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks$AccessibleLink;->end:I

    .line 900
    array-length v6, p1

    add-int/lit8 v6, v6, -0x1

    sub-int/2addr v6, v1

    iput v6, v5, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks$AccessibleLink;->id:I

    .line 901
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 880
    .end local v2    # "span":Landroid/text/style/ClickableSpan;
    .end local v3    # "start":I
    .end local v4    # "end":I
    .end local v5    # "link":Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks$AccessibleLink;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 903
    .end local v1    # "i":I
    :cond_2
    iput-object v0, p0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks;->mLinks:Ljava/util/List;

    .line 904
    return-void
.end method


# virtual methods
.method public getLinkById(I)Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks$AccessibleLink;
    .locals 3
    .param p1, "id"    # I

    .line 908
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks;->mLinks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks$AccessibleLink;

    .line 909
    .local v1, "link":Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks$AccessibleLink;
    iget v2, v1, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks$AccessibleLink;->id:I

    if-ne v2, p1, :cond_0

    .line 910
    return-object v1

    .line 912
    .end local v1    # "link":Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks$AccessibleLink;
    :cond_0
    goto :goto_0

    .line 914
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLinkBySpanPos(II)Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks$AccessibleLink;
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 919
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks;->mLinks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks$AccessibleLink;

    .line 920
    .local v1, "link":Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks$AccessibleLink;
    iget v2, v1, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks$AccessibleLink;->start:I

    if-ne v2, p1, :cond_0

    iget v2, v1, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks$AccessibleLink;->end:I

    if-ne v2, p2, :cond_0

    .line 921
    return-object v1

    .line 923
    .end local v1    # "link":Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks$AccessibleLink;
    :cond_0
    goto :goto_0

    .line 925
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 929
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks;->mLinks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
