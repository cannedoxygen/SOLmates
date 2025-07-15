.class public final Lcom/facebook/react/animated/SpringAnimation;
.super Lcom/facebook/react/animated/AnimationDriver;
.source "SpringAnimation.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/animated/SpringAnimation$Companion;,
        Lcom/facebook/react/animated/SpringAnimation$PhysicsState;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSpringAnimation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SpringAnimation.kt\ncom/facebook/react/animated/SpringAnimation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,188:1\n1#2:189\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\t\u0008\u0000\u0018\u0000 %2\u00020\u0001:\u0002%&B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\nH\u0002J\u0010\u0010 \u001a\u00020\n2\u0006\u0010!\u001a\u00020\u0008H\u0002J\u0010\u0010\"\u001a\u00020\u001e2\u0006\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010#\u001a\u00020\u001e2\u0006\u0010$\u001a\u00020\u0013H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u00020\u000e8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u000e8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u000fR\u000e\u0010\u0011\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/facebook/react/animated/SpringAnimation;",
        "Lcom/facebook/react/animated/AnimationDriver;",
        "config",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "(Lcom/facebook/react/bridge/ReadableMap;)V",
        "currentLoop",
        "",
        "currentState",
        "Lcom/facebook/react/animated/SpringAnimation$PhysicsState;",
        "displacementFromRestThreshold",
        "",
        "endValue",
        "initialVelocity",
        "isAtRest",
        "",
        "()Z",
        "isOvershooting",
        "iterations",
        "lastTime",
        "",
        "originalValue",
        "overshootClampingEnabled",
        "restSpeedThreshold",
        "springDamping",
        "springMass",
        "springStarted",
        "springStiffness",
        "startValue",
        "timeAccumulator",
        "advance",
        "",
        "realDeltaTime",
        "getDisplacementDistanceForState",
        "state",
        "resetConfig",
        "runAnimationStep",
        "frameTimeNanos",
        "Companion",
        "PhysicsState",
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
.field public static final Companion:Lcom/facebook/react/animated/SpringAnimation$Companion;

.field private static final MAX_DELTA_TIME_SEC:D = 0.064


# instance fields
.field private currentLoop:I

.field private final currentState:Lcom/facebook/react/animated/SpringAnimation$PhysicsState;

.field private displacementFromRestThreshold:D

.field private endValue:D

.field private initialVelocity:D

.field private iterations:I

.field private lastTime:J

.field private originalValue:D

.field private overshootClampingEnabled:Z

.field private restSpeedThreshold:D

.field private springDamping:D

.field private springMass:D

.field private springStarted:Z

.field private springStiffness:D

.field private startValue:D

