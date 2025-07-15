.class public final Lcom/swmansion/gesturehandler/core/PinchGestureHandler$gestureListener$1;
.super Ljava/lang/Object;
.source "PinchGestureHandler.kt"

# interfaces
.implements Lcom/swmansion/gesturehandler/core/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swmansion/gesturehandler/core/PinchGestureHandler;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/swmansion/gesturehandler/core/PinchGestureHandler$gestureListener$1",
        "Lcom/swmansion/gesturehandler/core/ScaleGestureDetector$OnScaleGestureListener;",
        "onScale",
        "",
        "detector",
        "Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;",
        "onScaleBegin",
        "onScaleEnd",
        "",
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


# instance fields
.field final synthetic this$0:Lcom/swmansion/gesturehandler/core/PinchGestureHandler;


# direct methods
.method constructor <init>(Lcom/swmansion/gesturehandler/core/PinchGestureHandler;)V
    .locals 1
    .param p1, "$receiver"    # Lcom/swmansion/gesturehandler/core/PinchGestureHandler;

    iput-object p1, p0, Lcom/swmansion/gesturehandler/core/PinchGestureHandler$gestureListener$1;->this$0:Lcom/swmansion/gesturehandler/core/PinchGestureHandler;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    nop

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/swmansion/gesturehandler/core/PinchGestureHandler;->setShouldCancelWhenOutside(Z)Lcom/swmansion/gesturehandler/core/GestureHandler;

    .line 41
    nop

    .line 21
    return-void
.end method


# virtual methods
.method public onScale(Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;)Z
    .locals 7
    .param p1, "detector"    # Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;

    const-string v0, "detector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/PinchGestureHandler$gestureListener$1;->this$0:Lcom/swmansion/gesturehandler/core/PinchGestureHandler;

    invoke-virtual {v0}, Lcom/swmansion/gesturehandler/core/PinchGestureHandler;->getScale()D

    move-result-wide v0

    .line 25
    .local v0, "prevScaleFactor":D
    iget-object v2, p0, Lcom/swmansion/gesturehandler/core/PinchGestureHandler$gestureListener$1;->this$0:Lcom/swmansion/gesturehandler/core/PinchGestureHandler;

    invoke-virtual {v2}, Lcom/swmansion/gesturehandler/core/PinchGestureHandler;->getScale()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->getScaleFactor()F

    move-result v5

    float-to-double v5, v5

    mul-double/2addr v3, v5

    invoke-static {v2, v3, v4}, Lcom/swmansion/gesturehandler/core/PinchGestureHandler;->access$setScale$p(Lcom/swmansion/gesturehandler/core/PinchGestureHandler;D)V

    .line 26
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->getTimeDeltaSeconds()D

    move-result-wide v2

    .line 28
    .local v2, "delta":D
    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_0

    .line 29
    iget-object v4, p0, Lcom/swmansion/gesturehandler/core/PinchGestureHandler$gestureListener$1;->this$0:Lcom/swmansion/gesturehandler/core/PinchGestureHandler;

    iget-object v5, p0, Lcom/swmansion/gesturehandler/core/PinchGestureHandler$gestureListener$1;->this$0:Lcom/swmansion/gesturehandler/core/PinchGestureHandler;

    invoke-virtual {v5}, Lcom/swmansion/gesturehandler/core/PinchGestureHandler;->getScale()D

    move-result-wide v5

    sub-double/2addr v5, v0

    div-double/2addr v5, v2

    invoke-static {v4, v5, v6}, Lcom/swmansion/gesturehandler/core/PinchGestureHandler;->access$setVelocity$p(Lcom/swmansion/gesturehandler/core/PinchGestureHandler;D)V

    .line 31
    :cond_0
    iget-object v4, p0, Lcom/swmansion/gesturehandler/core/PinchGestureHandler$gestureListener$1;->this$0:Lcom/swmansion/gesturehandler/core/PinchGestureHandler;

    invoke-static {v4}, Lcom/swmansion/gesturehandler/core/PinchGestureHandler;->access$getStartingSpan$p(Lcom/swmansion/gesturehandler/core/PinchGestureHandler;)F

    move-result v4

    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->getCurrentSpan()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, p0, Lcom/swmansion/gesturehandler/core/PinchGestureHandler$gestureListener$1;->this$0:Lcom/swmansion/gesturehandler/core/PinchGestureHandler;

    invoke-static {v5}, Lcom/swmansion/gesturehandler/core/PinchGestureHandler;->access$getSpanSlop$p(Lcom/swmansion/gesturehandler/core/PinchGestureHandler;)F

    move-result v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    .line 32
    iget-object v4, p0, Lcom/swmansion/gesturehandler/core/PinchGestureHandler$gestureListener$1;->this$0:Lcom/swmansion/gesturehandler/core/PinchGestureHandler;

    invoke-virtual {v4}, Lcom/swmansion/gesturehandler/core/PinchGestureHandler;->getState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 34
    iget-object v4, p0, Lcom/swmansion/gesturehandler/core/PinchGestureHandler$gestureListener$1;->this$0:Lcom/swmansion/gesturehandler/core/PinchGestureHandler;

    invoke-virtual {v4}, Lcom/swmansion/gesturehandler/core/PinchGestureHandler;->activate()V

    .line 36
    :cond_1
    const/4 v4, 0x1

    return v4
.end method

.method public onScaleBegin(Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;)Z
    .locals 2
    .param p1, "detector"    # Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;

    const-string v0, "detector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/PinchGestureHandler$gestureListener$1;->this$0:Lcom/swmansion/gesturehandler/core/PinchGestureHandler;

    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->getCurrentSpan()F

    move-result v1

    invoke-static {v0, v1}, Lcom/swmansion/gesturehandler/core/PinchGestureHandler;->access$setStartingSpan$p(Lcom/swmansion/gesturehandler/core/PinchGestureHandler;F)V

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;)V
    .locals 1
    .param p1, "detector"    # Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;

    const-string v0, "detector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    return-void
.end method
