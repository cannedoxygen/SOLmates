.class public final Lcom/swmansion/gesturehandler/core/GestureUtils;
.super Ljava/lang/Object;
.source "GestureUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004J\u0016\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u0016\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/swmansion/gesturehandler/core/GestureUtils;",
        "",
        "()V",
        "coneToDeviation",
        "",
        "angle",
        "getLastPointerX",
        "",
        "event",
        "Landroid/view/MotionEvent;",
        "averageTouches",
        "",
        "getLastPointerY",
        "react-native-gesture-handler_debug"
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
.field public static final INSTANCE:Lcom/swmansion/gesturehandler/core/GestureUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/swmansion/gesturehandler/core/GestureUtils;

    invoke-direct {v0}, Lcom/swmansion/gesturehandler/core/GestureUtils;-><init>()V

    sput-object v0, Lcom/swmansion/gesturehandler/core/GestureUtils;->INSTANCE:Lcom/swmansion/gesturehandler/core/GestureUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final coneToDeviation(D)D
    .locals 2
    .param p1, "angle"    # D

    .line 50
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getLastPointerX(Landroid/view/MotionEvent;Z)F
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "averageTouches"    # Z

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 9
    .local v0, "excludeIndex":I
    :goto_0
    if-eqz p2, :cond_3

    .line 10
    const/4 v1, 0x0

    .line 11
    .local v1, "sum":F
    const/4 v2, 0x0

    .line 12
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    :goto_1
    if-ge v3, v4, :cond_2

    .line 13
    if-eq v3, v0, :cond_1

    .line 14
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    add-float/2addr v1, v5

    .line 15
    add-int/lit8 v2, v2, 0x1

    .line 12
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 18
    .end local v3    # "i":I
    :cond_2
    int-to-float v3, v2

    div-float/2addr v1, v3

    .end local v1    # "sum":F
    .end local v2    # "count":I
    goto :goto_2

    .line 20
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 21
    .local v1, "lastPointerIdx":I
    if-ne v1, v0, :cond_4

    .line 22
    add-int/lit8 v1, v1, -0x1

    .line 24
    :cond_4
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    move v1, v2

    .line 9
    .end local v1    # "lastPointerIdx":I
    :goto_2
    return v1
.end method

.method public final getLastPointerY(Landroid/view/MotionEvent;Z)F
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "averageTouches"    # Z

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 30
    .local v0, "excludeIndex":I
    :goto_0
    if-eqz p2, :cond_3

    .line 31
    const/4 v1, 0x0

    .line 32
    .local v1, "sum":F
    const/4 v2, 0x0

    .line 33
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    :goto_1
    if-ge v3, v4, :cond_2

    .line 34
    if-eq v3, v0, :cond_1

    .line 35
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    add-float/2addr v1, v5

    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 33
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 39
    .end local v3    # "i":I
    :cond_2
    int-to-float v3, v2

    div-float/2addr v1, v3

    .end local v1    # "sum":F
    .end local v2    # "count":I
    goto :goto_2

    .line 41
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 42
    .local v1, "lastPointerIdx":I
    if-ne v1, v0, :cond_4

    add-int/lit8 v1, v1, -0x1

    .line 43
    nop

    .line 45
    :cond_4
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    move v1, v2

    .line 30
    .end local v1    # "lastPointerIdx":I
    :goto_2
    return v1
.end method
