.class public final Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;
.super Ljava/lang/Object;
.source "OnScrollDispatchHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/scroll/OnScrollDispatchHelper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001e\u0010\r\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000c\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;",
        "",
        "()V",
        "lastScrollEventTimeMs",
        "",
        "prevX",
        "",
        "prevY",
        "<set-?>",
        "",
        "xFlingVelocity",
        "getXFlingVelocity",
        "()F",
        "yFlingVelocity",
        "getYFlingVelocity",
        "onScrollChanged",
        "",
        "x",
        "y",
        "Companion",
        "ReactAndroid_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final Companion:Lcom/facebook/react/views/scroll/OnScrollDispatchHelper$Companion;

.field private static final MIN_EVENT_SEPARATION_MS:I = 0xa


# instance fields
.field private lastScrollEventTimeMs:J

.field private prevX:I

.field private prevY:I

.field private xFlingVelocity:F

.field private yFlingVelocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->Companion:Lcom/facebook/react/views/scroll/OnScrollDispatchHelper$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->prevX:I

    .line 20
    iput v0, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->prevY:I

    .line 27
    const-wide/16 v0, -0xb

    iput-wide v0, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->lastScrollEventTimeMs:J

    .line 17
    return-void
.end method


# virtual methods
.method public final getXFlingVelocity()F
    .locals 1

    .line 21
    iget v0, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->xFlingVelocity:F

    return v0
.end method

.method public final getYFlingVelocity()F
    .locals 1

    .line 24
    iget v0, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->yFlingVelocity:F

    return v0
.end method

.method public final onScrollChanged(II)Z
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 34
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 36
    .local v0, "eventTime":J
    iget-wide v2, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->lastScrollEventTimeMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xa

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    iget v2, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->prevX:I

    if-ne v2, p1, :cond_1

    iget v2, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->prevY:I

    if-eq v2, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 35
    :goto_1
    nop

    .line 37
    .local v2, "shouldDispatch":Z
    iget-wide v3, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->lastScrollEventTimeMs:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 38
    iget v3, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->prevX:I

    sub-int v3, p1, v3

    int-to-float v3, v3

    iget-wide v4, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->lastScrollEventTimeMs:J

    sub-long v4, v0, v4

    long-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->xFlingVelocity:F

    .line 39
    iget v3, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->prevY:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    iget-wide v4, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->lastScrollEventTimeMs:J

    sub-long v4, v0, v4

    long-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->yFlingVelocity:F

    .line 41
    :cond_2
    iput-wide v0, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->lastScrollEventTimeMs:J

    .line 42
    iput p1, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->prevX:I

    .line 43
    iput p2, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->prevY:I

    .line 44
    return v2
.end method
