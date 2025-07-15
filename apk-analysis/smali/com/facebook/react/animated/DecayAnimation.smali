.class public final Lcom/facebook/react/animated/DecayAnimation;
.super Lcom/facebook/react/animated/AnimationDriver;
.source "DecayAnimation.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDecayAnimation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DecayAnimation.kt\ncom/facebook/react/animated/DecayAnimation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,74:1\n1#2:75\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\rH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/facebook/react/animated/DecayAnimation;",
        "Lcom/facebook/react/animated/AnimationDriver;",
        "config",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "(Lcom/facebook/react/bridge/ReadableMap;)V",
        "currentLoop",
        "",
        "deceleration",
        "",
        "fromValue",
        "iterations",
        "lastValue",
        "startFrameTimeMillis",
        "",
        "velocity",
        "resetConfig",
        "",
        "runAnimationStep",
        "frameTimeNanos",
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


# instance fields
.field private currentLoop:I

.field private deceleration:D

.field private fromValue:D

.field private iterations:I

.field private lastValue:D

.field private startFrameTimeMillis:J

.field private velocity:D


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 2
    .param p1, "config"    # Lcom/facebook/react/bridge/ReadableMap;

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Lcom/facebook/react/animated/AnimationDriver;-><init>()V

    .line 21
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/react/animated/DecayAnimation;->startFrameTimeMillis:J

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/react/animated/DecayAnimation;->iterations:I

    .line 25
    iput v0, p0, Lcom/facebook/react/animated/DecayAnimation;->currentLoop:I

    .line 27
    nop

    .line 28
    invoke-virtual {p0, p1}, Lcom/facebook/react/animated/DecayAnimation;->resetConfig(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 29
    nop

    .line 18
    return-void
.end method


# virtual methods
.method public resetConfig(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 3
    .param p1, "config"    # Lcom/facebook/react/bridge/ReadableMap;

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    const-string/jumbo v0, "velocity"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/react/animated/DecayAnimation;->velocity:D

    .line 33
    const-string v0, "deceleration"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/react/animated/DecayAnimation;->deceleration:D

    .line 34
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/react/animated/DecayAnimation;->startFrameTimeMillis:J

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/react/animated/DecayAnimation;->fromValue:D

    .line 36
    iput-wide v0, p0, Lcom/facebook/react/animated/DecayAnimation;->lastValue:D

    .line 37
    const-string v0, "iterations"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput v0, p0, Lcom/facebook/react/animated/DecayAnimation;->iterations:I

    .line 38
    iput v2, p0, Lcom/facebook/react/animated/DecayAnimation;->currentLoop:I

    .line 39
    iget v0, p0, Lcom/facebook/react/animated/DecayAnimation;->iterations:I

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/facebook/react/animated/DecayAnimation;->hasFinished:Z

    .line 40
    return-void
.end method

.method public runAnimationStep(J)V
    .locals 16
    .param p1, "frameTimeNanos"    # J

    .line 43
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/react/animated/DecayAnimation;->animatedValue:Lcom/facebook/react/animated/ValueAnimatedNode;

    if-eqz v1, :cond_6

    .line 44
    .local v1, "animatedValue":Lcom/facebook/react/animated/ValueAnimatedNode;
    const v2, 0xf4240

    int-to-long v2, v2

    div-long v2, p1, v2

    .line 45
    .local v2, "frameTimeMillis":J
    iget-wide v4, v0, Lcom/facebook/react/animated/DecayAnimation;->startFrameTimeMillis:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    const/4 v5, 0x1

    if-nez v4, :cond_2

    .line 47
    const/16 v4, 0x10

    int-to-long v8, v4

    sub-long v8, v2, v8

    iput-wide v8, v0, Lcom/facebook/react/animated/DecayAnimation;->startFrameTimeMillis:J

    .line 48
    iget-wide v8, v0, Lcom/facebook/react/animated/DecayAnimation;->fromValue:D

    iget-wide v10, v0, Lcom/facebook/react/animated/DecayAnimation;->lastValue:D

    cmpg-double v4, v8, v10

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    .line 49
    iget-wide v8, v1, Lcom/facebook/react/animated/ValueAnimatedNode;->nodeValue:D

    iput-wide v8, v0, Lcom/facebook/react/animated/DecayAnimation;->fromValue:D

    goto :goto_1

    .line 51
    :cond_1
    iget-wide v8, v0, Lcom/facebook/react/animated/DecayAnimation;->fromValue:D

    iput-wide v8, v1, Lcom/facebook/react/animated/ValueAnimatedNode;->nodeValue:D

    .line 53
    :goto_1
    iget-wide v8, v1, Lcom/facebook/react/animated/ValueAnimatedNode;->nodeValue:D

    iput-wide v8, v0, Lcom/facebook/react/animated/DecayAnimation;->lastValue:D

    .line 56
    :cond_2
    iget-wide v8, v0, Lcom/facebook/react/animated/DecayAnimation;->fromValue:D

    .line 57
    iget-wide v10, v0, Lcom/facebook/react/animated/DecayAnimation;->velocity:D

    int-to-double v12, v5

    iget-wide v14, v0, Lcom/facebook/react/animated/DecayAnimation;->deceleration:D

    sub-double v14, v12, v14

    div-double/2addr v10, v14

    .line 58
    iget-wide v14, v0, Lcom/facebook/react/animated/DecayAnimation;->deceleration:D

    sub-double v14, v12, v14

    neg-double v14, v14

    iget-wide v6, v0, Lcom/facebook/react/animated/DecayAnimation;->startFrameTimeMillis:J

    sub-long v6, v2, v6

    long-to-double v6, v6

    mul-double/2addr v14, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    sub-double/2addr v12, v6

    .line 57
    mul-double/2addr v10, v12

    .line 56
    add-double/2addr v8, v10

    .line 55
    move-wide v6, v8

    .line 59
    .local v6, "value":D
    iget-wide v8, v0, Lcom/facebook/react/animated/DecayAnimation;->lastValue:D

    sub-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3fb999999999999aL    # 0.1

    cmpg-double v4, v8, v10

    if-gez v4, :cond_5

    .line 60
    iget v4, v0, Lcom/facebook/react/animated/DecayAnimation;->iterations:I

    const/4 v8, -0x1

    if-eq v4, v8, :cond_4

    iget v4, v0, Lcom/facebook/react/animated/DecayAnimation;->currentLoop:I

    iget v8, v0, Lcom/facebook/react/animated/DecayAnimation;->iterations:I

    if-ge v4, v8, :cond_3

    goto :goto_2

    .line 66
    :cond_3
    iput-boolean v5, v0, Lcom/facebook/react/animated/DecayAnimation;->hasFinished:Z

    .line 67
    return-void

    .line 63
    :cond_4
    :goto_2
    const-wide/16 v8, -0x1

    iput-wide v8, v0, Lcom/facebook/react/animated/DecayAnimation;->startFrameTimeMillis:J

    .line 64
    iget v4, v0, Lcom/facebook/react/animated/DecayAnimation;->currentLoop:I

    add-int/2addr v4, v5

    iput v4, v0, Lcom/facebook/react/animated/DecayAnimation;->currentLoop:I

    .line 70
    :cond_5
    iput-wide v6, v0, Lcom/facebook/react/animated/DecayAnimation;->lastValue:D

    .line 71
    iput-wide v6, v1, Lcom/facebook/react/animated/ValueAnimatedNode;->nodeValue:D

    .line 72
    return-void

    .line 75
    .end local v1    # "animatedValue":Lcom/facebook/react/animated/ValueAnimatedNode;
    .end local v2    # "frameTimeMillis":J
    .end local v6    # "value":D
    :cond_6
    const/4 v1, 0x0

    .line 43
    .local v1, "$i$a$-requireNotNull-DecayAnimation$runAnimationStep$animatedValue$1":I
    nop

    .end local v1    # "$i$a$-requireNotNull-DecayAnimation$runAnimationStep$animatedValue$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Animated value should not be null"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
