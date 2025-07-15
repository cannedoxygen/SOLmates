.class public final Lcom/facebook/react/animated/FrameBasedAnimationDriver;
.super Lcom/facebook/react/animated/AnimationDriver;
.source "FrameBasedAnimationDriver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/animated/FrameBasedAnimationDriver$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFrameBasedAnimationDriver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FrameBasedAnimationDriver.kt\ncom/facebook/react/animated/FrameBasedAnimationDriver\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,105:1\n1#2:106\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0013\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u000eH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/facebook/react/animated/FrameBasedAnimationDriver;",
        "Lcom/facebook/react/animated/AnimationDriver;",
        "config",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "(Lcom/facebook/react/bridge/ReadableMap;)V",
        "currentLoop",
        "",
        "frames",
        "",
        "fromValue",
        "",
        "iterations",
        "logCount",
        "startFrameTimeNanos",
        "",
        "toValue",
        "resetConfig",
        "",
        "runAnimationStep",
        "frameTimeNanos",
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
.field public static final Companion:Lcom/facebook/react/animated/FrameBasedAnimationDriver$Companion;

.field private static final FRAME_TIME_MILLIS:D = 16.666666666666668


# instance fields
.field private currentLoop:I

.field private frames:[D

.field private fromValue:D

.field private iterations:I

.field private logCount:I

.field private startFrameTimeNanos:J

.field private toValue:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/react/animated/FrameBasedAnimationDriver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/react/animated/FrameBasedAnimationDriver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/react/animated/FrameBasedAnimationDriver;->Companion:Lcom/facebook/react/animated/FrameBasedAnimationDriver$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 2
    .param p1, "config"    # Lcom/facebook/react/bridge/ReadableMap;

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Lcom/facebook/react/animated/AnimationDriver;-><init>()V

    .line 22
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/react/animated/FrameBasedAnimationDriver;->startFrameTimeNanos:J

    .line 23
    const/4 v0, 0x0

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/facebook/react/animated/FrameBasedAnimationDriver;->frames:[D

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/react/animated/FrameBasedAnimationDriver;->iterations:I

    .line 27
    iput v0, p0, Lcom/facebook/react/animated/FrameBasedAnimationDriver;->currentLoop:I

    .line 30
    nop

    .line 31
    invoke-virtual {p0, p1}, Lcom/facebook/react/animated/FrameBasedAnimationDriver;->resetConfig(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 32
    nop

    .line 21
    return-void
.end method


# virtual methods
.method public resetConfig(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 7
    .param p1, "config"    # Lcom/facebook/react/bridge/ReadableMap;

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    const-string v0, "frames"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    .line 36
    .local v0, "framesConfig":Lcom/facebook/react/bridge/ReadableArray;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 37
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    .line 38
    .local v2, "numberOfFrames":I
    iget-object v3, p0, Lcom/facebook/react/animated/FrameBasedAnimationDriver;->frames:[D

    array-length v3, v3

    if-eq v3, v2, :cond_1

    .line 39
    new-array v3, v2, [D

    move v4, v1

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v5

    aput-wide v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iput-object v3, p0, Lcom/facebook/react/animated/FrameBasedAnimationDriver;->frames:[D

    .line 42
    .end local v2    # "numberOfFrames":I
    :cond_1
    nop

    .line 43
    const-string/jumbo v2, "toValue"

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v3

    sget-object v4, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    if-ne v3, v4, :cond_2

    .line 44
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    goto :goto_1

    .line 45
    :cond_2
    const-wide/16 v2, 0x0

    .line 42
    :goto_1
    iput-wide v2, p0, Lcom/facebook/react/animated/FrameBasedAnimationDriver;->toValue:D

    .line 46
    nop

    .line 47
    const-string v2, "iterations"

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v3

    sget-object v5, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    if-ne v3, v5, :cond_3

    .line 48
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    .line 49
    :cond_3
    move v2, v4

    .line 46
    :goto_2
    iput v2, p0, Lcom/facebook/react/animated/FrameBasedAnimationDriver;->iterations:I

    .line 50
    iput v4, p0, Lcom/facebook/react/animated/FrameBasedAnimationDriver;->currentLoop:I

    .line 51
    iget v2, p0, Lcom/facebook/react/animated/FrameBasedAnimationDriver;->iterations:I

    if-nez v2, :cond_4

    move v1, v4

    :cond_4
    iput-boolean v1, p0, Lcom/facebook/react/animated/FrameBasedAnimationDriver;->hasFinished:Z

    .line 52
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/facebook/react/animated/FrameBasedAnimationDriver;->startFrameTimeNanos:J

    .line 53
    return-void
.end method

.method public runAnimationStep(J)V
    .locals 19
    .param p1, "frameTimeNanos"    # J

    .line 56
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Lcom/facebook/react/animated/FrameBasedAnimationDriver;->animatedValue:Lcom/facebook/react/animated/ValueAnimatedNode;

    if-eqz v3, :cond_8

    .line 57
    .local v3, "animatedValue":Lcom/facebook/react/animated/ValueAnimatedNode;
    iget-wide v4, v0, Lcom/facebook/react/animated/FrameBasedAnimationDriver;->startFrameTimeNanos:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, 0x1

    if-gez v4, :cond_0

    .line 58
    iput-wide v1, v0, Lcom/facebook/react/animated/FrameBasedAnimationDriver;->startFrameTimeNanos:J

    .line 59
    iget v4, v0, Lcom/facebook/react/animated/FrameBasedAnimationDriver;->currentLoop:I

    if-ne v4, v5, :cond_0

    .line 61
    iget-wide v6, v3, Lcom/facebook/react/animated/ValueAnimatedNode;->nodeValue:D

    iput-wide v6, v0, Lcom/facebook/react/animated/FrameBasedAnimationDriver;->fromValue:D

    .line 64
    :cond_0
    iget-wide v6, v0, Lcom/facebook/react/animated/FrameBasedAnimationDriver;->startFrameTimeNanos:J

    sub-long v6, v1, v6

    const v4, 0xf4240

    int-to-long v8, v4

    div-long/2addr v6, v8

    .line 65
    .local v6, "timeFromStartMillis":J
    long-to-double v8, v6

    const-wide v10, 0x4030aaaaaaaaaaabL    # 16.666666666666668

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v4, v8

    .line 66
    .local v4, "frameIndex":I
    if-gez v4, :cond_3

    .line 69
    nop

    .line 71
    iget-wide v8, v0, Lcom/facebook/react/animated/FrameBasedAnimationDriver;->startFrameTimeNanos:J

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Calculated frame index should never be lower than 0. Called with frameTimeNanos "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " and mStartFrameTimeNanos "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 68
    nop

    .line 67
    nop

    .line 72
    .local v8, "message":Ljava/lang/String;
    sget-boolean v9, Lcom/facebook/react/common/build/ReactBuildConfig;->DEBUG:Z

    if-nez v9, :cond_2

    .line 73
    iget v9, v0, Lcom/facebook/react/animated/FrameBasedAnimationDriver;->logCount:I

    const/16 v10, 0x64

    if-ge v9, v10, :cond_1

    .line 74
    const-string v9, "ReactNative"

    invoke-static {v9, v8}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget v9, v0, Lcom/facebook/react/animated/FrameBasedAnimationDriver;->logCount:I

    add-int/2addr v9, v5

    iput v9, v0, Lcom/facebook/react/animated/FrameBasedAnimationDriver;->logCount:I

    .line 77
    :cond_1
    return-void

    .line 106
    :cond_2
    const/4 v5, 0x0

    .line 72
    .local v5, "$i$a$-check-FrameBasedAnimationDriver$runAnimationStep$1":I
    nop

    .end local v5    # "$i$a$-check-FrameBasedAnimationDriver$runAnimationStep$1":I
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 78
    .end local v8    # "message":Ljava/lang/String;
    :cond_3
    iget-boolean v8, v0, Lcom/facebook/react/animated/FrameBasedAnimationDriver;->hasFinished:Z

    if-eqz v8, :cond_4

    .line 80
    return-void

    .line 82
    :cond_4
    const-wide/16 v8, 0x0

    .line 83
    .local v8, "nextValue":D
    iget-object v10, v0, Lcom/facebook/react/animated/FrameBasedAnimationDriver;->frames:[D

    array-length v10, v10

    sub-int/2addr v10, v5

    if-lt v4, v10, :cond_7

    .line 84
    iget v10, v0, Lcom/facebook/react/animated/FrameBasedAnimationDriver;->iterations:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_6

    iget v10, v0, Lcom/facebook/react/animated/FrameBasedAnimationDriver;->currentLoop:I

    iget v11, v0, Lcom/facebook/react/animated/FrameBasedAnimationDriver;->iterations:I

    if-ge v10, v11, :cond_5

    goto :goto_0

    .line 91
    :cond_5
    iget-wide v8, v0, Lcom/facebook/react/animated/FrameBasedAnimationDriver;->toValue:D

    .line 92
    iput-boolean v5, v0, Lcom/facebook/react/animated/FrameBasedAnimationDriver;->hasFinished:Z

    move-wide v15, v6

    goto :goto_1

    .line 86
    :cond_6
    :goto_0
    iget-wide v10, v0, Lcom/facebook/react/animated/FrameBasedAnimationDriver;->fromValue:D

    iget-object v12, v0, Lcom/facebook/react/animated/FrameBasedAnimationDriver;->frames:[D

    iget-object v13, v0, Lcom/facebook/react/animated/FrameBasedAnimationDriver;->frames:[D

    array-length v13, v13

    sub-int/2addr v13, v5

    aget-wide v13, v12, v13

    move-wide v15, v6

    .end local v6    # "timeFromStartMillis":J
    .local v15, "timeFromStartMillis":J
    iget-wide v5, v0, Lcom/facebook/react/animated/FrameBasedAnimationDriver;->toValue:D

    move-wide/from16 v17, v8

    .end local v8    # "nextValue":D
    .local v17, "nextValue":D
    iget-wide v7, v0, Lcom/facebook/react/animated/FrameBasedAnimationDriver;->fromValue:D

    sub-double/2addr v5, v7

    mul-double/2addr v13, v5

    add-double v5, v10, v13

    .line 87
    .end local v17    # "nextValue":D
    .local v5, "nextValue":D
    const-wide/16 v7, -0x1

    iput-wide v7, v0, Lcom/facebook/react/animated/FrameBasedAnimationDriver;->startFrameTimeNanos:J

    .line 88
    iget v7, v0, Lcom/facebook/react/animated/FrameBasedAnimationDriver;->currentLoop:I

    const/4 v8, 0x1

    add-int/2addr v7, v8

    iput v7, v0, Lcom/facebook/react/animated/FrameBasedAnimationDriver;->currentLoop:I

    move-wide v8, v5

    goto :goto_1

    .line 95
    .end local v5    # "nextValue":D
    .end local v15    # "timeFromStartMillis":J
    .restart local v6    # "timeFromStartMillis":J
    .restart local v8    # "nextValue":D
    :cond_7
    move-wide v15, v6

    move-wide/from16 v17, v8

    .end local v6    # "timeFromStartMillis":J
    .end local v8    # "nextValue":D
    .restart local v15    # "timeFromStartMillis":J
    .restart local v17    # "nextValue":D
    iget-wide v5, v0, Lcom/facebook/react/animated/FrameBasedAnimationDriver;->fromValue:D

    iget-object v7, v0, Lcom/facebook/react/animated/FrameBasedAnimationDriver;->frames:[D

    aget-wide v8, v7, v4

    iget-wide v10, v0, Lcom/facebook/react/animated/FrameBasedAnimationDriver;->toValue:D

    iget-wide v12, v0, Lcom/facebook/react/animated/FrameBasedAnimationDriver;->fromValue:D

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    add-double/2addr v8, v5

    .line 97
    .end local v17    # "nextValue":D
    .restart local v8    # "nextValue":D
    :goto_1
    iput-wide v8, v3, Lcom/facebook/react/animated/ValueAnimatedNode;->nodeValue:D

    .line 98
    return-void

    .line 106
    .end local v3    # "animatedValue":Lcom/facebook/react/animated/ValueAnimatedNode;
    .end local v4    # "frameIndex":I
    .end local v8    # "nextValue":D
    .end local v15    # "timeFromStartMillis":J
    :cond_8
    const/4 v3, 0x0

    .line 56
    .local v3, "$i$a$-requireNotNull-FrameBasedAnimationDriver$runAnimationStep$animatedValue$1":I
    nop

    .end local v3    # "$i$a$-requireNotNull-FrameBasedAnimationDriver$runAnimationStep$animatedValue$1":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Animated value should not be null"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
