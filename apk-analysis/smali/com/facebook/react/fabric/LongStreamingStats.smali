.class Lcom/facebook/react/fabric/LongStreamingStats;
.super Ljava/lang/Object;
.source "LongStreamingStats.java"


# instance fields
.field private len:I

.field private max:J

.field private final maxHeap:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final minHeap:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private streamingAverage:D


# direct methods
.method constructor <init>()V
    .locals 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/PriorityQueue;

    new-instance v1, Lcom/facebook/react/fabric/LongStreamingStats$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/facebook/react/fabric/LongStreamingStats$$ExternalSyntheticLambda0;-><init>()V

    .line 18
    invoke-static {v1}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v1

    const/16 v2, 0xb

    invoke-direct {v0, v2, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/facebook/react/fabric/LongStreamingStats;->minHeap:Ljava/util/Queue;

    .line 19
    new-instance v0, Ljava/util/PriorityQueue;

    new-instance v1, Lcom/facebook/react/fabric/LongStreamingStats$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/facebook/react/fabric/LongStreamingStats$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v0, v2, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/facebook/react/fabric/LongStreamingStats;->maxHeap:Ljava/util/Queue;

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/react/fabric/LongStreamingStats;->streamingAverage:D

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/react/fabric/LongStreamingStats;->len:I

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/react/fabric/LongStreamingStats;->max:J

    .line 30
    return-void
.end method

.method static synthetic lambda$new$0(Ljava/lang/Long;)J
    .locals 2
    .param p0, "aLong"    # Ljava/lang/Long;

    .line 18
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic lambda$new$1(Ljava/lang/Long;Ljava/lang/Long;)I
    .locals 4
    .param p0, "first"    # Ljava/lang/Long;
    .param p1, "second"    # Ljava/lang/Long;

    .line 24
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method


# virtual methods
.method public add(J)V
    .locals 5
    .param p1, "n"    # J

    .line 35
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/facebook/react/fabric/LongStreamingStats;->minHeap:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/react/fabric/LongStreamingStats;->maxHeap:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/facebook/react/fabric/LongStreamingStats;->maxHeap:Ljava/util/Queue;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 38
    iget-object v0, p0, Lcom/facebook/react/fabric/LongStreamingStats;->minHeap:Ljava/util/Queue;

    iget-object v1, p0, Lcom/facebook/react/fabric/LongStreamingStats;->maxHeap:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/fabric/LongStreamingStats;->minHeap:Ljava/util/Queue;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 41
    iget-object v0, p0, Lcom/facebook/react/fabric/LongStreamingStats;->maxHeap:Ljava/util/Queue;

    iget-object v1, p0, Lcom/facebook/react/fabric/LongStreamingStats;->minHeap:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 45
    :cond_1
    :goto_0
    iget v0, p0, Lcom/facebook/react/fabric/LongStreamingStats;->len:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/react/fabric/LongStreamingStats;->len:I

    .line 46
    iget v0, p0, Lcom/facebook/react/fabric/LongStreamingStats;->len:I

    if-ne v0, v1, :cond_2

    .line 47
    long-to-double v0, p1

    iput-wide v0, p0, Lcom/facebook/react/fabric/LongStreamingStats;->streamingAverage:D

    goto :goto_1

    .line 49
    :cond_2
    iget-wide v2, p0, Lcom/facebook/react/fabric/LongStreamingStats;->streamingAverage:D

    iget v0, p0, Lcom/facebook/react/fabric/LongStreamingStats;->len:I

    iget v4, p0, Lcom/facebook/react/fabric/LongStreamingStats;->len:I

    sub-int/2addr v4, v1

    div-int/2addr v0, v4

    int-to-double v0, v0

    div-double/2addr v2, v0

    iget v0, p0, Lcom/facebook/react/fabric/LongStreamingStats;->len:I

    int-to-long v0, v0

    div-long v0, p1, v0

    long-to-double v0, v0

    add-double/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/react/fabric/LongStreamingStats;->streamingAverage:D

    .line 52
    :goto_1
    iget-wide v0, p0, Lcom/facebook/react/fabric/LongStreamingStats;->max:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_3

    move-wide v0, p1

    goto :goto_2

    :cond_3
    iget-wide v0, p0, Lcom/facebook/react/fabric/LongStreamingStats;->max:J

    :goto_2
    iput-wide v0, p0, Lcom/facebook/react/fabric/LongStreamingStats;->max:J

    .line 53
    return-void
.end method

.method public getAverage()D
    .locals 2

    .line 70
    iget-wide v0, p0, Lcom/facebook/react/fabric/LongStreamingStats;->streamingAverage:D

    return-wide v0
.end method

.method public getMax()J
    .locals 2

    .line 74
    iget-wide v0, p0, Lcom/facebook/react/fabric/LongStreamingStats;->max:J

    return-wide v0
.end method

.method public getMedian()D
    .locals 4

    .line 56
    iget-object v0, p0, Lcom/facebook/react/fabric/LongStreamingStats;->minHeap:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/fabric/LongStreamingStats;->maxHeap:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 57
    const-wide/16 v0, 0x0

    return-wide v0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/fabric/LongStreamingStats;->minHeap:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/react/fabric/LongStreamingStats;->maxHeap:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 62
    iget-object v0, p0, Lcom/facebook/react/fabric/LongStreamingStats;->minHeap:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .local v0, "median":J
    goto :goto_0

    .line 64
    .end local v0    # "median":J
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/fabric/LongStreamingStats;->minHeap:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/react/fabric/LongStreamingStats;->maxHeap:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    .line 66
    .restart local v0    # "median":J
    :goto_0
    long-to-double v2, v0

    return-wide v2
.end method
