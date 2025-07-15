.class public final Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;
.super Ljava/lang/Object;
.source "DropFramesFrameScheduler.kt"

# interfaces
.implements Lcom/facebook/fresco/animation/frame/FrameScheduler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0006H\u0016J\u0010\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u0006H\u0007J\u0008\u0010\r\u001a\u00020\u0006H\u0016J\u0010\u0010\u000e\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0016J\u0010\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0008H\u0016J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;",
        "Lcom/facebook/fresco/animation/frame/FrameScheduler;",
        "animationInformation",
        "Lcom/facebook/fresco/animation/backend/AnimationInformation;",
        "(Lcom/facebook/fresco/animation/backend/AnimationInformation;)V",
        "_loopDurationMs",
        "",
        "getFrameNumberToRender",
        "",
        "animationTimeMs",
        "lastFrameTimeMs",
        "getFrameNumberWithinLoop",
        "timeInCurrentLoopMs",
        "getLoopDurationMs",
        "getTargetRenderTimeForNextFrameMs",
        "getTargetRenderTimeMs",
        "frameNumber",
        "isInfiniteAnimation",
        "",
        "Companion",
        "animated-drawable_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler$Companion;

.field private static final UNSET:I = -0x1


# instance fields
.field private _loopDurationMs:J

.field private final animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->Companion:Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/fresco/animation/backend/AnimationInformation;)V
    .locals 2
    .param p1, "animationInformation"    # Lcom/facebook/fresco/animation/backend/AnimationInformation;

    const-string v0, "animationInformation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    .line 17
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->_loopDurationMs:J

    .line 14
    return-void
.end method


# virtual methods
.method public getFrameNumberToRender(JJ)I
    .locals 6
    .param p1, "animationTimeMs"    # J
    .param p3, "lastFrameTimeMs"    # J

    .line 20
    invoke-virtual {p0}, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->getLoopDurationMs()J

    move-result-wide v0

    .line 21
    .local v0, "loopDurationMs":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 22
    invoke-virtual {p0, v2, v3}, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->getFrameNumberWithinLoop(J)I

    move-result v2

    return v2

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->isInfiniteAnimation()Z

    move-result v2

    if-nez v2, :cond_1

    .line 25
    div-long v2, p1, v0

    .line 26
    .local v2, "loopCount":J
    iget-object v4, p0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    invoke-interface {v4}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getLoopCount()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    .line 27
    const/4 v4, -0x1

    return v4

    .line 30
    .end local v2    # "loopCount":J
    :cond_1
    rem-long v2, p1, v0

    .line 31
    .local v2, "timeInCurrentLoopMs":J
    invoke-virtual {p0, v2, v3}, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->getFrameNumberWithinLoop(J)I

    move-result v4

    return v4
.end method

.method public final getFrameNumberWithinLoop(J)I
    .locals 5
    .param p1, "timeInCurrentLoopMs"    # J

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "frame":I
    const-wide/16 v1, 0x0

    .line 91
    .local v1, "currentDuration":J
    :cond_0
    iget-object v3, p0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    invoke-interface {v3, v0}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getFrameDurationMs(I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 92
    add-int/lit8 v0, v0, 0x1

    .line 93
    cmp-long v3, p1, v1

    if-gez v3, :cond_0

    .line 94
    add-int/lit8 v3, v0, -0x1

    return v3
.end method

.method public getLoopDurationMs()J
    .locals 6

    .line 35
    iget-wide v0, p0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->_loopDurationMs:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 36
    iget-wide v0, p0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->_loopDurationMs:J

    return-wide v0

    .line 38
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->_loopDurationMs:J

    .line 39
    iget-object v0, p0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getFrameCount()I

    move-result v0

    .line 40
    .local v0, "frameCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 41
    iget-wide v2, p0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->_loopDurationMs:J

    iget-object v4, p0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    invoke-interface {v4, v1}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getFrameDurationMs(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->_loopDurationMs:J

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    .end local v1    # "i":I
    :cond_1
    iget-wide v1, p0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->_loopDurationMs:J

    return-wide v1
.end method

.method public getTargetRenderTimeForNextFrameMs(J)J
    .locals 12
    .param p1, "animationTimeMs"    # J

    .line 55
    invoke-virtual {p0}, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->getLoopDurationMs()J

    move-result-wide v0

    .line 57
    .local v0, "loopDurationMs":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-wide/16 v3, -0x1

    if-nez v2, :cond_0

    .line 58
    return-wide v3

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->isInfiniteAnimation()Z

    move-result v2

    if-nez v2, :cond_1

    .line 61
    div-long v5, p1, v0

    .line 62
    .local v5, "loopCount":J
    iget-object v2, p0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    invoke-interface {v2}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getLoopCount()I

    move-result v2

    int-to-long v7, v2

    cmp-long v2, v5, v7

    if-ltz v2, :cond_1

    .line 63
    return-wide v3

    .line 67
    .end local v5    # "loopCount":J
    :cond_1
    rem-long v2, p1, v0

    .line 69
    .local v2, "timePassedInCurrentLoopMs":J
    const-wide/16 v4, 0x0

    .line 70
    .local v4, "timeOfNextFrameInLoopMs":J
    iget-object v6, p0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    invoke-interface {v6}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getFrameCount()I

    move-result v6

    .line 71
    .local v6, "frameCount":I
    const/4 v7, 0x0

    .line 72
    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_2

    cmp-long v8, v4, v2

    if-gtz v8, :cond_2

    .line 73
    iget-object v8, p0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    invoke-interface {v8, v7}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getFrameDurationMs(I)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v4, v8

    .line 74
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 78
    :cond_2
    sub-long v8, v4, v2

    .line 80
    .local v8, "timeUntilNextFrameInLoopMs":J
    add-long v10, p1, v8

    return-wide v10
.end method

.method public getTargetRenderTimeMs(I)J
    .locals 5
    .param p1, "frameNumber"    # I

    .line 47
    const-wide/16 v0, 0x0

    .line 48
    .local v0, "targetRenderTimeMs":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 49
    iget-object v3, p0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    invoke-interface {v3, p1}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getFrameDurationMs(I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 48
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    .end local v2    # "i":I
    :cond_0
    return-wide v0
.end method

.method public isInfiniteAnimation()Z
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getLoopCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
