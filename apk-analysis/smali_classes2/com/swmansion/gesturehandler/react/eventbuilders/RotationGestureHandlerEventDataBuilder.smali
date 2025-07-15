.class public final Lcom/swmansion/gesturehandler/react/eventbuilders/RotationGestureHandlerEventDataBuilder;
.super Lcom/swmansion/gesturehandler/react/eventbuilders/GestureHandlerEventDataBuilder;
.source "RotationGestureHandlerEventDataBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/swmansion/gesturehandler/react/eventbuilders/GestureHandlerEventDataBuilder<",
        "Lcom/swmansion/gesturehandler/core/RotationGestureHandler;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/swmansion/gesturehandler/react/eventbuilders/RotationGestureHandlerEventDataBuilder;",
        "Lcom/swmansion/gesturehandler/react/eventbuilders/GestureHandlerEventDataBuilder;",
        "Lcom/swmansion/gesturehandler/core/RotationGestureHandler;",
        "handler",
        "(Lcom/swmansion/gesturehandler/core/RotationGestureHandler;)V",
        "anchorX",
        "",
        "anchorY",
        "rotation",
        "",
        "velocity",
        "buildEventData",
        "",
        "eventData",
        "Lcom/facebook/react/bridge/WritableMap;",
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
.field private final anchorX:F

.field private final anchorY:F

.field private final rotation:D

.field private final velocity:D


# direct methods
.method public constructor <init>(Lcom/swmansion/gesturehandler/core/RotationGestureHandler;)V
    .locals 2
    .param p1, "handler"    # Lcom/swmansion/gesturehandler/core/RotationGestureHandler;

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    move-object v0, p1

    check-cast v0, Lcom/swmansion/gesturehandler/core/GestureHandler;

    invoke-direct {p0, v0}, Lcom/swmansion/gesturehandler/react/eventbuilders/GestureHandlerEventDataBuilder;-><init>(Lcom/swmansion/gesturehandler/core/GestureHandler;)V

    .line 13
    nop

    .line 14
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/RotationGestureHandler;->getRotation()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/swmansion/gesturehandler/react/eventbuilders/RotationGestureHandlerEventDataBuilder;->rotation:D

    .line 15
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/RotationGestureHandler;->getAnchorX()F

    move-result v0

    iput v0, p0, Lcom/swmansion/gesturehandler/react/eventbuilders/RotationGestureHandlerEventDataBuilder;->anchorX:F

    .line 16
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/RotationGestureHandler;->getAnchorY()F

    move-result v0

    iput v0, p0, Lcom/swmansion/gesturehandler/react/eventbuilders/RotationGestureHandlerEventDataBuilder;->anchorY:F

    .line 17
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/RotationGestureHandler;->getVelocity()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/swmansion/gesturehandler/react/eventbuilders/RotationGestureHandlerEventDataBuilder;->velocity:D

    .line 18
    nop

    .line 7
    return-void
.end method


# virtual methods
.method public buildEventData(Lcom/facebook/react/bridge/WritableMap;)V
    .locals 5
    .param p1, "eventData"    # Lcom/facebook/react/bridge/WritableMap;

    const-string v0, "eventData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-super {p0, p1}, Lcom/swmansion/gesturehandler/react/eventbuilders/GestureHandlerEventDataBuilder;->buildEventData(Lcom/facebook/react/bridge/WritableMap;)V

    .line 23
    move-object v0, p1

    .local v0, "$this$buildEventData_u24lambda_u240":Lcom/facebook/react/bridge/WritableMap;
    const/4 v1, 0x0

    .line 24
    .local v1, "$i$a$-with-RotationGestureHandlerEventDataBuilder$buildEventData$1":I
    const-string v2, "rotation"

    iget-wide v3, p0, Lcom/swmansion/gesturehandler/react/eventbuilders/RotationGestureHandlerEventDataBuilder;->rotation:D

    invoke-interface {v0, v2, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 25
    iget v2, p0, Lcom/swmansion/gesturehandler/react/eventbuilders/RotationGestureHandlerEventDataBuilder;->anchorX:F

    invoke-static {v2}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "anchorX"

    invoke-interface {v0, v4, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 26
    iget v2, p0, Lcom/swmansion/gesturehandler/react/eventbuilders/RotationGestureHandlerEventDataBuilder;->anchorY:F

    invoke-static {v2}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "anchorY"

    invoke-interface {v0, v4, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 27
    const-string v2, "velocity"

    iget-wide v3, p0, Lcom/swmansion/gesturehandler/react/eventbuilders/RotationGestureHandlerEventDataBuilder;->velocity:D

    invoke-interface {v0, v2, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 28
    nop

    .line 23
    .end local v0    # "$this$buildEventData_u24lambda_u240":Lcom/facebook/react/bridge/WritableMap;
    .end local v1    # "$i$a$-with-RotationGestureHandlerEventDataBuilder$buildEventData$1":I
    nop

    .line 29
    return-void
.end method
