.class public final Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;
.super Lcom/swmansion/gesturehandler/core/GestureHandler;
.source "LongPressGestureHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/gesturehandler/core/LongPressGestureHandler$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/swmansion/gesturehandler/core/GestureHandler<",
        "Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLongPressGestureHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LongPressGestureHandler.kt\ncom/swmansion/gesturehandler/core/LongPressGestureHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,181:1\n1549#2:182\n1620#2,3:183\n1549#2:186\n1620#2,3:187\n*S KotlinDebug\n*F\n+ 1 LongPressGestureHandler.kt\ncom/swmansion/gesturehandler/core/LongPressGestureHandler\n*L\n50#1:182\n50#1:183,3\n51#1:186\n51#1:187,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000c\u0018\u0000 02\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u00010B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0018\u0010\u001e\u001a\u00020\u001b2\u0006\u0010\u001f\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u0006H\u0016J&\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\"2\u0006\u0010#\u001a\u00020\u001d2\u0008\u0008\u0002\u0010$\u001a\u00020%H\u0002J\u0018\u0010&\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\'\u001a\u00020\u001dH\u0014J\u0008\u0010(\u001a\u00020\u001bH\u0014J\u0018\u0010)\u001a\u00020\u001b2\u0006\u0010\u001f\u001a\u00020\u00062\u0006\u0010*\u001a\u00020\u0006H\u0014J\u0008\u0010+\u001a\u00020\u001bH\u0016J\u000e\u0010,\u001a\u00020\u00002\u0006\u0010-\u001a\u00020\u0008J\u000e\u0010.\u001a\u00020\u00002\u0006\u0010/\u001a\u00020\u0006R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00061"
    }
    d2 = {
        "Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;",
        "Lcom/swmansion/gesturehandler/core/GestureHandler;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "currentPointers",
        "",
        "defaultMaxDistSq",
        "",
        "duration",
        "getDuration",
        "()I",
        "handler",
        "Landroid/os/Handler;",
        "maxDistSq",
        "minDurationMs",
        "",
        "getMinDurationMs",
        "()J",
        "setMinDurationMs",
        "(J)V",
        "numberOfPointersRequired",
        "previousTime",
        "startTime",
        "startX",
        "startY",
        "dispatchHandlerUpdate",
        "",
        "event",
        "Landroid/view/MotionEvent;",
        "dispatchStateChange",
        "newState",
        "prevState",
        "getAverageCoords",
        "Lkotlin/Pair;",
        "ev",
        "excludePointer",
        "",
        "onHandle",
        "sourceEvent",
        "onReset",
        "onStateChange",
        "previousState",
        "resetConfig",
        "setMaxDist",
        "maxDist",
        "setNumberOfPointers",
        "numberOfPointers",
        "Companion",
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
.field public static final Companion:Lcom/swmansion/gesturehandler/core/LongPressGestureHandler$Companion;

.field private static final DEFAULT_MAX_DIST_DP:F = 10.0f

.field private static final DEFAULT_MIN_DURATION_MS:J = 0x1f4L


# instance fields
.field private currentPointers:I

.field private final defaultMaxDistSq:F

.field private handler:Landroid/os/Handler;

.field private maxDistSq:F

.field private minDurationMs:J

.field private numberOfPointersRequired:I

.field private previousTime:J

.field private startTime:J

.field private startX:F

.field private startY:F


# direct methods
.method public static synthetic $r8$lambda$ndl1rtfPGrkDyRc7C8lkWiv0NNY(Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->onHandle$lambda$2(Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->Companion:Lcom/swmansion/gesturehandler/core/LongPressGestureHandler$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/core/GestureHandler;-><init>()V

    .line 10
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->minDurationMs:J

    .line 23
    nop

    .line 24
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->setShouldCancelWhenOutside(Z)Lcom/swmansion/gesturehandler/core/GestureHandler;

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v1, v2

    .line 27
    .local v1, "defaultMaxDist":F
    mul-float v2, v1, v1

    iput v2, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->defaultMaxDistSq:F

    .line 28
    iget v2, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->defaultMaxDistSq:F

    iput v2, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->maxDistSq:F

    .line 29
    iput v0, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->numberOfPointersRequired:I

    .line 30
    .end local v1    # "defaultMaxDist":F
    nop

    .line 9
    return-void
.end method

.method private final getAverageCoords(Landroid/view/MotionEvent;Z)Lkotlin/Pair;
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "excludePointer"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "Z)",
            "Lkotlin/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 49
    if-nez p2, :cond_2

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 182
    .local v2, "$i$f$map":I
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v0

    .local v5, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 183
    .local v6, "$i$f$mapTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v7

    check-cast v8, Lkotlin/collections/IntIterator;

    invoke-virtual {v8}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v8

    .line 184
    .local v8, "item$iv$iv":I
    move v9, v8

    .local v9, "it":I
    const/4 v10, 0x0

    .line 50
    .local v10, "$i$a$-map-LongPressGestureHandler$getAverageCoords$x$1":I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    .end local v9    # "it":I
    .end local v10    # "$i$a$-map-LongPressGestureHandler$getAverageCoords$x$1":I
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    .line 184
    invoke-interface {v3, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 185
    .end local v8    # "item$iv$iv":I
    :cond_0
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$mapTo":I
    check-cast v3, Ljava/util/List;

    .line 182
    nop

    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$map":I
    check-cast v3, Ljava/lang/Iterable;

    .line 50
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->averageOfFloat(Ljava/lang/Iterable;)D

    move-result-wide v2

    double-to-float v0, v2

    .line 51
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 186
    .restart local v2    # "$i$f$map":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .restart local v3    # "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 187
    .local v5, "$i$f$mapTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v6

    check-cast v7, Lkotlin/collections/IntIterator;

    invoke-virtual {v7}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v7

    .line 188
    .local v7, "item$iv$iv":I
    move v8, v7

    .local v8, "it":I
    const/4 v9, 0x0

    .line 51
    .local v9, "$i$a$-map-LongPressGestureHandler$getAverageCoords$y$1":I
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .end local v8    # "it":I
    .end local v9    # "$i$a$-map-LongPressGestureHandler$getAverageCoords$y$1":I
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    .line 188
    invoke-interface {v3, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 189
    .end local v7    # "item$iv$iv":I
    :cond_1
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$mapTo":I
    check-cast v3, Ljava/util/List;

    .line 186
    nop

    .end local v1    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$map":I
    check-cast v3, Ljava/lang/Iterable;

    .line 51
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->averageOfFloat(Ljava/lang/Iterable;)D

    move-result-wide v1

    double-to-float v1, v1

    .line 53
    .local v1, "y":F
    new-instance v2, Lkotlin/Pair;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 56
    .end local v0    # "x":F
    .end local v1    # "y":F
    :cond_2
    const/4 v0, 0x0

    .line 57
    .local v0, "sumX":F
    const/4 v1, 0x0

    .line 59
    .local v1, "sumY":F
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    :goto_2
    if-ge v2, v3, :cond_4

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    if-ne v2, v4, :cond_3

    .line 61
    goto :goto_3

    .line 64
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    add-float/2addr v0, v4

    .line 65
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    add-float/2addr v1, v4

    .line 59
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 68
    .end local v2    # "i":I
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    div-float v2, v0, v2

    .line 69
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    div-float v3, v1, v3

    .line 71
    .local v3, "y":F
    new-instance v4, Lkotlin/Pair;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4
.end method

.method static synthetic getAverageCoords$default(Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;Landroid/view/MotionEvent;ZILjava/lang/Object;)Lkotlin/Pair;
    .locals 0

    .line 48
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->getAverageCoords(Landroid/view/MotionEvent;Z)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static final onHandle$lambda$2(Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;)V
    .locals 1
    .param p0, "this$0"    # Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->activate()V

    return-void
.end method


# virtual methods
.method public dispatchHandlerUpdate(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->previousTime:J

    .line 168
    invoke-super {p0, p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->dispatchHandlerUpdate(Landroid/view/MotionEvent;)V

    .line 169
    return-void
.end method

.method public dispatchStateChange(II)V
    .locals 2
    .param p1, "newState"    # I
    .param p2, "prevState"    # I

    .line 162
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->previousTime:J

    .line 163
    invoke-super {p0, p1, p2}, Lcom/swmansion/gesturehandler/core/GestureHandler;->dispatchStateChange(II)V

    .line 164
    return-void
.end method

.method public final getDuration()I
    .locals 4

    .line 12
    iget-wide v0, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->previousTime:J

    iget-wide v2, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->startTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final getMinDurationMs()J
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->minDurationMs:J

    return-wide v0
.end method

.method protected onHandle(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "sourceEvent"    # Landroid/view/MotionEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, p2}, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->shouldActivateWithMouse(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    return-void

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->getState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 80
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->previousTime:J

    .line 81
    iget-wide v5, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->previousTime:J

    iput-wide v5, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->startTime:J

    .line 82
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->begin()V

    .line 84
    invoke-static {p0, p2, v4, v2, v3}, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->getAverageCoords$default(Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;Landroid/view/MotionEvent;ZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    .local v5, "x":F
    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 85
    .local v0, "y":F
    iput v5, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->startX:F

    .line 86
    iput v0, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->startY:F

    .line 88
    iget v6, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->currentPointers:I

    add-int/2addr v6, v1

    iput v6, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->currentPointers:I

    .line 91
    .end local v0    # "y":F
    .end local v5    # "x":F
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v5, 0x5

    if-ne v0, v5, :cond_2

    .line 92
    iget v0, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->currentPointers:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->currentPointers:I

    .line 94
    invoke-static {p0, p2, v4, v2, v3}, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->getAverageCoords$default(Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;Landroid/view/MotionEvent;ZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    .local v6, "x":F
    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 95
    .restart local v0    # "y":F
    iput v6, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->startX:F

    .line 96
    iput v0, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->startY:F

    .line 98
    iget v7, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->currentPointers:I

    iget v8, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->numberOfPointersRequired:I

    if-le v7, v8, :cond_2

    .line 99
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->fail()V

    .line 100
    iput v4, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->currentPointers:I

    .line 104
    .end local v0    # "y":F
    .end local v6    # "x":F
    :cond_2
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->getState()I

    move-result v0

    if-ne v0, v2, :cond_5

    iget v0, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->currentPointers:I

    iget v6, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->numberOfPointersRequired:I

    if-ne v0, v6, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v5, :cond_5

    .line 105
    :cond_3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->handler:Landroid/os/Handler;

    .line 106
    iget-wide v5, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->minDurationMs:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-lez v0, :cond_4

    .line 107
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->handler:Landroid/os/Handler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v5, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler$$ExternalSyntheticLambda0;-><init>(Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;)V

    iget-wide v6, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->minDurationMs:J

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 108
    :cond_4
    iget-wide v5, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->minDurationMs:J

    cmp-long v0, v5, v7

    if-nez v0, :cond_5

    .line 109
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->activate()V

    .line 112
    :cond_5
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v5, 0x4

    if-eq v0, v1, :cond_a

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v6, 0xc

    if-ne v0, v6, :cond_6

    goto/16 :goto_1

    .line 125
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v6, 0x6

    if-ne v0, v6, :cond_8

    .line 126
    iget v0, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->currentPointers:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->currentPointers:I

    .line 128
    iget v0, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->currentPointers:I

    iget v2, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->numberOfPointersRequired:I

    if-ge v0, v2, :cond_7

    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->getState()I

    move-result v0

    if-eq v0, v5, :cond_7

    .line 129
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->fail()V

    .line 130
    iput v4, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->currentPointers:I

    goto/16 :goto_2

    .line 132
    :cond_7
    invoke-direct {p0, p2, v1}, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->getAverageCoords(Landroid/view/MotionEvent;Z)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .local v1, "x":F
    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 133
    .restart local v0    # "y":F
    iput v1, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->startX:F

    .line 134
    iput v0, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->startY:F

    .end local v0    # "y":F
    .end local v1    # "x":F
    goto :goto_2

    .line 138
    :cond_8
    invoke-static {p0, p2, v4, v2, v3}, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->getAverageCoords$default(Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;Landroid/view/MotionEvent;ZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .restart local v1    # "x":F
    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 140
    .restart local v0    # "y":F
    iget v2, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->startX:F

    sub-float v2, v1, v2

    .line 141
    .local v2, "deltaX":F
    iget v3, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->startY:F

    sub-float v3, v0, v3

    .line 142
    .local v3, "deltaY":F
    mul-float v4, v2, v2

    mul-float v6, v3, v3

    add-float/2addr v4, v6

    .line 144
    .local v4, "distSq":F
    iget v6, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->maxDistSq:F

    cmpl-float v6, v4, v6

    if-lez v6, :cond_d

    .line 145
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->getState()I

    move-result v6

    if-ne v6, v5, :cond_9

    .line 146
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->cancel()V

    goto :goto_2

    .line 148
    :cond_9
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->fail()V

    goto :goto_2

    .line 113
    .end local v0    # "y":F
    .end local v1    # "x":F
    .end local v2    # "deltaX":F
    .end local v3    # "deltaY":F
    .end local v4    # "distSq":F
    :cond_a
    :goto_1
    iget v0, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->currentPointers:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->currentPointers:I

    .line 115
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_b

    .local v0, "it":Landroid/os/Handler;
    const/4 v1, 0x0

    .line 116
    .local v1, "$i$a$-let-LongPressGestureHandler$onHandle$2":I
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 117
    iput-object v3, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->handler:Landroid/os/Handler;

    .line 118
    nop

    .line 115
    .end local v0    # "it":Landroid/os/Handler;
    .end local v1    # "$i$a$-let-LongPressGestureHandler$onHandle$2":I
    nop

    .line 120
    :cond_b
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->getState()I

    move-result v0

    if-ne v0, v5, :cond_c

    .line 121
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->end()V

    goto :goto_2

    .line 123
    :cond_c
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->fail()V

    .line 152
    :cond_d
    :goto_2
    return-void
.end method

.method protected onReset()V
    .locals 1

    .line 172
    invoke-super {p0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->onReset()V

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->currentPointers:I

    .line 174
    return-void
.end method

.method protected onStateChange(II)V
    .locals 3
    .param p1, "newState"    # I
    .param p2, "previousState"    # I

    .line 155
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .local v0, "it":Landroid/os/Handler;
    const/4 v1, 0x0

    .line 156
    .local v1, "$i$a$-let-LongPressGestureHandler$onStateChange$1":I
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 157
    iput-object v2, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->handler:Landroid/os/Handler;

    .line 158
    nop

    .line 155
    .end local v0    # "it":Landroid/os/Handler;
    .end local v1    # "$i$a$-let-LongPressGestureHandler$onStateChange$1":I
    nop

    .line 159
    :cond_0
    return-void
.end method

.method public resetConfig()V
    .locals 2

    .line 33
    invoke-super {p0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->resetConfig()V

    .line 34
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->minDurationMs:J

    .line 35
    iget v0, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->defaultMaxDistSq:F

    iput v0, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->maxDistSq:F

    .line 36
    return-void
.end method

.method public final setMaxDist(F)Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;
    .locals 1
    .param p1, "maxDist"    # F

    .line 39
    mul-float v0, p1, p1

    iput v0, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->maxDistSq:F

    .line 40
    return-object p0
.end method

.method public final setMinDurationMs(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 10
    iput-wide p1, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->minDurationMs:J

    return-void
.end method

.method public final setNumberOfPointers(I)Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;
    .locals 0
    .param p1, "numberOfPointers"    # I

    .line 44
    iput p1, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->numberOfPointersRequired:I

    .line 45
    return-object p0
.end method
