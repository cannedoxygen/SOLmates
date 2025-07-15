.class public final Lcom/swmansion/gesturehandler/core/FlingGestureHandler;
.super Lcom/swmansion/gesturehandler/core/GestureHandler;
.source "FlingGestureHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/gesturehandler/core/FlingGestureHandler$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/swmansion/gesturehandler/core/GestureHandler<",
        "Lcom/swmansion/gesturehandler/core/FlingGestureHandler;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFlingGestureHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FlingGestureHandler.kt\ncom/swmansion/gesturehandler/core/FlingGestureHandler\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,142:1\n11065#2:143\n11400#2,3:144\n11065#2:147\n11400#2,3:148\n1747#3,3:151\n*S KotlinDebug\n*F\n+ 1 FlingGestureHandler.kt\ncom/swmansion/gesturehandler/core/FlingGestureHandler\n*L\n55#1:143\n55#1:144,3\n62#1:147\n62#1:148,3\n64#1:151,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 &2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001&B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u001a\u0010\u001a\u001a\u00020\u00172\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u0010\u0010\u001e\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u0008\u0010\u001f\u001a\u00020\u0017H\u0014J\u0018\u0010 \u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010!\u001a\u00020\u001dH\u0014J\u0008\u0010\"\u001a\u00020\u0017H\u0014J\u0008\u0010#\u001a\u00020\u0017H\u0016J\u0010\u0010$\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u0010\u0010%\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u001dH\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000eX\u0082D\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0011\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0006\"\u0004\u0008\u0013\u0010\u0008R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/swmansion/gesturehandler/core/FlingGestureHandler;",
        "Lcom/swmansion/gesturehandler/core/GestureHandler;",
        "()V",
        "direction",
        "",
        "getDirection",
        "()I",
        "setDirection",
        "(I)V",
        "failDelayed",
        "Ljava/lang/Runnable;",
        "handler",
        "Landroid/os/Handler;",
        "maxDurationMs",
        "",
        "maxNumberOfPointersSimultaneously",
        "minVelocity",
        "numberOfPointersRequired",
        "getNumberOfPointersRequired",
        "setNumberOfPointersRequired",
        "velocityTracker",
        "Landroid/view/VelocityTracker;",
        "activate",
        "",
        "force",
        "",
        "addVelocityMovement",
        "tracker",
        "event",
        "Landroid/view/MotionEvent;",
        "endFling",
        "onCancel",
        "onHandle",
        "sourceEvent",
        "onReset",
        "resetConfig",
        "startFling",
        "tryEndFling",
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
.field public static final Companion:Lcom/swmansion/gesturehandler/core/FlingGestureHandler$Companion;

.field private static final DEFAULT_ALIGNMENT_CONE:D = 30.0

.field private static final DEFAULT_DIRECTION:I = 0x1

.field private static final DEFAULT_MAX_DURATION_MS:J = 0x320L

.field private static final DEFAULT_MIN_VELOCITY:J = 0x7d0L

.field private static final DEFAULT_NUMBER_OF_TOUCHES_REQUIRED:I = 0x1

.field private static final MAX_AXIAL_DEVIATION:D

.field private static final MAX_DIAGONAL_DEVIATION:D


# instance fields
.field private direction:I

.field private final failDelayed:Ljava/lang/Runnable;

.field private handler:Landroid/os/Handler;

.field private final maxDurationMs:J

.field private maxNumberOfPointersSimultaneously:I

.field private final minVelocity:J

.field private numberOfPointersRequired:I

