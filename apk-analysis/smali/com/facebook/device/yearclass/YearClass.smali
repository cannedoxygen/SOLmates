.class public Lcom/facebook/device/yearclass/YearClass;
.super Ljava/lang/Object;
.source "YearClass.java"


# static fields
.field public static final CLASS_2008:I = 0x7d8

.field public static final CLASS_2009:I = 0x7d9

.field public static final CLASS_2010:I = 0x7da

.field public static final CLASS_2011:I = 0x7db

.field public static final CLASS_2012:I = 0x7dc

.field public static final CLASS_2013:I = 0x7dd

.field public static final CLASS_2014:I = 0x7de

.field public static final CLASS_2015:I = 0x7df

.field public static final CLASS_2016:I = 0x7e0

.field public static final CLASS_UNKNOWN:I = -0x1

.field private static final MB:J = 0x100000L

.field private static final MHZ_IN_KHZ:I = 0x3e8

.field private static volatile mYearCategory:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static categorizeByYear2014Method(Landroid/content/Context;)I
    .locals 5
    .param p0, "c"    # Landroid/content/Context;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v0, "componentYears":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/facebook/device/yearclass/YearClass;->getNumCoresYear()I

    move-result v1

    invoke-static {v0, v1}, Lcom/facebook/device/yearclass/YearClass;->conditionallyAdd(Ljava/util/ArrayList;I)V

    .line 99
    invoke-static {}, Lcom/facebook/device/yearclass/YearClass;->getClockSpeedYear()I

    move-result v1

    invoke-static {v0, v1}, Lcom/facebook/device/yearclass/YearClass;->conditionallyAdd(Ljava/util/ArrayList;I)V

    .line 100
    invoke-static {p0}, Lcom/facebook/device/yearclass/YearClass;->getRamYear(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/facebook/device/yearclass/YearClass;->conditionallyAdd(Ljava/util/ArrayList;I)V

    .line 101
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    const/4 v1, -0x1

    return v1

    .line 103
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 104
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 105
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 107
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, v2

    .line 109
    .local v1, "baseIndex":I
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    .line 110
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 109
    return v2
.end method

.method private static categorizeByYear2016Method(Landroid/content/Context;)I
    .locals 6
    .param p0, "c"    # Landroid/content/Context;

    .line 65
    invoke-static {p0}, Lcom/facebook/device/yearclass/DeviceInfo;->getTotalMemory(Landroid/content/Context;)J

    move-result-wide v0

    .line 66
    .local v0, "totalRam":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 67
    invoke-static {p0}, Lcom/facebook/device/yearclass/YearClass;->categorizeByYear2014Method(Landroid/content/Context;)I

    move-result v2

    return v2

    .line 70
    :cond_0
    const-wide/32 v2, 0x30000000

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 71
    invoke-static {}, Lcom/facebook/device/yearclass/DeviceInfo;->getNumberOfCPUCores()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    const/16 v2, 0x7d9

    goto :goto_0

    :cond_1
    const/16 v2, 0x7da

    :goto_0
    return v2

    .line 73
    :cond_2
    const-wide/32 v2, 0x40000000

    cmp-long v2, v0, v2

    const/16 v3, 0x7dc

    if-gtz v2, :cond_4

    .line 74
    invoke-static {}, Lcom/facebook/device/yearclass/DeviceInfo;->getCPUMaxFreqKHz()I

    move-result v2

    const v4, 0x13d620

    if-ge v2, v4, :cond_3

    const/16 v3, 0x7db

    :cond_3
    return v3

    .line 76
    :cond_4
    const-wide/32 v4, 0x60000000

    cmp-long v2, v0, v4

    const/16 v4, 0x7dd

    if-gtz v2, :cond_6

    .line 77
    invoke-static {}, Lcom/facebook/device/yearclass/DeviceInfo;->getCPUMaxFreqKHz()I

    move-result v2

    const v5, 0x1b7740

    if-ge v2, v5, :cond_5

    goto :goto_1

    :cond_5
    move v3, v4

    :goto_1
    return v3

    .line 79
    :cond_6
    const-wide v2, 0x80000000L

    cmp-long v2, v0, v2

    if-gtz v2, :cond_7

    .line 80
    return v4

    .line 82
    :cond_7
    const-wide v2, 0xc0000000L

    cmp-long v2, v0, v2

    if-gtz v2, :cond_8

    .line 83
    const/16 v2, 0x7de

    return v2

    .line 85
    :cond_8
    const-wide v2, 0x140000000L

    cmp-long v2, v0, v2

    if-gtz v2, :cond_9

    const/16 v2, 0x7df

    goto :goto_2

    :cond_9
    const/16 v2, 0x7e0

    :goto_2
    return v2
.end method

.method private static conditionallyAdd(Ljava/util/ArrayList;I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 53
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_0
    return-void
.end method

.method public static get(Landroid/content/Context;)I
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .line 42
    sget-object v0, Lcom/facebook/device/yearclass/YearClass;->mYearCategory:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 43
    const-class v0, Lcom/facebook/device/yearclass/YearClass;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/facebook/device/yearclass/YearClass;->mYearCategory:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 45
    invoke-static {p0}, Lcom/facebook/device/yearclass/YearClass;->categorizeByYear2016Method(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/facebook/device/yearclass/YearClass;->mYearCategory:Ljava/lang/Integer;

    .line 47
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 49
    :cond_1
    :goto_0
    sget-object v0, Lcom/facebook/device/yearclass/YearClass;->mYearCategory:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static getClockSpeedYear()I
    .locals 4

    .line 159
    invoke-static {}, Lcom/facebook/device/yearclass/DeviceInfo;->getCPUMaxFreqKHz()I

    move-result v0

    int-to-long v0, v0

    .line 160
    .local v0, "clockSpeedKHz":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, -0x1

    return v2

    .line 163
    :cond_0
    const-wide/32 v2, 0x80e80

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    const/16 v2, 0x7d8

    return v2

    .line 164
    :cond_1
    const-wide/32 v2, 0x975e0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    const/16 v2, 0x7d9

    return v2

    .line 165
    :cond_2
    const-wide/32 v2, 0xf9060

    cmp-long v2, v0, v2

    if-gtz v2, :cond_3

    const/16 v2, 0x7da

    return v2

    .line 166
    :cond_3
    const-wide/32 v2, 0x129da0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_4

    const/16 v2, 0x7db

    return v2

    .line 167
    :cond_4
    const-wide/32 v2, 0x173180

    cmp-long v2, v0, v2

    if-gtz v2, :cond_5

    const/16 v2, 0x7dc

    return v2

    .line 168
    :cond_5
    const-wide/32 v2, 0x1ed2a0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_6

    const/16 v2, 0x7dd

    return v2

    .line 169
    :cond_6
    const/16 v2, 0x7de

    return v2
.end method

.method private static getNumCoresYear()I
    .locals 2

    .line 131
    invoke-static {}, Lcom/facebook/device/yearclass/DeviceInfo;->getNumberOfCPUCores()I

    move-result v0

    .line 132
    .local v0, "cores":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 v1, -0x1

    return v1

    .line 133
    :cond_0
    if-ne v0, v1, :cond_1

    const/16 v1, 0x7d8

    return v1

    .line 134
    :cond_1
    const/4 v1, 0x3

    if-gt v0, v1, :cond_2

    const/16 v1, 0x7db

    return v1

    .line 135
    :cond_2
    const/16 v1, 0x7dc

    return v1
.end method

.method private static getRamYear(Landroid/content/Context;)I
    .locals 4
    .param p0, "c"    # Landroid/content/Context;

    .line 193
    invoke-static {p0}, Lcom/facebook/device/yearclass/DeviceInfo;->getTotalMemory(Landroid/content/Context;)J

    move-result-wide v0

    .line 194
    .local v0, "totalRam":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v2, -0x1

    return v2

    .line 195
    :cond_0
    const-wide/32 v2, 0xc000000

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    const/16 v2, 0x7d8

    return v2

    .line 196
    :cond_1
    const-wide/32 v2, 0x12200000

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    const/16 v2, 0x7d9

    return v2

    .line 197
    :cond_2
    const-wide/32 v2, 0x20000000

    cmp-long v2, v0, v2

    if-gtz v2, :cond_3

    const/16 v2, 0x7da

    return v2

    .line 198
    :cond_3
    const-wide/32 v2, 0x40000000

    cmp-long v2, v0, v2

    if-gtz v2, :cond_4

    const/16 v2, 0x7db

    return v2

    .line 199
    :cond_4
    const-wide/32 v2, 0x60000000

    cmp-long v2, v0, v2

    if-gtz v2, :cond_5

    const/16 v2, 0x7dc

    return v2

    .line 200
    :cond_5
    const-wide v2, 0x80000000L

    cmp-long v2, v0, v2

    if-gtz v2, :cond_6

    const/16 v2, 0x7dd

    return v2

    .line 201
    :cond_6
    const/16 v2, 0x7de

    return v2
.end method
