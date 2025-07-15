.class final Lcom/facebook/react/uimanager/UIViewOperationQueue$FindTargetForTouchOperation;
.super Ljava/lang/Object;
.source "UIViewOperationQueue.java"

# interfaces
.implements Lcom/facebook/react/uimanager/UIViewOperationQueue$UIOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/uimanager/UIViewOperationQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FindTargetForTouchOperation"
.end annotation


# instance fields
.field private final mCallback:Lcom/facebook/react/bridge/Callback;

.field private final mReactTag:I

.field private final mTargetX:F

.field private final mTargetY:F

.field final synthetic this$0:Lcom/facebook/react/uimanager/UIViewOperationQueue;


# direct methods
.method private constructor <init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;IFFLcom/facebook/react/bridge/Callback;)V
    .locals 0
    .param p2, "reactTag"    # I
    .param p3, "targetX"    # F
    .param p4, "targetY"    # F
    .param p5, "callback"    # Lcom/facebook/react/bridge/Callback;

    .line 464
    iput-object p1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$FindTargetForTouchOperation;->this$0:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    iput p2, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$FindTargetForTouchOperation;->mReactTag:I

    .line 467
    iput p3, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$FindTargetForTouchOperation;->mTargetX:F

    .line 468
    iput p4, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$FindTargetForTouchOperation;->mTargetY:F

    .line 469
    iput-object p5, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$FindTargetForTouchOperation;->mCallback:Lcom/facebook/react/bridge/Callback;

    .line 470
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;IFFLcom/facebook/react/bridge/Callback;Lcom/facebook/react/uimanager/UIViewOperationQueue$FindTargetForTouchOperation-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/facebook/react/uimanager/UIViewOperationQueue$FindTargetForTouchOperation;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;IFFLcom/facebook/react/bridge/Callback;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 13

    .line 475
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$FindTargetForTouchOperation;->this$0:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-static {v1}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->-$$Nest$fgetmNativeViewHierarchyManager(Lcom/facebook/react/uimanager/UIViewOperationQueue;)Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

    move-result-object v1

    iget v2, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$FindTargetForTouchOperation;->mReactTag:I

    iget-object v3, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$FindTargetForTouchOperation;->this$0:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-static {v3}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->-$$Nest$fgetmMeasureBuffer(Lcom/facebook/react/uimanager/UIViewOperationQueue;)[I

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->measure(I[I)V
    :try_end_0
    .catch Lcom/facebook/react/uimanager/IllegalViewOperationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 479
    nop

    .line 483
    iget-object v1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$FindTargetForTouchOperation;->this$0:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-static {v1}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->-$$Nest$fgetmMeasureBuffer(Lcom/facebook/react/uimanager/UIViewOperationQueue;)[I

    move-result-object v1

    aget v1, v1, v0

    int-to-float v1, v1

    .line 484
    .local v1, "containerX":F
    iget-object v2, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$FindTargetForTouchOperation;->this$0:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-static {v2}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->-$$Nest$fgetmMeasureBuffer(Lcom/facebook/react/uimanager/UIViewOperationQueue;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-float v2, v2

    .line 486
    .local v2, "containerY":F
    iget-object v4, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$FindTargetForTouchOperation;->this$0:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-static {v4}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->-$$Nest$fgetmNativeViewHierarchyManager(Lcom/facebook/react/uimanager/UIViewOperationQueue;)Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

    move-result-object v4

    iget v5, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$FindTargetForTouchOperation;->mReactTag:I

    iget v6, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$FindTargetForTouchOperation;->mTargetX:F

    iget v7, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$FindTargetForTouchOperation;->mTargetY:F

    .line 487
    invoke-virtual {v4, v5, v6, v7}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->findTargetTagForTouch(IFF)I

    move-result v4

    .line 490
    .local v4, "touchTargetReactTag":I
    :try_start_1
    iget-object v5, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$FindTargetForTouchOperation;->this$0:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-static {v5}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->-$$Nest$fgetmNativeViewHierarchyManager(Lcom/facebook/react/uimanager/UIViewOperationQueue;)Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$FindTargetForTouchOperation;->this$0:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-static {v6}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->-$$Nest$fgetmMeasureBuffer(Lcom/facebook/react/uimanager/UIViewOperationQueue;)[I

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->measure(I[I)V
    :try_end_1
    .catch Lcom/facebook/react/uimanager/IllegalViewOperationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 494
    nop

    .line 496
    iget-object v5, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$FindTargetForTouchOperation;->this$0:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-static {v5}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->-$$Nest$fgetmMeasureBuffer(Lcom/facebook/react/uimanager/UIViewOperationQueue;)[I

    move-result-object v5

    aget v0, v5, v0

    int-to-float v0, v0

    sub-float/2addr v0, v1

    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v0

    .line 497
    .local v0, "x":F
    iget-object v5, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$FindTargetForTouchOperation;->this$0:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-static {v5}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->-$$Nest$fgetmMeasureBuffer(Lcom/facebook/react/uimanager/UIViewOperationQueue;)[I

    move-result-object v5

    aget v3, v5, v3

    int-to-float v3, v3

    sub-float/2addr v3, v2

    invoke-static {v3}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v3

    .line 498
    .local v3, "y":F
    iget-object v5, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$FindTargetForTouchOperation;->this$0:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-static {v5}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->-$$Nest$fgetmMeasureBuffer(Lcom/facebook/react/uimanager/UIViewOperationQueue;)[I

    move-result-object v5

    const/4 v6, 0x2

    aget v5, v5, v6

    int-to-float v5, v5

    invoke-static {v5}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v5

    .line 499
    .local v5, "width":F
    iget-object v6, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$FindTargetForTouchOperation;->this$0:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-static {v6}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->-$$Nest$fgetmMeasureBuffer(Lcom/facebook/react/uimanager/UIViewOperationQueue;)[I

    move-result-object v6

    const/4 v7, 0x3

    aget v6, v6, v7

    int-to-float v6, v6

    invoke-static {v6}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v6

    .line 500
    .local v6, "height":F
    iget-object v7, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$FindTargetForTouchOperation;->mCallback:Lcom/facebook/react/bridge/Callback;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    filled-new-array {v8, v9, v10, v11, v12}, [Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 501
    return-void

    .line 491
    .end local v0    # "x":F
    .end local v3    # "y":F
    .end local v5    # "width":F
    .end local v6    # "height":F
    :catch_0
    move-exception v3

    .line 492
    .local v3, "e":Lcom/facebook/react/uimanager/IllegalViewOperationException;
    iget-object v5, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$FindTargetForTouchOperation;->mCallback:Lcom/facebook/react/bridge/Callback;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v5, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 493
    return-void

    .line 476
    .end local v1    # "containerX":F
    .end local v2    # "containerY":F
    .end local v3    # "e":Lcom/facebook/react/uimanager/IllegalViewOperationException;
    .end local v4    # "touchTargetReactTag":I
    :catch_1
    move-exception v1

    .line 477
    .local v1, "e":Lcom/facebook/react/uimanager/IllegalViewOperationException;
    iget-object v2, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$FindTargetForTouchOperation;->mCallback:Lcom/facebook/react/bridge/Callback;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 478
    return-void
.end method
