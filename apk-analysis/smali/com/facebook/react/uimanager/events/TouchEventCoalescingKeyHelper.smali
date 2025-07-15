.class public Lcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;
.super Ljava/lang/Object;
.source "TouchEventCoalescingKeyHelper.java"


# instance fields
.field private final mDownTimeToCoalescingKey:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;->mDownTimeToCoalescingKey:Landroid/util/SparseIntArray;

    return-void
.end method


# virtual methods
.method public addCoalescingKey(J)V
    .locals 3
    .param p1, "downTime"    # J

    .line 52
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;->mDownTimeToCoalescingKey:Landroid/util/SparseIntArray;

    long-to-int v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 53
    return-void
.end method

.method public getCoalescingKey(J)S
    .locals 3
    .param p1, "downTime"    # J

    .line 66
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;->mDownTimeToCoalescingKey:Landroid/util/SparseIntArray;

    long-to-int v1, p1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 67
    .local v0, "currentValue":I
    if-eq v0, v2, :cond_0

    .line 70
    const v1, 0xffff

    and-int/2addr v1, v0

    int-to-short v1, v1

    return v1

    .line 68
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Tried to get non-existent cookie"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public hasCoalescingKey(J)Z
    .locals 3
    .param p1, "downTime"    # J

    .line 79
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;->mDownTimeToCoalescingKey:Landroid/util/SparseIntArray;

    long-to-int v1, p1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 80
    .local v0, "currentValue":I
    if-ne v0, v2, :cond_0

    .line 81
    const/4 v1, 0x0

    return v1

    .line 83
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public incrementCoalescingKey(J)V
    .locals 4
    .param p1, "downTime"    # J

    .line 57
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;->mDownTimeToCoalescingKey:Landroid/util/SparseIntArray;

    long-to-int v1, p1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 58
    .local v0, "currentValue":I
    if-eq v0, v2, :cond_0

    .line 61
    iget-object v1, p0, Lcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;->mDownTimeToCoalescingKey:Landroid/util/SparseIntArray;

    long-to-int v2, p1

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 62
    return-void

    .line 59
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Tried to increment non-existent cookie"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeCoalescingKey(J)V
    .locals 2
    .param p1, "downTime"    # J

    .line 75
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;->mDownTimeToCoalescingKey:Landroid/util/SparseIntArray;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 76
    return-void
.end method
