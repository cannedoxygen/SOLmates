.class public final Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;
.super Landroid/graphics/drawable/Drawable;
.source "KAnimatedDrawable2.kt"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Lcom/facebook/drawable/base/DrawableWithCaches;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2$DrawListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKAnimatedDrawable2.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KAnimatedDrawable2.kt\ncom/facebook/fresco/animation/drawable/KAnimatedDrawable2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,222:1\n1#2:223\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000m\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0006*\u0001\u0010\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u00013B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0008\u0010\u0018\u001a\u00020\u0015H\u0016J\u0006\u0010\u0019\u001a\u00020\u001aJ\u0008\u0010\u001b\u001a\u00020\u001aH\u0016J\u0008\u0010\u001c\u001a\u00020\u001aH\u0016J\u0008\u0010\u001d\u001a\u00020\u001aH\u0016J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0006\u0010\u001e\u001a\u00020\u001aJ\u0006\u0010\u001f\u001a\u00020\u001aJ\u0010\u0010 \u001a\u00020\u00152\u0006\u0010!\u001a\u00020\"H\u0014J\u0010\u0010#\u001a\u00020\u00152\u0006\u0010$\u001a\u00020\u001aH\u0016J\u0010\u0010%\u001a\u00020\u00152\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010&\u001a\u00020\u00152\u0008\u0010\'\u001a\u0004\u0018\u00010\nJ\u0012\u0010(\u001a\u00020\u00152\u0008\u0010)\u001a\u0004\u0018\u00010*H\u0016J\u0010\u0010+\u001a\u00020\u00152\u0008\u0010\'\u001a\u0004\u0018\u00010\u000cJ\u000e\u0010,\u001a\u00020\u00152\u0006\u0010-\u001a\u00020.J\u000e\u0010/\u001a\u00020\u00152\u0006\u00100\u001a\u00020.J\u0008\u00101\u001a\u00020\u0015H\u0016J\u0008\u00102\u001a\u00020\u0015H\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00064"
    }
    d2 = {
        "Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;",
        "Landroid/graphics/drawable/Drawable;",
        "Landroid/graphics/drawable/Animatable;",
        "Lcom/facebook/drawable/base/DrawableWithCaches;",
        "animationBackend",
        "Lcom/facebook/fresco/animation/backend/AnimationBackend;",
        "(Lcom/facebook/fresco/animation/backend/AnimationBackend;)V",
        "animatedFrameScheduler",
        "Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;",
        "animationListener",
        "Lcom/facebook/fresco/animation/drawable/AnimationListener;",
        "drawListener",
        "Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2$DrawListener;",
        "drawableProperties",
        "Lcom/facebook/drawee/drawable/DrawableProperties;",
        "invalidateRunnable",
        "com/facebook/fresco/animation/drawable/KAnimatedDrawable2$invalidateRunnable$1",
        "Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2$invalidateRunnable$1;",
        "isRunning",
        "",
        "draw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "dropCaches",
        "getFrameCount",
        "",
        "getIntrinsicHeight",
        "getIntrinsicWidth",
        "getOpacity",
        "loopCount",
        "loopDurationMs",
        "onBoundsChange",
        "bounds",
        "Landroid/graphics/Rect;",
        "setAlpha",
        "alpha",
        "setAnimationBackend",
        "setAnimationListener",
        "listener",
        "setColorFilter",
        "colorFilter",
        "Landroid/graphics/ColorFilter;",
        "setDrawListener",
        "setFrameSchedulingDelayMs",
        "delayMs",
        "",
        "setFrameSchedulingOffsetMs",
        "offsetMs",
        "start",
        "stop",
        "DrawListener",
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


# instance fields
.field private final animatedFrameScheduler:Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;

.field private animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

.field private animationListener:Lcom/facebook/fresco/animation/drawable/AnimationListener;

.field private drawListener:Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2$DrawListener;

.field private final drawableProperties:Lcom/facebook/drawee/drawable/DrawableProperties;

.field private final invalidateRunnable:Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2$invalidateRunnable$1;

.field private volatile isRunning:Z


# direct methods
.method public constructor <init>(Lcom/facebook/fresco/animation/backend/AnimationBackend;)V
    .locals 4
    .param p1, "animationBackend"    # Lcom/facebook/fresco/animation/backend/AnimationBackend;

    const-string v0, "animationBackend"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    .line 26
    new-instance v0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;

    new-instance v1, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;

    iget-object v2, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    check-cast v2, Lcom/facebook/fresco/animation/backend/AnimationInformation;

    invoke-direct {v1, v2}, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;-><init>(Lcom/facebook/fresco/animation/backend/AnimationInformation;)V

    check-cast v1, Lcom/facebook/fresco/animation/frame/FrameScheduler;

    invoke-direct {v0, v1}, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;-><init>(Lcom/facebook/fresco/animation/frame/FrameScheduler;)V

    iput-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animatedFrameScheduler:Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;

    .line 27
    new-instance v0, Lcom/facebook/fresco/animation/drawable/BaseAnimationListener;

    invoke-direct {v0}, Lcom/facebook/fresco/animation/drawable/BaseAnimationListener;-><init>()V

    check-cast v0, Lcom/facebook/fresco/animation/drawable/AnimationListener;

    iput-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationListener:Lcom/facebook/fresco/animation/drawable/AnimationListener;

    .line 29
    new-instance v0, Lcom/facebook/drawee/drawable/DrawableProperties;

    invoke-direct {v0}, Lcom/facebook/drawee/drawable/DrawableProperties;-><init>()V

    .line 223
    move-object v1, v0

    .local v1, "$this$drawableProperties_u24lambda_u240":Lcom/facebook/drawee/drawable/DrawableProperties;
    const/4 v2, 0x0

    .line 29
    .local v2, "$i$a$-apply-KAnimatedDrawable2$drawableProperties$1":I
    move-object v3, p0

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Lcom/facebook/drawee/drawable/DrawableProperties;->applyTo(Landroid/graphics/drawable/Drawable;)V

    .end local v1    # "$this$drawableProperties_u24lambda_u240":Lcom/facebook/drawee/drawable/DrawableProperties;
    .end local v2    # "$i$a$-apply-KAnimatedDrawable2$drawableProperties$1":I
    iput-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->drawableProperties:Lcom/facebook/drawee/drawable/DrawableProperties;

    .line 38
    new-instance v0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2$invalidateRunnable$1;

    invoke-direct {v0, p0}, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2$invalidateRunnable$1;-><init>(Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;)V

    iput-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->invalidateRunnable:Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2$invalidateRunnable$1;

    .line 22
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animatedFrameScheduler:Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;

    invoke-virtual {v0}, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->frameToDraw()I

    move-result v0

    .line 178
    .local v0, "frameNumber":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    invoke-interface {v1}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->getFrameCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 180
    iget-object v1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animatedFrameScheduler:Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;

    invoke-virtual {v1, v2}, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->setRunning(Z)V

    .line 181
    iget-object v1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationListener:Lcom/facebook/fresco/animation/drawable/AnimationListener;

    move-object v3, p0

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-interface {v1, v3}, Lcom/facebook/fresco/animation/drawable/AnimationListener;->onAnimationStop(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 182
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animatedFrameScheduler:Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;

    invoke-virtual {v1}, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->shouldRepeatAnimation()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    iget-object v1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationListener:Lcom/facebook/fresco/animation/drawable/AnimationListener;

    move-object v3, p0

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-interface {v1, v3}, Lcom/facebook/fresco/animation/drawable/AnimationListener;->onAnimationRepeat(Landroid/graphics/drawable/Drawable;)V

    .line 186
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    move-object v3, p0

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-interface {v1, v3, p1, v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->drawFrame(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;I)Z

    move-result v1

    .line 187
    .local v1, "frameDrawn":Z
    if-eqz v1, :cond_2

    .line 190
    iget-object v3, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationListener:Lcom/facebook/fresco/animation/drawable/AnimationListener;

    move-object v4, p0

    check-cast v4, Landroid/graphics/drawable/Drawable;

    invoke-interface {v3, v4, v0}, Lcom/facebook/fresco/animation/drawable/AnimationListener;->onAnimationFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 191
    iget-object v3, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animatedFrameScheduler:Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;

    invoke-virtual {v3, v0}, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->setLastDrawnFrameNumber(I)V

    goto :goto_1

    .line 193
    :cond_2
    iget-object v3, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animatedFrameScheduler:Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;

    invoke-virtual {v3}, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->onFrameDropped()V

    .line 196
    :goto_1
    iget-object v3, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animatedFrameScheduler:Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;

    invoke-virtual {v3}, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->nextRenderTime()J

    move-result-wide v3

    .line 197
    .local v3, "nextFrameTime":J
    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-eqz v5, :cond_3

    .line 198
    iget-object v2, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->invalidateRunnable:Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2$invalidateRunnable$1;

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v3, v4}, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->scheduleSelf(Ljava/lang/Runnable;J)V

    goto :goto_2

    .line 200
    :cond_3
    iget-object v5, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationListener:Lcom/facebook/fresco/animation/drawable/AnimationListener;

    move-object v6, p0

    check-cast v6, Landroid/graphics/drawable/Drawable;

    invoke-interface {v5, v6}, Lcom/facebook/fresco/animation/drawable/AnimationListener;->onAnimationStop(Landroid/graphics/drawable/Drawable;)V

    .line 201
    iget-object v5, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animatedFrameScheduler:Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;

    invoke-virtual {v5, v2}, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->setRunning(Z)V

    .line 203
    :goto_2
    return-void
.end method

.method public dropCaches()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->clear()V

    .line 87
    return-void
.end method

.method public final getFrameCount()I
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->getFrameCount()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 58
    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animatedFrameScheduler:Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;

    invoke-virtual {v0}, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->getRunning()Z

    move-result v0

    return v0
.end method

.method public final loopCount()I
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->getLoopCount()I

    move-result v0

    return v0
.end method

.method public final loopDurationMs()I
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->getLoopDurationMs()I

    move-result v0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->setBounds(Landroid/graphics/Rect;)V

    .line 91
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 49
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->drawableProperties:Lcom/facebook/drawee/drawable/DrawableProperties;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/drawable/DrawableProperties;->setAlpha(I)V

    .line 50
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->setAlpha(I)V

    .line 51
    return-void
.end method

.method public final setAnimationBackend(Lcom/facebook/fresco/animation/backend/AnimationBackend;)V
    .locals 2
    .param p1, "animationBackend"    # Lcom/facebook/fresco/animation/backend/AnimationBackend;

    .line 168
    if-nez p1, :cond_0

    return-void

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->stop()V

    .line 170
    invoke-virtual {p0}, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->setBounds(Landroid/graphics/Rect;)V

    .line 171
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->drawableProperties:Lcom/facebook/drawee/drawable/DrawableProperties;

    move-object v1, p0

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/drawable/DrawableProperties;->applyTo(Landroid/graphics/drawable/Drawable;)V

    .line 172
    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    .line 173
    return-void
.end method

.method public final setAnimationListener(Lcom/facebook/fresco/animation/drawable/AnimationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/facebook/fresco/animation/drawable/AnimationListener;

    .line 149
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationListener:Lcom/facebook/fresco/animation/drawable/AnimationListener;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationListener:Lcom/facebook/fresco/animation/drawable/AnimationListener;

    .line 150
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 54
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->drawableProperties:Lcom/facebook/drawee/drawable/DrawableProperties;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/drawable/DrawableProperties;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 55
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 56
    return-void
.end method

.method public final setDrawListener(Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2$DrawListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2$DrawListener;

    .line 158
    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->drawListener:Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2$DrawListener;

    .line 159
    return-void
.end method

.method public final setFrameSchedulingDelayMs(J)V
    .locals 1
    .param p1, "delayMs"    # J

    .line 129
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animatedFrameScheduler:Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->setFrameSchedulingDelayMs(J)V

    .line 130
    return-void
.end method

.method public final setFrameSchedulingOffsetMs(J)V
    .locals 1
    .param p1, "offsetMs"    # J

    .line 140
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animatedFrameScheduler:Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->setFrameSchedulingOffsetMs(J)V

    .line 141
    return-void
.end method

.method public start()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->getFrameCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 63
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animatedFrameScheduler:Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;

    invoke-virtual {v0}, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->start()V

    .line 67
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationListener:Lcom/facebook/fresco/animation/drawable/AnimationListener;

    move-object v1, p0

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Lcom/facebook/fresco/animation/drawable/AnimationListener;->onAnimationStart(Landroid/graphics/drawable/Drawable;)V

    .line 68
    invoke-virtual {p0}, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->invalidateSelf()V

    .line 69
    return-void
.end method

.method public stop()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animatedFrameScheduler:Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;

    invoke-virtual {v0}, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->stop()V

    .line 74
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationListener:Lcom/facebook/fresco/animation/drawable/AnimationListener;

    move-object v1, p0

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Lcom/facebook/fresco/animation/drawable/AnimationListener;->onAnimationStop(Landroid/graphics/drawable/Drawable;)V

    .line 75
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->invalidateRunnable:Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2$invalidateRunnable$1;

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 76
    return-void
.end method