.field private timeAccumulator:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/react/animated/SpringAnimation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/react/animated/SpringAnimation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/react/animated/SpringAnimation;->Companion:Lcom/facebook/react/animated/SpringAnimation$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 8
    .param p1, "config"    # Lcom/facebook/react/bridge/ReadableMap;

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Lcom/facebook/react/animated/AnimationDriver;-><init>()V

    .line 31
    new-instance v0, Lcom/facebook/react/animated/SpringAnimation$PhysicsState;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/facebook/react/animated/SpringAnimation$PhysicsState;-><init>(DDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/facebook/react/animated/SpringAnimation;->currentState:Lcom/facebook/react/animated/SpringAnimation$PhysicsState;

    .line 43
    nop

    .line 44
    iget-object v0, p0, Lcom/facebook/react/animated/SpringAnimation;->currentState:Lcom/facebook/react/animated/SpringAnimation$PhysicsState;

    const-string v1, "initialVelocity"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/animated/SpringAnimation$PhysicsState;->setVelocity(D)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/facebook/react/animated/SpringAnimation;->resetConfig(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 46
    nop

    .line 18
    return-void
.end method

.method private final advance(D)V
    .locals 35
    .param p1, "realDeltaTime"    # D

    .line 120
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/facebook/react/animated/SpringAnimation;->isAtRest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    return-void

    .line 126
    :cond_0
    move-wide/from16 v1, p1

    .line 127
    .local v1, "adjustedDeltaTime":D
    const-wide v3, 0x3fb0624dd2f1a9fcL    # 0.064

    cmpl-double v3, p1, v3

    if-lez v3, :cond_1

    .line 128
    const-wide v1, 0x3fb0624dd2f1a9fcL    # 0.064

    .line 130
    :cond_1
    iget-wide v3, v0, Lcom/facebook/react/animated/SpringAnimation;->timeAccumulator:D

    add-double/2addr v3, v1

    iput-wide v3, v0, Lcom/facebook/react/animated/SpringAnimation;->timeAccumulator:D

    .line 131
    iget-wide v3, v0, Lcom/facebook/react/animated/SpringAnimation;->springDamping:D

    .line 132
    .local v3, "c":D
    iget-wide v5, v0, Lcom/facebook/react/animated/SpringAnimation;->springMass:D

    .line 133
    .local v5, "m":D
    iget-wide v7, v0, Lcom/facebook/react/animated/SpringAnimation;->springStiffness:D

    .line 134
    .local v7, "k":D
    iget-wide v9, v0, Lcom/facebook/react/animated/SpringAnimation;->initialVelocity:D

    neg-double v9, v9

    .line 135
    .local v9, "v0":D
    const/4 v11, 0x2

    int-to-double v11, v11

    mul-double v13, v7, v5

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    div-double v11, v3, v11

    .line 136
    .local v11, "zeta":D
    div-double v13, v7, v5

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    .line 137
    .local v13, "omega0":D
    mul-double v15, v11, v11

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    sub-double v15, v17, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v15

    mul-double/2addr v15, v13

    .line 138
    .local v15, "omega1":D
    move-wide/from16 v19, v1

    .end local v1    # "adjustedDeltaTime":D
    .local v19, "adjustedDeltaTime":D
    iget-wide v1, v0, Lcom/facebook/react/animated/SpringAnimation;->endValue:D

    move-wide/from16 v21, v3

    .end local v3    # "c":D
    .local v21, "c":D
    iget-wide v3, v0, Lcom/facebook/react/animated/SpringAnimation;->startValue:D

    sub-double/2addr v1, v3

    .line 139
    .local v1, "x0":D
    const-wide/16 v3, 0x0

    .line 140
    .local v3, "velocity":D
    const-wide/16 v23, 0x0

    .line 141
    .local v23, "position":D
    move-wide/from16 v25, v3

    .end local v3    # "velocity":D
    .local v25, "velocity":D
    iget-wide v3, v0, Lcom/facebook/react/animated/SpringAnimation;->timeAccumulator:D

    .line 142
    .local v3, "t":D
    cmpg-double v17, v11, v17

    if-gez v17, :cond_2

    .line 144
    move-wide/from16 v17, v5

    .end local v5    # "m":D
    .local v17, "m":D
    neg-double v5, v11

    mul-double/2addr v5, v13

    mul-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->exp(D)D

    move-result-wide v5

    .line 146
    .local v5, "envelope":D
    move-wide/from16 v27, v7

    .end local v7    # "k":D
    .local v27, "k":D
    iget-wide v7, v0, Lcom/facebook/react/animated/SpringAnimation;->endValue:D

    .line 147
    nop

    .line 148
    mul-double v29, v11, v13

    mul-double v29, v29, v1

    add-double v29, v9, v29

    div-double v29, v29, v15

    mul-double v31, v15, v3

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->sin(D)D

    move-result-wide v31

    mul-double v29, v29, v31

    mul-double v31, v15, v3

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->cos(D)D

    move-result-wide v31

    mul-double v31, v31, v1

    add-double v29, v29, v31

    .line 147
    mul-double v29, v29, v5

    .line 146
    sub-double v7, v7, v29

    .line 145
    nop

    .line 152
    .end local v23    # "position":D
    .local v7, "position":D
    nop

    .line 153
    nop

    .line 152
    mul-double v23, v11, v13

    .line 154
    nop

    .line 152
    mul-double v23, v23, v5

    .line 155
    mul-double v29, v15, v3

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->sin(D)D

    move-result-wide v29

    mul-double v31, v11, v13

    mul-double v31, v31, v1

    add-double v31, v9, v31

    mul-double v29, v29, v31

    div-double v29, v29, v15

    mul-double v31, v15, v3

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->cos(D)D

    move-result-wide v31

    mul-double v31, v31, v1

    add-double v29, v29, v31

    .line 152
    mul-double v23, v23, v29

    .line 156
    nop

    .line 157
    mul-double v29, v15, v3

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->cos(D)D

    move-result-wide v29

    mul-double v31, v11, v13

    mul-double v31, v31, v1

    add-double v31, v9, v31

    mul-double v29, v29, v31

    mul-double v31, v15, v1

    mul-double v33, v15, v3

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->sin(D)D

    move-result-wide v33

    mul-double v31, v31, v33

    sub-double v29, v29, v31

    .line 156
    mul-double v29, v29, v5

    .line 152
    sub-double v23, v23, v29

    .line 151
    move-wide/from16 v5, v23

    .end local v25    # "velocity":D
    .local v5, "velocity":D
    goto :goto_0

    .line 160
    .end local v17    # "m":D
    .end local v27    # "k":D
    .local v5, "m":D
    .local v7, "k":D
    .restart local v23    # "position":D
    .restart local v25    # "velocity":D
    :cond_2
    move-wide/from16 v17, v5

    move-wide/from16 v27, v7

    .end local v5    # "m":D
    .end local v7    # "k":D
    .restart local v17    # "m":D
    .restart local v27    # "k":D
    neg-double v5, v13

    mul-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->exp(D)D

    move-result-wide v5

    .line 161
    .local v5, "envelope":D
    iget-wide v7, v0, Lcom/facebook/react/animated/SpringAnimation;->endValue:D

    mul-double v29, v13, v1

    add-double v29, v9, v29

    mul-double v29, v29, v3

    add-double v29, v1, v29

    mul-double v29, v29, v5

    sub-double v7, v7, v29

    .line 162
    .end local v23    # "position":D
    .local v7, "position":D
    mul-double v23, v3, v13

    move-wide/from16 v29, v7

    .end local v7    # "position":D
    .local v29, "position":D
    const/4 v7, 0x1

    int-to-double v7, v7

    sub-double v23, v23, v7

    mul-double v23, v23, v9

    mul-double v7, v3, v1

    mul-double v31, v13, v13

    mul-double v7, v7, v31

    add-double v23, v23, v7

    mul-double v7, v5, v23

    move-wide v5, v7

    move-wide/from16 v7, v29

    .line 164
    .end local v25    # "velocity":D
    .end local v29    # "position":D
    .local v5, "velocity":D
    .restart local v7    # "position":D
    :goto_0
    move-wide/from16 v23, v1

    .end local v1    # "x0":D
    .local v23, "x0":D
    iget-object v1, v0, Lcom/facebook/react/animated/SpringAnimation;->currentState:Lcom/facebook/react/animated/SpringAnimation$PhysicsState;

    invoke-virtual {v1, v7, v8}, Lcom/facebook/react/animated/SpringAnimation$PhysicsState;->setPosition(D)V

    .line 165
    iget-object v1, v0, Lcom/facebook/react/animated/SpringAnimation;->currentState:Lcom/facebook/react/animated/SpringAnimation$PhysicsState;

    invoke-virtual {v1, v5, v6}, Lcom/facebook/react/animated/SpringAnimation$PhysicsState;->setVelocity(D)V

    .line 170
    invoke-direct/range {p0 .. p0}, Lcom/facebook/react/animated/SpringAnimation;->isAtRest()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, v0, Lcom/facebook/react/animated/SpringAnimation;->overshootClampingEnabled:Z

    if-eqz v1, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/facebook/react/animated/SpringAnimation;->isOvershooting()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move-wide/from16 v25, v3

    goto :goto_3

    .line 172
    :cond_4
    :goto_1
    iget-wide v1, v0, Lcom/facebook/react/animated/SpringAnimation;->springStiffness:D

    move-wide/from16 v25, v3

    .end local v3    # "t":D
    .local v25, "t":D
    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_5

    .line 173
    iget-wide v1, v0, Lcom/facebook/react/animated/SpringAnimation;->endValue:D

    iput-wide v1, v0, Lcom/facebook/react/animated/SpringAnimation;->startValue:D

    .line 174
    iget-object v1, v0, Lcom/facebook/react/animated/SpringAnimation;->currentState:Lcom/facebook/react/animated/SpringAnimation$PhysicsState;

    iget-wide v3, v0, Lcom/facebook/react/animated/SpringAnimation;->endValue:D

    invoke-virtual {v1, v3, v4}, Lcom/facebook/react/animated/SpringAnimation$PhysicsState;->setPosition(D)V

    goto :goto_2

    .line 176
    :cond_5
    iget-object v1, v0, Lcom/facebook/react/animated/SpringAnimation;->currentState:Lcom/facebook/react/animated/SpringAnimation$PhysicsState;

    invoke-virtual {v1}, Lcom/facebook/react/animated/SpringAnimation$PhysicsState;->getPosition()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/facebook/react/animated/SpringAnimation;->endValue:D

    .line 177
    iget-wide v1, v0, Lcom/facebook/react/animated/SpringAnimation;->endValue:D

    iput-wide v1, v0, Lcom/facebook/react/animated/SpringAnimation;->startValue:D

    .line 179
    :goto_2
    iget-object v1, v0, Lcom/facebook/react/animated/SpringAnimation;->currentState:Lcom/facebook/react/animated/SpringAnimation$PhysicsState;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/facebook/react/animated/SpringAnimation$PhysicsState;->setVelocity(D)V

    .line 181
    :goto_3
    return-void
.end method

.method private final getDisplacementDistanceForState(Lcom/facebook/react/animated/SpringAnimation$PhysicsState;)D
    .locals 4
    .param p1, "state"    # Lcom/facebook/react/animated/SpringAnimation$PhysicsState;

    .line 99
    iget-wide v0, p0, Lcom/facebook/react/animated/SpringAnimation;->endValue:D

    invoke-virtual {p1}, Lcom/facebook/react/animated/SpringAnimation$PhysicsState;->getPosition()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private final isAtRest()Z
    .locals 7

    .line 108
    iget-object v0, p0, Lcom/facebook/react/animated/SpringAnimation;->currentState:Lcom/facebook/react/animated/SpringAnimation$PhysicsState;

    invoke-virtual {v0}, Lcom/facebook/react/animated/SpringAnimation$PhysicsState;->getVelocity()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/react/animated/SpringAnimation;->restSpeedThreshold:D

    cmpg-double v0, v0, v2

    const/4 v1, 0x0

    if-gtz v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/facebook/react/animated/SpringAnimation;->currentState:Lcom/facebook/react/animated/SpringAnimation$PhysicsState;

    invoke-direct {p0, v0}, Lcom/facebook/react/animated/SpringAnimation;->getDisplacementDistanceForState(Lcom/facebook/react/animated/SpringAnimation$PhysicsState;)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/facebook/react/animated/SpringAnimation;->displacementFromRestThreshold:D

    cmpg-double v0, v2, v4

    const/4 v2, 0x1

    if-lez v0, :cond_1

    .line 110
    iget-wide v3, p0, Lcom/facebook/react/animated/SpringAnimation;->springStiffness:D

    const-wide/16 v5, 0x0

    cmpg-double v0, v3, v5

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    nop

    :goto_1
    return v1
.end method

.method private final isOvershooting()Z
    .locals 4

    .line 115
    iget-wide v0, p0, Lcom/facebook/react/animated/SpringAnimation;->springStiffness:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    .line 116
    iget-wide v0, p0, Lcom/facebook/react/animated/SpringAnimation;->startValue:D

    iget-wide v2, p0, Lcom/facebook/react/animated/SpringAnimation;->endValue:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/animated/SpringAnimation;->currentState:Lcom/facebook/react/animated/SpringAnimation$PhysicsState;

    invoke-virtual {v0}, Lcom/facebook/react/animated/SpringAnimation$PhysicsState;->getPosition()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/react/animated/SpringAnimation;->endValue:D

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_1

    .line 117
    :cond_0
    iget-wide v0, p0, Lcom/facebook/react/animated/SpringAnimation;->startValue:D

    iget-wide v2, p0, Lcom/facebook/react/animated/SpringAnimation;->endValue:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/react/animated/SpringAnimation;->currentState:Lcom/facebook/react/animated/SpringAnimation$PhysicsState;

    invoke-virtual {v0}, Lcom/facebook/react/animated/SpringAnimation$PhysicsState;->getPosition()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/react/animated/SpringAnimation;->endValue:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public resetConfig(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 4
    .param p1, "config"    # Lcom/facebook/react/bridge/ReadableMap;

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    const-string/jumbo v0, "stiffness"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/react/animated/SpringAnimation;->springStiffness:D

    .line 50
    const-string v0, "damping"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/react/animated/SpringAnimation;->springDamping:D

    .line 51
    const-string v0, "mass"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/react/animated/SpringAnimation;->springMass:D

    .line 52
    iget-object v0, p0, Lcom/facebook/react/animated/SpringAnimation;->currentState:Lcom/facebook/react/animated/SpringAnimation$PhysicsState;

    invoke-virtual {v0}, Lcom/facebook/react/animated/SpringAnimation$PhysicsState;->getVelocity()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/react/animated/SpringAnimation;->initialVelocity:D

    .line 53
    const-string/jumbo v0, "toValue"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/react/animated/SpringAnimation;->endValue:D

    .line 54
    const-string/jumbo v0, "restSpeedThreshold"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/react/animated/SpringAnimation;->restSpeedThreshold:D

    .line 55
    const-string/jumbo v0, "restDisplacementThreshold"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/react/animated/SpringAnimation;->displacementFromRestThreshold:D

    .line 56
    const-string/jumbo v0, "overshootClamping"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/react/animated/SpringAnimation;->overshootClampingEnabled:Z

    .line 57
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
    iput v0, p0, Lcom/facebook/react/animated/SpringAnimation;->iterations:I

    .line 58
    iget v0, p0, Lcom/facebook/react/animated/SpringAnimation;->iterations:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/facebook/react/animated/SpringAnimation;->hasFinished:Z

    .line 59
    iput v1, p0, Lcom/facebook/react/animated/SpringAnimation;->currentLoop:I

    .line 60
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/facebook/react/animated/SpringAnimation;->timeAccumulator:D

    .line 61
    iput-boolean v1, p0, Lcom/facebook/react/animated/SpringAnimation;->springStarted:Z

    .line 62
    return-void
.end method

.method public runAnimationStep(J)V
    .locals 9
    .param p1, "frameTimeNanos"    # J

    .line 65
    iget-object v0, p0, Lcom/facebook/react/animated/SpringAnimation;->animatedValue:Lcom/facebook/react/animated/ValueAnimatedNode;

    if-eqz v0, :cond_5

    .line 66
    .local v0, "animatedValue":Lcom/facebook/react/animated/ValueAnimatedNode;
    const v1, 0xf4240

    int-to-long v1, v1

    div-long v1, p1, v1

    .line 67
    .local v1, "frameTimeMillis":J
    iget-boolean v3, p0, Lcom/facebook/react/animated/SpringAnimation;->springStarted:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 68
    iget v3, p0, Lcom/facebook/react/animated/SpringAnimation;->currentLoop:I

    if-nez v3, :cond_0

    .line 69
    iget-wide v5, v0, Lcom/facebook/react/animated/ValueAnimatedNode;->nodeValue:D

    iput-wide v5, p0, Lcom/facebook/react/animated/SpringAnimation;->originalValue:D

    .line 70
    iput v4, p0, Lcom/facebook/react/animated/SpringAnimation;->currentLoop:I

    .line 72
    :cond_0
    iget-object v3, p0, Lcom/facebook/react/animated/SpringAnimation;->currentState:Lcom/facebook/react/animated/SpringAnimation$PhysicsState;

    iget-wide v5, v0, Lcom/facebook/react/animated/ValueAnimatedNode;->nodeValue:D

    invoke-virtual {v3, v5, v6}, Lcom/facebook/react/animated/SpringAnimation$PhysicsState;->setPosition(D)V

    .line 73
    iget-object v3, p0, Lcom/facebook/react/animated/SpringAnimation;->currentState:Lcom/facebook/react/animated/SpringAnimation$PhysicsState;

    invoke-virtual {v3}, Lcom/facebook/react/animated/SpringAnimation$PhysicsState;->getPosition()D

    move-result-wide v5

    iput-wide v5, p0, Lcom/facebook/react/animated/SpringAnimation;->startValue:D

    .line 74
    iput-wide v1, p0, Lcom/facebook/react/animated/SpringAnimation;->lastTime:J

    .line 75
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/facebook/react/animated/SpringAnimation;->timeAccumulator:D

    .line 76
    iput-boolean v4, p0, Lcom/facebook/react/animated/SpringAnimation;->springStarted:Z

    .line 78
    :cond_1
    iget-wide v5, p0, Lcom/facebook/react/animated/SpringAnimation;->lastTime:J

    sub-long v5, v1, v5

    long-to-double v5, v5

    const-wide v7, 0x408f400000000000L    # 1000.0

    div-double/2addr v5, v7

    invoke-direct {p0, v5, v6}, Lcom/facebook/react/animated/SpringAnimation;->advance(D)V

    .line 79
    iput-wide v1, p0, Lcom/facebook/react/animated/SpringAnimation;->lastTime:J

    .line 80
    iget-object v3, p0, Lcom/facebook/react/animated/SpringAnimation;->currentState:Lcom/facebook/react/animated/SpringAnimation$PhysicsState;

    invoke-virtual {v3}, Lcom/facebook/react/animated/SpringAnimation$PhysicsState;->getPosition()D

    move-result-wide v5

    iput-wide v5, v0, Lcom/facebook/react/animated/ValueAnimatedNode;->nodeValue:D

    .line 81
    invoke-direct {p0}, Lcom/facebook/react/animated/SpringAnimation;->isAtRest()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 82
    iget v3, p0, Lcom/facebook/react/animated/SpringAnimation;->iterations:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_3

    iget v3, p0, Lcom/facebook/react/animated/SpringAnimation;->currentLoop:I

    iget v5, p0, Lcom/facebook/react/animated/SpringAnimation;->iterations:I

    if-ge v3, v5, :cond_2

    goto :goto_0

    .line 87
    :cond_2
    iput-boolean v4, p0, Lcom/facebook/react/animated/SpringAnimation;->hasFinished:Z

    goto :goto_1

    .line 83
    :cond_3
    :goto_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/facebook/react/animated/SpringAnimation;->springStarted:Z

    .line 84
    iget-wide v5, p0, Lcom/facebook/react/animated/SpringAnimation;->originalValue:D

    iput-wide v5, v0, Lcom/facebook/react/animated/ValueAnimatedNode;->nodeValue:D

    .line 85
    iget v3, p0, Lcom/facebook/react/animated/SpringAnimation;->currentLoop:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/facebook/react/animated/SpringAnimation;->currentLoop:I

    .line 90
    :cond_4
    :goto_1
    return-void

    .line 189
    .end local v0    # "animatedValue":Lcom/facebook/react/animated/ValueAnimatedNode;
    .end local v1    # "frameTimeMillis":J
    :cond_5
    const/4 v0, 0x0

    .line 65
    .local v0, "$i$a$-requireNotNull-SpringAnimation$runAnimationStep$animatedValue$1":I
    nop

    .end local v0    # "$i$a$-requireNotNull-SpringAnimation$runAnimationStep$animatedValue$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Animated value should not be null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
