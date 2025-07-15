.class public final Lcom/swmansion/gesturehandler/core/StylusData$Companion;
.super Ljava/lang/Object;
.source "StylusData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/gesturehandler/core/StylusData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J$\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0002\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/swmansion/gesturehandler/core/StylusData$Companion;",
        "",
        "()V",
        "fromEvent",
        "Lcom/swmansion/gesturehandler/core/StylusData;",
        "event",
        "Landroid/view/MotionEvent;",
        "spherical2tilt",
        "Lkotlin/Pair;",
        "",
        "altitudeAngle",
        "azimuthAngle",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/swmansion/gesturehandler/core/StylusData$Companion;-><init>()V

    return-void
.end method

.method private final spherical2tilt(DD)Lkotlin/Pair;
    .locals 19
    .param p1, "altitudeAngle"    # D
    .param p3, "azimuthAngle"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD)",
            "Lkotlin/Pair<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 38
    const-wide v0, 0x3e112e0be826d695L    # 1.0E-9

    .line 39
    .local v0, "eps":D
    const-wide v2, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    .line 41
    .local v2, "radToDeg":D
    const-wide/16 v4, 0x0

    .line 42
    .local v4, "tiltXrad":D
    const-wide/16 v6, 0x0

    .line 44
    .local v6, "tiltYrad":D
    cmpg-double v8, p1, v0

    if-gez v8, :cond_8

    .line 46
    cmpg-double v8, p3, v0

    const-wide v9, 0x401921fb54442d18L    # 6.283185307179586

    if-ltz v8, :cond_0

    sub-double v11, p3, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    cmpg-double v8, v11, v0

    if-gez v8, :cond_1

    .line 48
    :cond_0
    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 50
    :cond_1
    const-wide v11, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v13, p3, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    cmpg-double v8, v13, v0

    if-gez v8, :cond_2

    .line 52
    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 54
    :cond_2
    const-wide v13, 0x400921fb54442d18L    # Math.PI

    sub-double v15, p3, v13

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    cmpg-double v8, v15, v0

    if-gez v8, :cond_3

    .line 56
    const-wide v4, -0x4006de04abbbd2e8L    # -1.5707963267948966

    .line 58
    :cond_3
    const-wide v15, 0x4012d97c7f3321d2L    # 4.71238898038469

    sub-double v17, p3, v15

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->abs(D)D

    move-result-wide v17

    cmpg-double v8, v17, v0

    if-gez v8, :cond_4

    .line 60
    const-wide v6, -0x4006de04abbbd2e8L    # -1.5707963267948966

    .line 62
    :cond_4
    cmpl-double v8, p3, v0

    if-lez v8, :cond_5

    sub-double v17, p3, v11

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->abs(D)D

    move-result-wide v17

    cmpg-double v8, v17, v0

    if-gez v8, :cond_5

    .line 63
    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 64
    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 66
    :cond_5
    sub-double v11, p3, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    cmpl-double v8, v11, v0

    if-lez v8, :cond_6

    sub-double v11, p3, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    cmpg-double v8, v11, v0

    if-gez v8, :cond_6

    .line 67
    const-wide v4, -0x4006de04abbbd2e8L    # -1.5707963267948966

    .line 68
    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 70
    :cond_6
    sub-double v11, p3, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    cmpl-double v8, v11, v0

    if-lez v8, :cond_7

    sub-double v11, p3, v15

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    cmpg-double v8, v11, v0

    if-gez v8, :cond_7

    .line 71
    const-wide v4, -0x4006de04abbbd2e8L    # -1.5707963267948966

    .line 72
    const-wide v6, -0x4006de04abbbd2e8L    # -1.5707963267948966

    .line 74
    :cond_7
    sub-double v11, p3, v15

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    cmpl-double v8, v11, v0

    if-lez v8, :cond_9

    sub-double v8, p3, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpg-double v8, v8, v0

    if-gez v8, :cond_9

    .line 75
    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 76
    const-wide v6, -0x4006de04abbbd2e8L    # -1.5707963267948966

    goto :goto_0

    .line 79
    :cond_8
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    .line 81
    .local v8, "tanAlt":D
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    div-double/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    .line 82
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    div-double/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    .line 85
    .end local v8    # "tanAlt":D
    :cond_9
    :goto_0
    mul-double v8, v4, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->rint(D)D

    move-result-wide v8

    .line 86
    .local v8, "tiltX":D
    mul-double v10, v6, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->rint(D)D

    move-result-wide v10

    .line 88
    .local v10, "tiltY":D
    new-instance v12, Lkotlin/Pair;

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v12
.end method


# virtual methods
.method public final fromEvent(Landroid/view/MotionEvent;)Lcom/swmansion/gesturehandler/core/StylusData;
    .locals 22
    .param p1, "event"    # Landroid/view/MotionEvent;

    move-object/from16 v0, p1

    const-string v1, "event"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v1, v3, v1

    .line 94
    .local v1, "altitudeAngle":D
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v6

    float-to-double v14, v6

    .line 95
    .local v14, "pressure":D
    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getOrientation(I)F

    move-result v6

    float-to-double v12, v6

    .line 97
    .local v12, "orientation":D
    add-double/2addr v3, v12

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    rem-double/2addr v3, v6

    const-wide/16 v8, 0x0

    cmpg-double v8, v3, v8

    const/4 v9, 0x1

    if-nez v8, :cond_0

    move v8, v9

    goto :goto_0

    :cond_0
    move v8, v5

    :goto_0
    if-nez v8, :cond_2

    invoke-static {v3, v4}, Ljava/lang/Math;->signum(D)D

    move-result-wide v10

    invoke-static {v6, v7}, Ljava/lang/Math;->signum(D)D

    move-result-wide v16

    cmpg-double v8, v10, v16

    if-nez v8, :cond_1

    move v5, v9

    :cond_1
    if-nez v5, :cond_2

    add-double/2addr v3, v6

    .line 98
    .local v3, "azimuthAngle":D
    :cond_2
    move-object/from16 v10, p0

    invoke-direct {v10, v1, v2, v3, v4}, Lcom/swmansion/gesturehandler/core/StylusData$Companion;->spherical2tilt(DD)Lkotlin/Pair;

    move-result-object v16

    .line 100
    .local v16, "tilts":Lkotlin/Pair;
    new-instance v17, Lcom/swmansion/gesturehandler/core/StylusData;

    invoke-virtual/range {v16 .. v16}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-virtual/range {v16 .. v16}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    move-object/from16 v5, v17

    move-wide v10, v1

    move-wide/from16 v18, v12

    .end local v12    # "orientation":D
    .local v18, "orientation":D
    move-wide v12, v3

    move-wide/from16 v20, v14

    .end local v14    # "pressure":D
    .local v20, "pressure":D
    invoke-direct/range {v5 .. v15}, Lcom/swmansion/gesturehandler/core/StylusData;-><init>(DDDDD)V

    return-object v17
.end method
