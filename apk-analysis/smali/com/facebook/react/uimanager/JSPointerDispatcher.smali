.class public Lcom/facebook/react/uimanager/JSPointerDispatcher;
.super Ljava/lang/Object;
.source "JSPointerDispatcher.java"


# static fields
.field private static final ONMOVE_EPSILON:F = 0.1f

.field private static final TAG:Ljava/lang/String; = "POINTER EVENTS"

.field private static final UNSELECTED_VIEW_TAG:I = -0x1

.field private static final UNSET_POINTER_ID:I = -0x1

.field private static final sRootScreenCoords:[I


# instance fields
.field private mChildHandlingNativeGesture:I

.field private mCoalescingKey:I

.field private mCurrentlyDownPointerIdsToHitPath:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHoveringPointerIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastButtonState:I

.field private mLastEventCoordinatesByPointerId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[F>;"
        }
    .end annotation
.end field

.field private mLastHitPathByPointerId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPrimaryPointerId:I

.field private final mRootViewGroup:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const/4 v0, 0x0

    filled-new-array {v0, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/facebook/react/uimanager/JSPointerDispatcher;->sRootScreenCoords:[I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/JSPointerDispatcher;->mHoveringPointerIds:Ljava/util/Set;

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/react/uimanager/JSPointerDispatcher;->mChildHandlingNativeGesture:I

    .line 49
    iput v0, p0, Lcom/facebook/react/uimanager/JSPointerDispatcher;->mPrimaryPointerId:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/react/uimanager/JSPointerDispatcher;->mCoalescingKey:I

    .line 51
    iput v0, p0, Lcom/facebook/react/uimanager/JSPointerDispatcher;->mLastButtonState:I

    .line 59
    iput-object p1, p0, Lcom/facebook/react/uimanager/JSPointerDispatcher;->mRootViewGroup:Landroid/view/ViewGroup;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/JSPointerDispatcher;->mCurrentlyDownPointerIdsToHitPath:Ljava/util/Map;

    .line 61
    return-void
.end method

.method private convertMotionToRootFrame(Landroid/view/View;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 6
    .param p1, "childView"    # Landroid/view/View;
    .param p2, "childMotion"    # Landroid/view/MotionEvent;

    .line 80
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 82
    .local v0, "motionInRoot":Landroid/view/MotionEvent;
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 83
    .local v1, "location":[I
    iget-object v2, p0, Lcom/facebook/react/uimanager/JSPointerDispatcher;->mRootViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 84
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    .line 85
    .local v2, "screenX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 86
    .local v3, "screenY":F
    const/4 v4, 0x0

    aget v4, v1, v4

    int-to-float v4, v4

    sub-float v4, v2, v4

    .line 87
    .local v4, "clientX":F
    const/4 v5, 0x1

    aget v5, v1, v5

    int-to-float v5, v5

    sub-float v5, v3, v5

    .line 88
    .local v5, "clientY":F
    invoke-virtual {v0, v4, v5}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 90
    return-object v0
.end method

.method private createEventState(ILandroid/view/MotionEvent;)Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;
    .locals 18
    .param p1, "activePointerId"    # I
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .line 248
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 249
    .local v2, "offsetByPointerId":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[F>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v13, v3

    .line 250
    .local v13, "hitPathByPointerId":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;>;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v14, v3

    .line 251
    .local v14, "eventCoordinatesByPointerId":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[F>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v15, v3

    .line 252
    .local v15, "screenCoordinatesByPointerId":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[F>;"
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 253
    const/4 v4, 0x2

    new-array v5, v4, [F

    .line 254
    .local v5, "offsetCoordinates":[F
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    new-array v4, v4, [F

    const/4 v8, 0x0

    aput v6, v4, v8

    const/4 v6, 0x1

    aput v7, v4, v6

    .line 255
    .local v4, "eventCoordinates":[F
    aget v7, v4, v8

    aget v6, v4, v6

    iget-object v8, v0, Lcom/facebook/react/uimanager/JSPointerDispatcher;->mRootViewGroup:Landroid/view/ViewGroup;

    .line 256
    invoke-static {v7, v6, v8, v5}, Lcom/facebook/react/uimanager/TouchTargetHelper;->findTargetPathAndCoordinatesForTouch(FFLandroid/view/ViewGroup;[F)Ljava/util/List;

    move-result-object v6

    .line 259
    .local v6, "hitPath":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;>;"
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 260
    .local v7, "pointerId":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v13, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v14, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v0, v4}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->eventCoordsToScreenCoords([F)[F

    move-result-object v9

    invoke-interface {v15, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .end local v4    # "eventCoordinates":[F
    .end local v5    # "offsetCoordinates":[F
    .end local v6    # "hitPath":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;>;"
    .end local v7    # "pointerId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 266
    .end local v3    # "index":I
    :cond_0
    iget-object v3, v0, Lcom/facebook/react/uimanager/JSPointerDispatcher;->mRootViewGroup:Landroid/view/ViewGroup;

    invoke-static {v3}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/view/View;)I

    move-result v16

    .line 268
    .local v16, "surfaceId":I
    new-instance v17, Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;

    iget v4, v0, Lcom/facebook/react/uimanager/JSPointerDispatcher;->mPrimaryPointerId:I

    iget v6, v0, Lcom/facebook/react/uimanager/JSPointerDispatcher;->mLastButtonState:I

    iget-object v12, v0, Lcom/facebook/react/uimanager/JSPointerDispatcher;->mHoveringPointerIds:Ljava/util/Set;

    move-object/from16 v3, v17

    move/from16 v5, p1

    move/from16 v7, v16

    move-object v8, v2

    move-object v9, v13

    move-object v10, v14

    move-object v11, v15

    invoke-direct/range {v3 .. v12}, Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;-><init>(IIIILjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;)V

    return-object v17
.end method

.method private static debugPrintHitPath(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;",
            ">;)V"
        }
    .end annotation

    .line 688
    .local p0, "hitPath":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hitPath: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 689
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;

    .line 690
    .local v2, "viewTarget":Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;
    invoke-virtual {v2}, Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;->getViewId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%d, "

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    .end local v2    # "viewTarget":Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;
    goto :goto_0

    .line 693
    :cond_0
    const-string v1, "POINTER EVENTS"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    return-void
.end method

.method private dispatchCancelEventForTarget(Landroid/view/View;Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;Landroid/view/MotionEvent;Lcom/facebook/react/uimanager/events/EventDispatcher;)V
    .locals 9
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "eventState"    # Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;
    .param p3, "motionEvent"    # Landroid/view/MotionEvent;
    .param p4, "eventDispatcher"    # Lcom/facebook/react/uimanager/events/EventDispatcher;

    .line 611
    iget v0, p0, Lcom/facebook/react/uimanager/JSPointerDispatcher;->mChildHandlingNativeGesture:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v4, "Expected to not have already sent a cancel for this gesture"

    invoke-static {v0, v4}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(ZLjava/lang/String;)V

    .line 615
    invoke-virtual {p2}, Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;->getActivePointerId()I

    move-result v0

    .line 616
    .local v0, "activePointerId":I
    invoke-virtual {p2}, Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;->getHitPathByPointerId()Ljava/util/Map;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 618
    .local v4, "activeHitPath":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz p1, :cond_2

    .line 619
    sget-object v5, Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;->CANCEL:Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;

    sget-object v6, Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;->CANCEL_CAPTURE:Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;

    .line 620
    invoke-static {v4, v5, v6}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->isAnyoneListeningForBubblingEvent(Ljava/util/List;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;)Z

    move-result v5

    .line 621
    .local v5, "listeningForCancel":Z
    if-eqz v5, :cond_1

    .line 622
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;

    invoke-virtual {v6}, Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;->getViewId()I

    move-result v6

    .line 626
    .local v6, "targetTag":I
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->getChildOffsetRelativeToRoot(Landroid/view/View;)[I

    move-result-object v7

    .line 627
    .local v7, "childOffset":[I
    aget v2, v7, v2

    int-to-float v2, v2

    aget v1, v7, v1

    int-to-float v1, v1

    .line 628
    invoke-direct {p0, p2, v2, v1}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->normalizeToRoot(Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;FF)Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;

    move-result-object v1

    .line 629
    .local v1, "normalizedEventState":Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;
    invoke-static {p4}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/uimanager/events/EventDispatcher;

    .line 631
    const-string/jumbo v8, "topPointerCancel"

    invoke-static {v8, v6, v1, p3}, Lcom/facebook/react/uimanager/events/PointerEvent;->obtain(Ljava/lang/String;ILcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;Landroid/view/MotionEvent;)Lcom/facebook/react/uimanager/events/PointerEvent;

    move-result-object v8

    .line 630
    invoke-interface {v2, v8}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 638
    .end local v1    # "normalizedEventState":Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;
    .end local v6    # "targetTag":I
    .end local v7    # "childOffset":[I
    :cond_1
    invoke-direct {p0}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->incrementCoalescingKey()V

    .line 639
    iput v3, p0, Lcom/facebook/react/uimanager/JSPointerDispatcher;->mPrimaryPointerId:I

    .line 641
    .end local v5    # "listeningForCancel":Z
    :cond_2
    return-void
.end method

.method private static dispatchEventForViewTargets(Ljava/lang/String;Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;Landroid/view/MotionEvent;Ljava/util/List;Lcom/facebook/react/uimanager/events/EventDispatcher;)V
    .locals 4
    .param p0, "eventName"    # Ljava/lang/String;
    .param p1, "eventState"    # Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;
    .param p4, "dispatcher"    # Lcom/facebook/react/uimanager/events/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;",
            "Landroid/view/MotionEvent;",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;",
            ">;",
            "Lcom/facebook/react/uimanager/events/EventDispatcher;",
            ")V"
        }
    .end annotation

    .line 455
    .local p3, "viewTargets":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;

    .line 456
    .local v1, "viewTarget":Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;
    invoke-virtual {v1}, Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;->getViewId()I

    move-result v2

    .line 457
    .local v2, "viewId":I
    invoke-static {p0, v2, p1, p2}, Lcom/facebook/react/uimanager/events/PointerEvent;->obtain(Ljava/lang/String;ILcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;Landroid/view/MotionEvent;)Lcom/facebook/react/uimanager/events/PointerEvent;

    move-result-object v3

    invoke-interface {p4, v3}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 458
    .end local v1    # "viewTarget":Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;
    .end local v2    # "viewId":I
    goto :goto_0

    .line 459
    :cond_0
    return-void
.end method

.method private eventCoordsToScreenCoords([F)[F
    .locals 4
    .param p1, "eventCoords"    # [F

    .line 238
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 239
    .local v0, "screenCoords":[F
    iget-object v1, p0, Lcom/facebook/react/uimanager/JSPointerDispatcher;->mRootViewGroup:Landroid/view/ViewGroup;

    sget-object v2, Lcom/facebook/react/uimanager/JSPointerDispatcher;->sRootScreenCoords:[I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 241
    const/4 v1, 0x0

    aget v2, p1, v1

    sget-object v3, Lcom/facebook/react/uimanager/JSPointerDispatcher;->sRootScreenCoords:[I

    aget v3, v3, v1

    int-to-float v3, v3

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 242
    const/4 v1, 0x1

    aget v2, p1, v1

    sget-object v3, Lcom/facebook/react/uimanager/JSPointerDispatcher;->sRootScreenCoords:[I

    aget v3, v3, v1

    int-to-float v3, v3

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 244
    return-object v0
.end method

.method private static filterByShouldDispatch(Ljava/util/List;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;Z)Ljava/util/List;
    .locals 6
    .param p1, "bubble"    # Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;
    .param p2, "capture"    # Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;
    .param p3, "forceDispatch"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;",
            ">;",
            "Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;",
            "Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;",
            ">;"
        }
    .end annotation

    .line 425
    .local p0, "viewTargets":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 426
    .local v0, "dispatchableViewTargets":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;>;"
    if-eqz p3, :cond_0

    .line 427
    return-object v0

    .line 430
    :cond_0
    const/4 v1, 0x0

    .line 433
    .local v1, "ancestorListening":Z
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 434
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;

    .line 435
    .local v3, "viewTarget":Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;
    invoke-virtual {v3}, Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;->getView()Landroid/view/View;

    move-result-object v4

    .line 437
    .local v4, "view":Landroid/view/View;
    if-nez v1, :cond_1

    .line 438
    invoke-static {v4, p2}, Lcom/facebook/react/uimanager/events/PointerEventHelper;->isListening(Landroid/view/View;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 439
    invoke-static {v4, p1}, Lcom/facebook/react/uimanager/events/PointerEventHelper;->isListening(Landroid/view/View;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 440
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 441
    :cond_1
    if-nez v1, :cond_2

    invoke-static {v4, p2}, Lcom/facebook/react/uimanager/events/PointerEventHelper;->isListening(Landroid/view/View;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 442
    const/4 v1, 0x1

    .line 433
    .end local v3    # "viewTarget":Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;
    .end local v4    # "view":Landroid/view/View;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 445
    .end local v2    # "i":I
    :cond_3
    return-object v0
.end method

.method private static findHitPathIntersection(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;",
            ">;",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;",
            ">;"
        }
    .end annotation

    .line 102
    .local p0, "hitsA":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;>;"
    .local p1, "hitsB":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 105
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 109
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 111
    .local v0, "inA":Ljava/util/Set;, "Ljava/util/Set<Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v1, "intersection":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;

    .line 114
    .local v3, "vt":Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 115
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    .end local v3    # "vt":Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;
    :cond_2
    goto :goto_0

    .line 119
    :cond_3
    return-object v1
.end method

.method private getChildOffsetRelativeToRoot(Landroid/view/View;)[I
    .locals 3
    .param p1, "childView"    # Landroid/view/View;

    .line 645
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 646
    .local v0, "childCoords":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/facebook/react/uimanager/JSPointerDispatcher;->mRootViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 647
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    return-object v1
.end method

.method private getCoalescingKey()S
    .locals 2

    .line 185
    const v0, 0xffff

    iget v1, p0, Lcom/facebook/react/uimanager/JSPointerDispatcher;->mCoalescingKey:I

    and-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method private handleHitStateDivergence(ILcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;Landroid/view/MotionEvent;Lcom/facebook/react/uimanager/events/EventDispatcher;)V
    .locals 17
    .param p1, "targetTag"    # I
    .param p2, "eventState"    # Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;
    .param p3, "motionEvent"    # Landroid/view/MotionEvent;
    .param p4, "eventDispatcher"    # Lcom/facebook/react/uimanager/events/EventDispatcher;

    .line 473
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {p2 .. p2}, Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;->getActivePointerId()I

    move-result v5

    .line 475
    .local v5, "activePointerId":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_0

    .line 476
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;->getHitPathByPointerId()Ljava/util/Map;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    goto :goto_0

    .line 477
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    nop

    .line 479
    .local v7, "activeHitPath":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;>;"
    iget-object v8, v0, Lcom/facebook/react/uimanager/JSPointerDispatcher;->mLastHitPathByPointerId:Ljava/util/Map;

    if-eqz v8, :cond_1

    iget-object v8, v0, Lcom/facebook/react/uimanager/JSPointerDispatcher;->mLastHitPathByPointerId:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 480
    iget-object v8, v0, Lcom/facebook/react/uimanager/JSPointerDispatcher;->mLastHitPathByPointerId:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    goto :goto_1

    .line 481
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    nop

    .line 486
    .local v8, "lastHitPath":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;>;"
    const/4 v9, 0x0

    .line 487
    .local v9, "nonDivergentListeningToEnter":Z
    const/4 v10, 0x0

    .line 488
    .local v10, "nonDivergentListeningToLeave":Z
    const/4 v11, 0x0

    .line 489
    .local v11, "firstDivergentIndexFromBack":I
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    const/4 v13, 0x1

    if-ge v11, v12, :cond_4

    .line 491
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v13

    sub-int/2addr v12, v11

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;

    .line 492
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    sub-int/2addr v14, v13

    sub-int/2addr v14, v11

    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 495
    nop

    .line 496
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v13

    sub-int/2addr v12, v11

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;

    invoke-virtual {v12}, Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;->getView()Landroid/view/View;

    move-result-object v12

    .line 497
    .local v12, "nonDivergentViewTargetView":Landroid/view/View;
    if-nez v9, :cond_2

    sget-object v13, Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;->ENTER_CAPTURE:Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;

    .line 498
    invoke-static {v12, v13}, Lcom/facebook/react/uimanager/events/PointerEventHelper;->isListening(Landroid/view/View;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 499
    const/4 v9, 0x1

    .line 501
    :cond_2
    if-nez v10, :cond_3

    sget-object v13, Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;->LEAVE_CAPTURE:Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;

    .line 502
    invoke-static {v12, v13}, Lcom/facebook/react/uimanager/events/PointerEventHelper;->isListening(Landroid/view/View;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 503
    const/4 v10, 0x1

    .line 506
    :cond_3
    nop

    .end local v12    # "nonDivergentViewTargetView":Landroid/view/View;
    add-int/lit8 v11, v11, 0x1

    .line 507
    goto :goto_2

    .line 509
    :cond_4
    nop

    .line 510
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    invoke-static {v12, v14}, Ljava/lang/Math;->max(II)I

    move-result v12

    const/4 v14, 0x0

    if-ge v11, v12, :cond_5

    goto :goto_3

    :cond_5
    move v13, v14

    :goto_3
    move v12, v13

    .line 512
    .local v12, "hasDiverged":Z
    if-eqz v12, :cond_9

    .line 514
    invoke-direct/range {p0 .. p0}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->incrementCoalescingKey()V

    .line 517
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_7

    .line 518
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;

    invoke-virtual {v13}, Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;->getViewId()I

    move-result v13

    .line 519
    .local v13, "lastTargetTag":I
    sget-object v15, Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;->OUT:Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;

    sget-object v6, Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;->OUT_CAPTURE:Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;

    .line 520
    invoke-static {v8, v15, v6}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->isAnyoneListeningForBubblingEvent(Ljava/util/List;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;)Z

    move-result v6

    .line 521
    .local v6, "listeningForOut":Z
    if-eqz v6, :cond_6

    .line 522
    nop

    .line 523
    const-string/jumbo v15, "topPointerOut"

    invoke-static {v15, v13, v2, v3}, Lcom/facebook/react/uimanager/events/PointerEvent;->obtain(Ljava/lang/String;ILcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;Landroid/view/MotionEvent;)Lcom/facebook/react/uimanager/events/PointerEvent;

    move-result-object v15

    .line 522
    invoke-interface {v4, v15}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 528
    :cond_6
    nop

    .line 530
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v15

    sub-int/2addr v15, v11

    invoke-interface {v8, v14, v15}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v15

    sget-object v14, Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;->LEAVE:Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;

    move/from16 v16, v6

    .end local v6    # "listeningForOut":Z
    .local v16, "listeningForOut":Z
    sget-object v6, Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;->LEAVE_CAPTURE:Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;

    .line 529
    invoke-static {v15, v14, v6, v10}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->filterByShouldDispatch(Ljava/util/List;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;Z)Ljava/util/List;

    move-result-object v6

    .line 534
    .local v6, "leaveViewTargets":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_7

    .line 536
    const-string/jumbo v14, "topPointerLeave"

    invoke-static {v14, v2, v3, v6, v4}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->dispatchEventForViewTargets(Ljava/lang/String;Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;Landroid/view/MotionEvent;Ljava/util/List;Lcom/facebook/react/uimanager/events/EventDispatcher;)V

    .line 545
    .end local v6    # "leaveViewTargets":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;>;"
    .end local v13    # "lastTargetTag":I
    .end local v16    # "listeningForOut":Z
    :cond_7
    sget-object v6, Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;->OVER:Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;

    sget-object v13, Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;->OVER_CAPTURE:Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;

    .line 546
    invoke-static {v7, v6, v13}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->isAnyoneListeningForBubblingEvent(Ljava/util/List;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;)Z

    move-result v6

    .line 547
    .local v6, "listeningForOver":Z
    if-eqz v6, :cond_8

    .line 548
    nop

    .line 549
    const-string/jumbo v13, "topPointerOver"

    invoke-static {v13, v1, v2, v3}, Lcom/facebook/react/uimanager/events/PointerEvent;->obtain(Ljava/lang/String;ILcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;Landroid/view/MotionEvent;)Lcom/facebook/react/uimanager/events/PointerEvent;

    move-result-object v13

    .line 548
    invoke-interface {v4, v13}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 554
    :cond_8
    nop

    .line 556
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    sub-int/2addr v13, v11

    const/4 v14, 0x0

    invoke-interface {v7, v14, v13}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v13

    sget-object v14, Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;->ENTER:Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;

    sget-object v15, Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;->ENTER_CAPTURE:Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;

    .line 555
    invoke-static {v13, v14, v15, v9}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->filterByShouldDispatch(Ljava/util/List;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;Z)Ljava/util/List;

    move-result-object v13

    .line 561
    .local v13, "enterViewTargets":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_9

    .line 563
    invoke-static {v13}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 564
    const-string/jumbo v14, "topPointerEnter"

    invoke-static {v14, v2, v3, v13, v4}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->dispatchEventForViewTargets(Ljava/lang/String;Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;Landroid/view/MotionEvent;Ljava/util/List;Lcom/facebook/react/uimanager/events/EventDispatcher;)V

    .line 573
    .end local v6    # "listeningForOver":Z
    .end local v13    # "enterViewTargets":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;>;"
    :cond_9
    new-instance v6, Ljava/util/HashMap;

    .line 574
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;->getHitPathByPointerId()Ljava/util/Map;

    move-result-object v13

    invoke-direct {v6, v13}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 576
    .local v6, "nextHitPathByPointerId":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;>;>;"
    const/4 v13, -0x1

    if-ne v1, v13, :cond_a

    .line 577
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v6, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    :cond_a
    iput-object v6, v0, Lcom/facebook/react/uimanager/JSPointerDispatcher;->mLastHitPathByPointerId:Ljava/util/Map;

    .line 580
    return-void
.end method

.method private incrementCoalescingKey()V
    .locals 2

    .line 181
    iget v0, p0, Lcom/facebook/react/uimanager/JSPointerDispatcher;->mCoalescingKey:I

    add-int/lit8 v0, v0, 0x1

    const v1, 0x7fffffff

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/react/uimanager/JSPointerDispatcher;->mCoalescingKey:I

    .line 182
    return-void
.end method

.method private static isAnyoneListeningForBubblingEvent(Ljava/util/List;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;)Z
    .locals 3
    .param p1, "event"    # Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;
    .param p2, "captureEvent"    # Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;",
            ">;",
            "Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;",
            "Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;",
            ")Z"
        }
    .end annotation

    .line 404
    .local p0, "hitPath":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;

    .line 405
    .local v1, "viewTarget":Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;
    invoke-virtual {v1}, Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/facebook/react/uimanager/events/PointerEventHelper;->isListening(Landroid/view/View;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 406
    invoke-virtual {v1}, Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/facebook/react/uimanager/events/PointerEventHelper;->isListening(Landroid/view/View;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 409
    .end local v1    # "viewTarget":Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;
    :cond_0
    goto :goto_0

    .line 407
    .restart local v1    # "viewTarget":Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;
    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 410
    .end local v1    # "viewTarget":Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private normalizeToRoot(Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;FF)Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;
    .locals 15
    .param p1, "original"    # Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;
    .param p2, "rootX"    # F
    .param p3, "rootY"    # F

    .line 655
    new-instance v5, Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;->getOffsetByPointerId()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 656
    .local v5, "newOffsets":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[F>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;->getEventCoordinatesByPointerId()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 657
    .local v7, "newEventCoords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[F>;"
    new-instance v8, Ljava/util/HashMap;

    .line 658
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;->getScreenCoordinatesByPointerId()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 660
    .local v8, "newScreenCoords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[F>;"
    const/4 v0, 0x2

    new-array v1, v0, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    move-object v10, v1

    .line 661
    .local v10, "rootOffset":[F
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 662
    .local v2, "offsetEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[F>;"
    invoke-interface {v2, v10}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    .end local v2    # "offsetEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[F>;"
    goto :goto_0

    .line 665
    :cond_0
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    move-object v11, v0

    .line 666
    .local v11, "zeroOffset":[F
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 667
    .local v1, "eventCoordsEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[F>;"
    invoke-interface {v1, v11}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    .end local v1    # "eventCoordsEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[F>;"
    goto :goto_1

    .line 670
    :cond_1
    move-object v12, p0

    invoke-direct {p0, v10}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->eventCoordsToScreenCoords([F)[F

    move-result-object v13

    .line 671
    .local v13, "screenCoords":[F
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 672
    .local v1, "screenCoordsEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[F>;"
    invoke-interface {v1, v13}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    .end local v1    # "screenCoordsEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[F>;"
    goto :goto_2

    .line 675
    :cond_2
    new-instance v14, Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;

    .line 676
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;->getPrimaryPointerId()I

    move-result v1

    .line 677
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;->getActivePointerId()I

    move-result v2

    .line 678
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;->getLastButtonState()I

    move-result v3

    .line 679
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;->getSurfaceId()I

    move-result v4

    new-instance v6, Ljava/util/HashMap;

    .line 681
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;->getHitPathByPointerId()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v9, Ljava/util/HashSet;

    .line 684
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;->getHoveringPointerIds()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v0, v14

    invoke-direct/range {v0 .. v9}, Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;-><init>(IIIILjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;)V

    .line 675
    return-object v14

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private onDown(ILcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;Landroid/view/MotionEvent;Lcom/facebook/react/uimanager/events/EventDispatcher;)V
    .locals 6
    .param p1, "activeTargetTag"    # I
    .param p2, "eventState"    # Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;
    .param p3, "motionEvent"    # Landroid/view/MotionEvent;
    .param p4, "eventDispatcher"    # Lcom/facebook/react/uimanager/events/EventDispatcher;

    .line 194
    nop

    .line 195
    invoke-virtual {p2}, Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;->getHitPathByPointerId()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;->getActivePointerId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 197
    .local v0, "activeHitPath":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;>;"
    invoke-direct {p0}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->incrementCoalescingKey()V

    .line 198
    iget-object v1, p0, Lcom/facebook/react/uimanager/JSPointerDispatcher;->mHoveringPointerIds:Ljava/util/Set;

    invoke-virtual {p2}, Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;->getActivePointerId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 199
    .local v1, "supportsHover":Z
    if-nez v1, :cond_1

    .line 201
    sget-object v2, Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;->OVER:Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;

    sget-object v3, Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;->OVER_CAPTURE:Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;

    .line 202
    invoke-static {v0, v2, v3}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->isAnyoneListeningForBubblingEvent(Ljava/util/List;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;)Z

    move-result v2

    .line 203
    .local v2, "listeningForOver":Z
    if-eqz v2, :cond_0

    .line 204
    nop

    .line 205
    const-string/jumbo v3, "topPointerOver"

    invoke-static {v3, p1, p2, p3}, Lcom/facebook/react/uimanager/events/PointerEvent;->obtain(Ljava/lang/String;ILcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;Landroid/view/MotionEvent;)Lcom/facebook/react/uimanager/events/PointerEvent;

    move-result-object v3

    .line 204
    invoke-interface {p4, v3}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 209
    :cond_0
    sget-object v3, Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;->ENTER:Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;

    sget-object v4, Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;->ENTER_CAPTURE:Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;

    .line 210
    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->filterByShouldDispatch(Ljava/util/List;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;Z)Ljava/util/List;

    move-result-object v3

    .line 213
    .local v3, "enterViewTargets":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;>;"
    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 214
    const-string/jumbo v4, "topPointerEnter"

    invoke-static {v4, p2, p3, v3, p4}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->dispatchEventForViewTargets(Ljava/lang/String;Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;Landroid/view/MotionEvent;Ljava/util/List;Lcom/facebook/react/uimanager/events/EventDispatcher;)V

    .line 223
    .end local v2    # "listeningForOver":Z
    .end local v3    # "enterViewTargets":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;>;"
    :cond_1
    sget-object v2, Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;->CLICK:Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;

    sget-object v3, Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;->CLICK_CAPTURE:Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;

    invoke-static {v0, v2, v3}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->isAnyoneListeningForBubblingEvent(Ljava/util/List;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 224
    iget-object v2, p0, Lcom/facebook/react/uimanager/JSPointerDispatcher;->mCurrentlyDownPointerIdsToHitPath:Ljava/util/Map;

    .line 225
    invoke-virtual {p2}, Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;->getActivePointerId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 224
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_2
    sget-object v2, Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;->DOWN:Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;

    sget-object v3, Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;->DOWN_CAPTURE:Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;

    .line 229
    invoke-static {v0, v2, v3}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->isAnyoneListeningForBubblingEvent(Ljava/util/List;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;)Z

    move-result v2

    .line 230
    .local v2, "listeningForDown":Z
    if-eqz v2, :cond_3

    .line 231
    nop

    .line 232
    const-string/jumbo v3, "topPointerDown"

    invoke-static {v3, p1, p2, p3}, Lcom/facebook/react/uimanager/events/PointerEvent;->obtain(Ljava/lang/String;ILcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;Landroid/view/MotionEvent;)Lcom/facebook/react/uimanager/events/PointerEvent;

    move-result-object v3

    .line 231
    invoke-interface {p4, v3}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 235
    :cond_3
    return-void
.end method

.method private onMove(ILcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;Landroid/view/MotionEvent;Lcom/facebook/react/uimanager/events/EventDispatcher;)V
    .locals 5
    .param p1, "targetTag"    # I
    .param p2, "eventState"    # Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;
    .param p3, "motionEvent"    # Landroid/view/MotionEvent;
    .param p4, "eventDispatcher"    # Lcom/facebook/react/uimanager/events/EventDispatcher;

    .line 587
    invoke-virtual {p2}, Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;->getActivePointerId()I

    move-result v0

    .line 588
    .local v0, "activePointerId":I
    invoke-virtual {p2}, Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;->getHitPathByPointerId()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 590
    .local v1, "activeHitPath":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;>;"
    sget-object v2, Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;->MOVE:Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;

    sget-object v3, Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;->MOVE_CAPTURE:Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;

    .line 591
    invoke-static {v1, v2, v3}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->isAnyoneListeningForBubblingEvent(Ljava/util/List;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;)Z

    move-result v2

    .line 592
    .local v2, "listeningToMove":Z
    if-eqz v2, :cond_0

    .line 593
    nop

    .line 599
    invoke-direct {p0}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->getCoalescingKey()S

    move-result v3

    .line 594
    const-string/jumbo v4, "topPointerMove"

    invoke-static {v4, p1, p2, p3, v3}, Lcom/facebook/react/uimanager/events/PointerEvent;->obtain(Ljava/lang/String;ILcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;Landroid/view/MotionEvent;S)Lcom/facebook/react/uimanager/events/PointerEvent;

    move-result-object v3

    .line 593
    invoke-interface {p4, v3}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 601
    :cond_0
    return-void
.end method

.method private onUp(ILcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;Landroid/view/MotionEvent;Lcom/facebook/react/uimanager/events/EventDispatcher;)V
    .locals 9
    .param p1, "activeTargetTag"    # I
    .param p2, "eventState"    # Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;
    .param p3, "motionEvent"    # Landroid/view/MotionEvent;
    .param p4, "eventDispatcher"    # Lcom/facebook/react/uimanager/events/EventDispatcher;

    .line 128
    invoke-virtual {p2}, Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;->getActivePointerId()I

    move-result v0

    .line 129
    .local v0, "activePointerId":I
    invoke-virtual {p2}, Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;->getHitPathByPointerId()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 131
    .local v1, "activeHitPath":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;>;"
    sget-object v2, Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;->UP:Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;

    sget-object v3, Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;->UP_CAPTURE:Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;

    .line 132
    invoke-static {v1, v2, v3}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->isAnyoneListeningForBubblingEvent(Ljava/util/List;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;)Z

    move-result v2

    .line 133
    .local v2, "listeningForUp":Z
    if-eqz v2, :cond_0

    .line 134
    nop

    .line 135
    const-string/jumbo v3, "topPointerUp"

    invoke-static {v3, p1, p2, p3}, Lcom/facebook/react/uimanager/events/PointerEvent;->obtain(Ljava/lang/String;ILcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;Landroid/view/MotionEvent;)Lcom/facebook/react/uimanager/events/PointerEvent;

    move-result-object v3

    .line 134
    invoke-interface {p4, v3}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 139
    :cond_0
    iget-object v3, p0, Lcom/facebook/react/uimanager/JSPointerDispatcher;->mHoveringPointerIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 141
    .local v3, "supportsHover":Z
    const/4 v4, 0x0

    if-nez v3, :cond_2

    .line 142
    sget-object v5, Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;->OUT:Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;

    sget-object v6, Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;->OUT_CAPTURE:Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;

    .line 143
    invoke-static {v1, v5, v6}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->isAnyoneListeningForBubblingEvent(Ljava/util/List;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;)Z

    move-result v5

    .line 144
    .local v5, "listeningForOut":Z
    if-eqz v5, :cond_1

    .line 145
    nop

    .line 146
    const-string/jumbo v6, "topPointerOut"

    invoke-static {v6, p1, p2, p3}, Lcom/facebook/react/uimanager/events/PointerEvent;->obtain(Ljava/lang/String;ILcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;Landroid/view/MotionEvent;)Lcom/facebook/react/uimanager/events/PointerEvent;

    move-result-object v6

    .line 145
    invoke-interface {p4, v6}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 150
    :cond_1
    sget-object v6, Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;->LEAVE:Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;

    sget-object v7, Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;->LEAVE_CAPTURE:Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;

    .line 151
    invoke-static {v1, v6, v7, v4}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->filterByShouldDispatch(Ljava/util/List;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;Z)Ljava/util/List;

    move-result-object v6

    .line 154
    .local v6, "leaveViewTargets":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;>;"
    const-string/jumbo v7, "topPointerLeave"

    invoke-static {v7, p2, p3, v6, p4}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->dispatchEventForViewTargets(Ljava/lang/String;Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;Landroid/view/MotionEvent;Ljava/util/List;Lcom/facebook/react/uimanager/events/EventDispatcher;)V

    .line 162
    .end local v5    # "listeningForOut":Z
    .end local v6    # "leaveViewTargets":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;>;"
    :cond_2
    iget-object v5, p0, Lcom/facebook/react/uimanager/JSPointerDispatcher;->mCurrentlyDownPointerIdsToHitPath:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 163
    .local v5, "hitPathDown":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;>;"
    if-eqz v5, :cond_3

    sget-object v6, Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;->CLICK:Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;

    sget-object v7, Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;->CLICK_CAPTURE:Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;

    .line 164
    invoke-static {v1, v6, v7}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->isAnyoneListeningForBubblingEvent(Ljava/util/List;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 165
    invoke-static {v5, v1}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->findHitPathIntersection(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 166
    .local v6, "hitPathForClick":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 167
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;

    .line 168
    .local v4, "clickTarget":Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;
    nop

    .line 170
    invoke-virtual {v4}, Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;->getViewId()I

    move-result v7

    .line 169
    const-string/jumbo v8, "topClick"

    invoke-static {v8, v7, p2, p3}, Lcom/facebook/react/uimanager/events/PointerEvent;->obtain(Ljava/lang/String;ILcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;Landroid/view/MotionEvent;)Lcom/facebook/react/uimanager/events/PointerEvent;

    move-result-object v7

    .line 168
    invoke-interface {p4, v7}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 174
    .end local v4    # "clickTarget":Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;
    .end local v6    # "hitPathForClick":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;>;"
    :cond_3
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_4

    .line 175
    const/4 v4, -0x1

    iput v4, p0, Lcom/facebook/react/uimanager/JSPointerDispatcher;->mPrimaryPointerId:I

    .line 177
    :cond_4
    iget-object v4, p0, Lcom/facebook/react/uimanager/JSPointerDispatcher;->mHoveringPointerIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 178
    return-void
.end method

.method private static qualifiedMove([F[F)Z
    .locals 5
    .param p0, "eventCoordinates"    # [F
    .param p1, "lastEventCoordinates"    # [F

    .line 462
    const/4 v0, 0x0

    aget v1, p1, v0

    aget v2, p0, v0

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3dcccccd    # 0.1f

    cmpl-float v1, v1, v2

    const/4 v3, 0x1

    if-gtz v1, :cond_0

    aget v1, p1, v3

    aget v4, p0, v3

    sub-float/2addr v1, v4

    .line 463
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    :cond_0
    move v0, v3

    .line 462
    :cond_1
    return v0
.end method


# virtual methods
.method public handleMotionEvent(Landroid/view/MotionEvent;Lcom/facebook/react/uimanager/events/EventDispatcher;Z)V
    .locals 16
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "eventDispatcher"    # Lcom/facebook/react/uimanager/events/EventDispatcher;
    .param p3, "isCapture"    # Z

    .line 283
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v0, Lcom/facebook/react/uimanager/JSPointerDispatcher;->mChildHandlingNativeGesture:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 284
    return-void

    .line 287
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 288
    .local v3, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 289
    .local v5, "activePointerId":I
    const/4 v6, 0x0

    if-nez v3, :cond_1

    .line 290
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, v0, Lcom/facebook/react/uimanager/JSPointerDispatcher;->mPrimaryPointerId:I

    goto :goto_0

    .line 291
    :cond_1
    const/4 v7, 0x7

    if-ne v3, v7, :cond_2

    .line 292
    iget-object v7, v0, Lcom/facebook/react/uimanager/JSPointerDispatcher;->mHoveringPointerIds:Ljava/util/Set;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 295
    :cond_2
    :goto_0
    invoke-direct {v0, v5, v1}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->createEventState(ILandroid/view/MotionEvent;)Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;

    move-result-object v7

    .line 303
    .local v7, "eventState":Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;
    const/4 v8, 0x1

    if-eqz p3, :cond_3

    .line 304
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/16 v10, 0xa

    if-ne v9, v10, :cond_3

    move v9, v8

    goto :goto_1

    :cond_3
    move v9, v6

    .line 312
    .local v9, "isExitFromRoot":Z
    :goto_1
    if-eqz v9, :cond_7

    .line 314
    iget-object v10, v0, Lcom/facebook/react/uimanager/JSPointerDispatcher;->mLastHitPathByPointerId:Ljava/util/Map;

    if-eqz v10, :cond_4

    .line 315
    iget-object v10, v0, Lcom/facebook/react/uimanager/JSPointerDispatcher;->mLastHitPathByPointerId:Ljava/util/Map;

    invoke-virtual {v7}, Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;->getActivePointerId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    goto :goto_2

    .line 316
    :cond_4
    const/4 v10, 0x0

    :goto_2
    nop

    .line 317
    .local v10, "lastHitPath":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;>;"
    if-eqz v10, :cond_6

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_5

    goto :goto_3

    .line 320
    :cond_5
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v8

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;

    .line 321
    .local v11, "activeTarget":Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;
    invoke-virtual {v11}, Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;->getViewId()I

    move-result v12

    .line 322
    .local v12, "activeTargetTag":I
    invoke-virtual {v11}, Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;->getView()Landroid/view/View;

    move-result-object v13

    .line 325
    .local v13, "activeTargetView":Landroid/view/View;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .local v14, "activeHitPath":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;>;"
    invoke-virtual {v7}, Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;->getHitPathByPointerId()Ljava/util/Map;

    move-result-object v15

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v15, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    .end local v10    # "lastHitPath":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;>;"
    .end local v11    # "activeTarget":Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;
    goto :goto_4

    .line 318
    .end local v12    # "activeTargetTag":I
    .end local v13    # "activeTargetView":Landroid/view/View;
    .end local v14    # "activeHitPath":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;>;"
    .restart local v10    # "lastHitPath":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;>;"
    :cond_6
    :goto_3
    return-void

    .line 328
    .end local v10    # "lastHitPath":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;>;"
    :cond_7
    invoke-virtual {v7}, Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;->getHitPathByPointerId()Ljava/util/Map;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Ljava/util/List;

    .line 329
    .restart local v14    # "activeHitPath":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;>;"
    if-eqz v14, :cond_c

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    goto/16 :goto_7

    .line 332
    :cond_8
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;

    .line 333
    .local v4, "activeTarget":Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;
    invoke-virtual {v4}, Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;->getViewId()I

    move-result v12

    .line 334
    .restart local v12    # "activeTargetTag":I
    invoke-virtual {v4}, Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;->getView()Landroid/view/View;

    move-result-object v13

    .line 337
    .end local v4    # "activeTarget":Lcom/facebook/react/uimanager/TouchTargetHelper$ViewTarget;
    .restart local v13    # "activeTargetView":Landroid/view/View;
    :goto_4
    invoke-direct {v0, v12, v7, v1, v2}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->handleHitStateDivergence(ILcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;Landroid/view/MotionEvent;Lcom/facebook/react/uimanager/events/EventDispatcher;)V

    .line 341
    packed-switch v3, :pswitch_data_0

    .line 385
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Motion Event was ignored. Action="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " Target="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "ReactNative"

    invoke-static {v6, v4}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    return-void

    .line 379
    :pswitch_1
    if-eqz v9, :cond_b

    .line 381
    invoke-direct {v0, v12, v7, v1, v2}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->onMove(ILcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;Landroid/view/MotionEvent;Lcom/facebook/react/uimanager/events/EventDispatcher;)V

    goto :goto_6

    .line 375
    :pswitch_2
    return-void

    .line 349
    :pswitch_3
    invoke-virtual {v7}, Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;->getEventCoordinatesByPointerId()Ljava/util/Map;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    .line 352
    .local v4, "eventCoordinates":[F
    iget-object v10, v0, Lcom/facebook/react/uimanager/JSPointerDispatcher;->mLastEventCoordinatesByPointerId:Ljava/util/Map;

    if-eqz v10, :cond_9

    iget-object v10, v0, Lcom/facebook/react/uimanager/JSPointerDispatcher;->mLastEventCoordinatesByPointerId:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 353
    iget-object v6, v0, Lcom/facebook/react/uimanager/JSPointerDispatcher;->mLastEventCoordinatesByPointerId:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    goto :goto_5

    .line 354
    :cond_9
    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v11, v10, v6

    aput v11, v10, v8

    move-object v6, v10

    :goto_5
    nop

    .line 355
    .local v6, "lastEventCoordinates":[F
    invoke-static {v4, v6}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->qualifiedMove([F[F)Z

    move-result v8

    if-nez v8, :cond_a

    .line 356
    return-void

    .line 359
    :cond_a
    invoke-direct {v0, v12, v7, v1, v2}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->onMove(ILcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;Landroid/view/MotionEvent;Lcom/facebook/react/uimanager/events/EventDispatcher;)V

    .line 360
    goto :goto_6

    .line 370
    .end local v4    # "eventCoordinates":[F
    .end local v6    # "lastEventCoordinates":[F
    :pswitch_4
    invoke-direct {v0, v13, v7, v1, v2}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->dispatchCancelEventForTarget(Landroid/view/View;Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;Landroid/view/MotionEvent;Lcom/facebook/react/uimanager/events/EventDispatcher;)V

    .line 371
    const/4 v4, -0x1

    invoke-direct {v0, v4, v7, v1, v2}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->handleHitStateDivergence(ILcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;Landroid/view/MotionEvent;Lcom/facebook/react/uimanager/events/EventDispatcher;)V

    .line 372
    goto :goto_6

    .line 362
    :pswitch_5
    invoke-direct {v0, v12, v7, v1, v2}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->onMove(ILcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;Landroid/view/MotionEvent;Lcom/facebook/react/uimanager/events/EventDispatcher;)V

    .line 363
    goto :goto_6

    .line 366
    :pswitch_6
    invoke-direct/range {p0 .. p0}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->incrementCoalescingKey()V

    .line 367
    invoke-direct {v0, v12, v7, v1, v2}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->onUp(ILcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;Landroid/view/MotionEvent;Lcom/facebook/react/uimanager/events/EventDispatcher;)V

    .line 368
    goto :goto_6

    .line 344
    :pswitch_7
    invoke-direct {v0, v12, v7, v1, v2}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->onDown(ILcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;Landroid/view/MotionEvent;Lcom/facebook/react/uimanager/events/EventDispatcher;)V

    .line 345
    nop

    .line 392
    :cond_b
    :goto_6
    new-instance v4, Ljava/util/HashMap;

    .line 393
    invoke-virtual {v7}, Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;->getEventCoordinatesByPointerId()Ljava/util/Map;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 394
    .local v4, "nextEventCoordinatesByPointerId":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[F>;"
    iput-object v4, v0, Lcom/facebook/react/uimanager/JSPointerDispatcher;->mLastEventCoordinatesByPointerId:Ljava/util/Map;

    .line 395
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v6

    iput v6, v0, Lcom/facebook/react/uimanager/JSPointerDispatcher;->mLastButtonState:I

    .line 398
    iget-object v6, v0, Lcom/facebook/react/uimanager/JSPointerDispatcher;->mLastEventCoordinatesByPointerId:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 399
    .local v6, "allPointerIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v8, v0, Lcom/facebook/react/uimanager/JSPointerDispatcher;->mHoveringPointerIds:Ljava/util/Set;

    invoke-interface {v8, v6}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 400
    return-void

    .line 330
    .end local v4    # "nextEventCoordinatesByPointerId":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[F>;"
    .end local v6    # "allPointerIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v12    # "activeTargetTag":I
    .end local v13    # "activeTargetView":Landroid/view/View;
    :cond_c
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onChildEndedNativeGesture()V
    .locals 1

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/react/uimanager/JSPointerDispatcher;->mChildHandlingNativeGesture:I

    .line 96
    return-void
.end method

.method public onChildStartedNativeGesture(Landroid/view/View;Landroid/view/MotionEvent;Lcom/facebook/react/uimanager/events/EventDispatcher;)V
    .locals 2
    .param p1, "childView"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;
    .param p3, "eventDispatcher"    # Lcom/facebook/react/uimanager/events/EventDispatcher;

    .line 65
    iget v0, p0, Lcom/facebook/react/uimanager/JSPointerDispatcher;->mChildHandlingNativeGesture:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->convertMotionToRootFrame(Landroid/view/View;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 73
    .local v0, "motionInRoot":Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 74
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p3, v1}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->handleMotionEvent(Landroid/view/MotionEvent;Lcom/facebook/react/uimanager/events/EventDispatcher;Z)V

    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, p0, Lcom/facebook/react/uimanager/JSPointerDispatcher;->mChildHandlingNativeGesture:I

    .line 77
    return-void

    .line 69
    .end local v0    # "motionInRoot":Landroid/view/MotionEvent;
    :cond_1
    :goto_0
    return-void
.end method