.field private velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public static synthetic $r8$lambda$nPR5Pysmjy6Cc4WQ__BRPzbht1o(Lcom/swmansion/gesturehandler/core/FlingGestureHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->failDelayed$lambda$0(Lcom/swmansion/gesturehandler/core/FlingGestureHandler;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/swmansion/gesturehandler/core/FlingGestureHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/gesturehandler/core/FlingGestureHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->Companion:Lcom/swmansion/gesturehandler/core/FlingGestureHandler$Companion;

    .line 137
    sget-object v0, Lcom/swmansion/gesturehandler/core/GestureUtils;->INSTANCE:Lcom/swmansion/gesturehandler/core/GestureUtils;

    const-wide/high16 v1, 0x403e000000000000L    # 30.0

    invoke-virtual {v0, v1, v2}, Lcom/swmansion/gesturehandler/core/GestureUtils;->coneToDeviation(D)D

    move-result-wide v0

    sput-wide v0, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->MAX_AXIAL_DEVIATION:D

    .line 139
    sget-object v0, Lcom/swmansion/gesturehandler/core/GestureUtils;->INSTANCE:Lcom/swmansion/gesturehandler/core/GestureUtils;

    const-wide/high16 v1, 0x404e000000000000L    # 60.0

    invoke-virtual {v0, v1, v2}, Lcom/swmansion/gesturehandler/core/GestureUtils;->coneToDeviation(D)D

    move-result-wide v0

    sput-wide v0, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->MAX_DIAGONAL_DEVIATION:D

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/core/GestureHandler;-><init>()V

    .line 9
    const/4 v0, 0x1

    iput v0, p0, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->numberOfPointersRequired:I

    .line 10
    iput v0, p0, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->direction:I

    .line 12
    const-wide/16 v0, 0x320

    iput-wide v0, p0, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->maxDurationMs:J

    .line 13
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->minVelocity:J

    .line 16
    new-instance v0, Lcom/swmansion/gesturehandler/core/FlingGestureHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/swmansion/gesturehandler/core/FlingGestureHandler$$ExternalSyntheticLambda0;-><init>(Lcom/swmansion/gesturehandler/core/FlingGestureHandler;)V

    iput-object v0, p0, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->failDelayed:Ljava/lang/Runnable;

    .line 8
    return-void
.end method

.method private final addVelocityMovement(Landroid/view/VelocityTracker;Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "tracker"    # Landroid/view/VelocityTracker;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 122
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 123
    .local v0, "offsetX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 124
    .local v1, "offsetY":F
    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 125
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 126
    neg-float v2, v0

    neg-float v3, v1

    invoke-virtual {p2, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 127
    return-void
.end method

.method private final endFling(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 85
    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->tryEndFling(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->fail()V

    .line 88
    :cond_0
    return-void
.end method

.method private static final failDelayed$lambda$0(Lcom/swmansion/gesturehandler/core/FlingGestureHandler;)V
    .locals 1
    .param p0, "this$0"    # Lcom/swmansion/gesturehandler/core/FlingGestureHandler;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->fail()V

    return-void
.end method

.method private final startFling(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 26
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->velocityTracker:Landroid/view/VelocityTracker;

    .line 27
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->begin()V

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->maxNumberOfPointersSimultaneously:I

    .line 29
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->handler:Landroid/os/Handler;

    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->handler:Landroid/os/Handler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 34
    :goto_0
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->handler:Landroid/os/Handler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->failDelayed:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->maxDurationMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    return-void
.end method

.method private final tryEndFling(Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 38
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->velocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->addVelocityMovement(Landroid/view/VelocityTracker;Landroid/view/MotionEvent;)V

    .line 40
    sget-object v1, Lcom/swmansion/gesturehandler/core/Vector;->Companion:Lcom/swmansion/gesturehandler/core/Vector$Companion;

    iget-object v3, v0, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lcom/swmansion/gesturehandler/core/Vector$Companion;->fromVelocity(Landroid/view/VelocityTracker;)Lcom/swmansion/gesturehandler/core/Vector;

    move-result-object v1

    .line 51
    .local v1, "velocityVector":Lcom/swmansion/gesturehandler/core/Vector;
    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Integer;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v4, v7

    .line 52
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v6

    .line 51
    nop

    .line 53
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    .line 51
    nop

    .line 54
    const/16 v8, 0x8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v4, v9

    .line 51
    nop

    .line 55
    nop

    .local v4, "$this$map$iv":[Ljava/lang/Object;
    const/4 v8, 0x0

    .line 143
    .local v8, "$i$f$map":I
    new-instance v10, Ljava/util/ArrayList;

    array-length v11, v4

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v10, Ljava/util/Collection;

    .local v10, "destination$iv$iv":Ljava/util/Collection;
    move-object v11, v4

    .local v11, "$this$mapTo$iv$iv":[Ljava/lang/Object;
    const/4 v12, 0x0

    .line 144
    .local v12, "$i$f$mapTo":I
    array-length v13, v11

    move v14, v7

    :goto_0
    if-ge v14, v13, :cond_0

    aget-object v15, v11, v14

    .line 145
    .local v15, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v16, v15

    check-cast v16, Ljava/lang/Number;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    move-result v9

    .local v9, "direction":I
    const/16 v16, 0x0

    .line 55
    .local v16, "$i$a$-map-FlingGestureHandler$tryEndFling$axialAlignmentsList$1":I
    sget-wide v5, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->MAX_AXIAL_DEVIATION:D

    invoke-static {v0, v1, v9, v5, v6}, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->tryEndFling$getVelocityAlignment(Lcom/swmansion/gesturehandler/core/FlingGestureHandler;Lcom/swmansion/gesturehandler/core/Vector;ID)Z

    move-result v5

    .end local v9    # "direction":I
    .end local v16    # "$i$a$-map-FlingGestureHandler$tryEndFling$axialAlignmentsList$1":I
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 145
    invoke-interface {v10, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 144
    .end local v15    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v9, 0x3

    goto :goto_0

    .line 146
    :cond_0
    nop

    .end local v10    # "destination$iv$iv":Ljava/util/Collection;
    .end local v11    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    .end local v12    # "$i$f$mapTo":I
    move-object v5, v10

    check-cast v5, Ljava/util/List;

    .line 143
    nop

    .line 55
    .end local v4    # "$this$map$iv":[Ljava/lang/Object;
    .end local v8    # "$i$f$map":I
    nop

    .line 50
    move-object v4, v5

    .line 58
    .local v4, "axialAlignmentsList":Ljava/util/List;
    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v7

    .line 59
    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    .line 58
    nop

    .line 60
    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x2

    aput-object v5, v3, v8

    .line 58
    nop

    .line 61
    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x3

    aput-object v5, v3, v8

    .line 58
    nop

    .line 62
    nop

    .local v3, "$this$map$iv":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 147
    .local v5, "$i$f$map":I
    new-instance v8, Ljava/util/ArrayList;

    array-length v9, v3

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v8, Ljava/util/Collection;

    .local v8, "destination$iv$iv":Ljava/util/Collection;
    move-object v9, v3

    .local v9, "$this$mapTo$iv$iv":[Ljava/lang/Object;
    const/4 v10, 0x0

    .line 148
    .local v10, "$i$f$mapTo":I
    array-length v11, v9

    move v12, v7

    :goto_1
    if-ge v12, v11, :cond_1

    aget-object v13, v9, v12

    .line 149
    .local v13, "item$iv$iv":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v14

    .local v14, "direction":I
    const/4 v15, 0x0

    .line 62
    .local v15, "$i$a$-map-FlingGestureHandler$tryEndFling$diagonalAlignmentsList$1":I
    sget-wide v6, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->MAX_DIAGONAL_DEVIATION:D

    invoke-static {v0, v1, v14, v6, v7}, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->tryEndFling$getVelocityAlignment(Lcom/swmansion/gesturehandler/core/FlingGestureHandler;Lcom/swmansion/gesturehandler/core/Vector;ID)Z

    move-result v6

    .end local v14    # "direction":I
    .end local v15    # "$i$a$-map-FlingGestureHandler$tryEndFling$diagonalAlignmentsList$1":I
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 149
    invoke-interface {v8, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 148
    .end local v13    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v12, v12, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto :goto_1

    .line 150
    :cond_1
    nop

    .end local v8    # "destination$iv$iv":Ljava/util/Collection;
    .end local v9    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    .end local v10    # "$i$f$mapTo":I
    move-object v6, v8

    check-cast v6, Ljava/util/List;

    .line 147
    nop

    .line 62
    .end local v3    # "$this$map$iv":[Ljava/lang/Object;
    .end local v5    # "$i$f$map":I
    nop

    .line 57
    move-object v3, v6

    .line 64
    .local v3, "diagonalAlignmentsList":Ljava/util/List;
    move-object v5, v4

    check-cast v5, Ljava/lang/Iterable;

    .local v5, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 151
    .local v6, "$i$f$any":I
    instance-of v7, v5, Ljava/util/Collection;

    if-eqz v7, :cond_2

    move-object v7, v5

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    .line 152
    :cond_2
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .local v9, "it":Z
    const/4 v10, 0x0

    .line 64
    .local v10, "$i$a$-any-FlingGestureHandler$tryEndFling$isAligned$1":I
    nop

    .line 152
    .end local v9    # "it":Z
    .end local v10    # "$i$a$-any-FlingGestureHandler$tryEndFling$isAligned$1":I
    if-eqz v9, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    .line 153
    .end local v8    # "element$iv":Ljava/lang/Object;
    :cond_4
    const/4 v5, 0x0

    .line 64
    .end local v5    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$any":I
    :goto_2
    move-object v6, v3

    check-cast v6, Ljava/lang/Iterable;

    .local v6, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 151
    .local v7, "$i$f$any":I
    instance-of v8, v6, Ljava/util/Collection;

    if-eqz v8, :cond_5

    move-object v8, v6

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v6, 0x0

    goto :goto_3

    .line 152
    :cond_5
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .local v10, "it":Z
    const/4 v11, 0x0

    .line 64
    .local v11, "$i$a$-any-FlingGestureHandler$tryEndFling$isAligned$2":I
    nop

    .line 152
    .end local v10    # "it":Z
    .end local v11    # "$i$a$-any-FlingGestureHandler$tryEndFling$isAligned$2":I
    if-eqz v10, :cond_6

    const/4 v6, 0x1

    goto :goto_3

    .line 153
    .end local v9    # "element$iv":Ljava/lang/Object;
    :cond_7
    const/4 v6, 0x0

    .line 64
    .end local v6    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$any":I
    :goto_3
    or-int/2addr v5, v6

    .line 65
    .local v5, "isAligned":Z
    invoke-virtual {v1}, Lcom/swmansion/gesturehandler/core/Vector;->getMagnitude()D

    move-result-wide v6

    iget-wide v8, v0, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->minVelocity:J

    long-to-double v8, v8

    cmpl-double v6, v6, v8

    if-lez v6, :cond_8

    const/4 v6, 0x1

    goto :goto_4

    :cond_8
    const/4 v6, 0x0

    .line 67
    .local v6, "isFast":Z
    :goto_4
    nop

    .line 68
    iget v7, v0, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->maxNumberOfPointersSimultaneously:I

    iget v8, v0, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->numberOfPointersRequired:I

    if-ne v7, v8, :cond_9

    .line 69
    if-eqz v5, :cond_9

    .line 70
    if-eqz v6, :cond_9

    .line 72
    iget-object v7, v0, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->handler:Landroid/os/Handler;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->activate()V

    .line 74
    const/4 v7, 0x1

    goto :goto_5

    .line 76
    :cond_9
    const/4 v7, 0x0

    .line 67
    :goto_5
    return v7
.end method

.method private static final tryEndFling$getVelocityAlignment(Lcom/swmansion/gesturehandler/core/FlingGestureHandler;Lcom/swmansion/gesturehandler/core/Vector;ID)Z
    .locals 1
    .param p0, "this$0"    # Lcom/swmansion/gesturehandler/core/FlingGestureHandler;
    .param p1, "velocityVector"    # Lcom/swmansion/gesturehandler/core/Vector;
    .param p2, "direction"    # I
    .param p3, "maxDeviationCosine"    # D

    .line 46
    iget v0, p0, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->direction:I

    and-int/2addr v0, p2

    if-ne v0, p2, :cond_0

    .line 47
    sget-object v0, Lcom/swmansion/gesturehandler/core/Vector;->Companion:Lcom/swmansion/gesturehandler/core/Vector$Companion;

    invoke-virtual {v0, p2}, Lcom/swmansion/gesturehandler/core/Vector$Companion;->fromDirection(I)Lcom/swmansion/gesturehandler/core/Vector;

    move-result-object v0

    invoke-virtual {p1, v0, p3, p4}, Lcom/swmansion/gesturehandler/core/Vector;->isSimilar(Lcom/swmansion/gesturehandler/core/Vector;D)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public activate(Z)V
    .locals 0
    .param p1, "force"    # Z

    .line 80
    invoke-super {p0, p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->activate(Z)V

    .line 81
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->end()V

    .line 82
    return-void
.end method

.method public final getDirection()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->direction:I

    return v0
.end method

.method public final getNumberOfPointersRequired()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->numberOfPointersRequired:I

    return v0
.end method

.method protected onCancel()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 113
    :cond_0
    return-void
.end method

.method protected onHandle(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "sourceEvent"    # Landroid/view/MotionEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0, p2}, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->shouldActivateWithMouse(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    return-void

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->getState()I

    move-result v0

    .line 96
    .local v0, "state":I
    if-nez v0, :cond_1

    .line 97
    invoke-direct {p0, p2}, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->startFling(Landroid/view/MotionEvent;)V

    .line 99
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 100
    invoke-direct {p0, p2}, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->tryEndFling(Landroid/view/MotionEvent;)Z

    .line 101
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    iget v2, p0, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->maxNumberOfPointersSimultaneously:I

    if-le v1, v2, :cond_2

    .line 102
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    iput v1, p0, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->maxNumberOfPointersSimultaneously:I

    .line 104
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 105
    .local v1, "action":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 106
    invoke-direct {p0, p2}, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->endFling(Landroid/view/MotionEvent;)V

    .line 109
    .end local v1    # "action":I
    :cond_3
    return-void
.end method

.method protected onReset()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 117
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->velocityTracker:Landroid/view/VelocityTracker;

    .line 118
    iget-object v1, p0, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 119
    :cond_1
    return-void
.end method

.method public resetConfig()V
    .locals 1

    .line 20
    invoke-super {p0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->resetConfig()V

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->numberOfPointersRequired:I

    .line 22
    iput v0, p0, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->direction:I

    .line 23
    return-void
.end method

.method public final setDirection(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 10
    iput p1, p0, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->direction:I

    return-void
.end method

.method public final setNumberOfPointersRequired(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 9
    iput p1, p0, Lcom/swmansion/gesturehandler/core/FlingGestureHandler;->numberOfPointersRequired:I

    return-void
.end method
