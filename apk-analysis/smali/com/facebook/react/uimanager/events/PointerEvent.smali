.class public Lcom/facebook/react/uimanager/events/PointerEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "PointerEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event<",
        "Lcom/facebook/react/uimanager/events/PointerEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final EVENTS_POOL:Landroidx/core/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$SynchronizedPool<",
            "Lcom/facebook/react/uimanager/events/PointerEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final POINTER_EVENTS_POOL_SIZE:I = 0x6

.field private static final TAG:Ljava/lang/String;

.field private static final UNSET_COALESCING_KEY:S = -0x1s


# instance fields
.field private mCoalescingKey:S

.field private mEventAnimationDriverMatchSpec:Lcom/facebook/react/uimanager/events/Event$EventAnimationDriverMatchSpec;

.field private mEventName:Ljava/lang/String;

.field private mEventState:Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;

.field private mMotionEvent:Landroid/view/MotionEvent;

.field private mPointersEventData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/react/bridge/WritableMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmEventName(Lcom/facebook/react/uimanager/events/PointerEvent;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/react/uimanager/events/PointerEvent;->mEventName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEventState(Lcom/facebook/react/uimanager/events/PointerEvent;)Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;
    .locals 0

    iget-object p0, p0, Lcom/facebook/react/uimanager/events/PointerEvent;->mEventState:Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 28
    const-class v0, Lcom/facebook/react/uimanager/events/PointerEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/react/uimanager/events/PointerEvent;->TAG:Ljava/lang/String;

    .line 30
    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/facebook/react/uimanager/events/PointerEvent;->EVENTS_POOL:Landroidx/core/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Lcom/facebook/react/uimanager/events/Event;-><init>()V

    .line 69
    const/4 v0, -0x1

    iput-short v0, p0, Lcom/facebook/react/uimanager/events/PointerEvent;->mCoalescingKey:S

    .line 88
    return-void
.end method

.method private addModifierKeyData(Lcom/facebook/react/bridge/WritableMap;I)V
    .locals 4
    .param p1, "pointerEvent"    # Lcom/facebook/react/bridge/WritableMap;
    .param p2, "modifierKeyMask"    # I

    .line 189
    and-int/lit16 v0, p2, 0x1000

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "ctrlKey"

    invoke-interface {p1, v3, v0}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 190
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string/jumbo v3, "shiftKey"

    invoke-interface {p1, v3, v0}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 191
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    const-string v3, "altKey"

    invoke-interface {p1, v3, v0}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 192
    const/high16 v0, 0x10000

    and-int/2addr v0, p2

    if-eqz v0, :cond_3

    move v1, v2

    :cond_3
    const-string v0, "metaKey"

    invoke-interface {p1, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 193
    return-void
.end method

.method private createPointersEventData()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/react/bridge/WritableMap;",
            ">;"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/PointerEvent;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 279
    .local v0, "activePointerIndex":I
    const/4 v1, 0x0

    .line 280
    .local v1, "pointersEventData":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/bridge/WritableMap;>;"
    iget-object v2, p0, Lcom/facebook/react/uimanager/events/PointerEvent;->mEventName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string/jumbo v3, "topPointerOut"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_1
    const-string/jumbo v3, "topPointerCancel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v5

    goto :goto_1

    :sswitch_2
    const-string/jumbo v3, "topClick"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto :goto_1

    :sswitch_3
    const-string/jumbo v3, "topPointerUp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_4
    const-string/jumbo v3, "topPointerOver"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    goto :goto_1

    :sswitch_5
    const-string/jumbo v3, "topPointerMove"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_1

    :sswitch_6
    const-string/jumbo v3, "topPointerDown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_7
    const-string/jumbo v3, "topPointerLeave"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_8
    const-string/jumbo v3, "topPointerEnter"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :goto_0
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 294
    :pswitch_0
    new-array v2, v5, [Lcom/facebook/react/bridge/WritableMap;

    invoke-direct {p0, v0}, Lcom/facebook/react/uimanager/events/PointerEvent;->createW3CPointerEvent(I)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_2

    .line 284
    :pswitch_1
    invoke-direct {p0}, Lcom/facebook/react/uimanager/events/PointerEvent;->createW3CPointerEvents()Ljava/util/List;

    move-result-object v1

    .line 285
    nop

    .line 298
    :goto_2
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a7c0b70 -> :sswitch_8
        -0x6a1dc391 -> :sswitch_7
        -0x4dc26016 -> :sswitch_6
        -0x4dbe48e7 -> :sswitch_5
        -0x4dbd47e4 -> :sswitch_4
        -0x3f7b441d -> :sswitch_3
        -0x3b225ecd -> :sswitch_2
        0x16d6f7c2 -> :sswitch_1
        0x5012ab06 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private createW3CPointerEvent(I)Lcom/facebook/react/bridge/WritableMap;
    .locals 23
    .param p1, "index"    # I

    .line 196
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 197
    .local v2, "pointerEvent":Lcom/facebook/react/bridge/WritableMap;
    iget-object v3, v0, Lcom/facebook/react/uimanager/events/PointerEvent;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 200
    .local v3, "pointerId":I
    const-string/jumbo v4, "pointerId"

    int-to-double v5, v3

    invoke-interface {v2, v4, v5, v6}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 202
    iget-object v4, v0, Lcom/facebook/react/uimanager/events/PointerEvent;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    invoke-static {v4}, Lcom/facebook/react/uimanager/events/PointerEventHelper;->getW3CPointerType(I)Ljava/lang/String;

    move-result-object v4

    .line 203
    .local v4, "pointerType":Ljava/lang/String;
    const-string/jumbo v5, "pointerType"

    invoke-interface {v2, v5, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    nop

    .line 206
    invoke-direct/range {p0 .. p0}, Lcom/facebook/react/uimanager/events/PointerEvent;->isClickEvent()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_1

    iget-object v5, v0, Lcom/facebook/react/uimanager/events/PointerEvent;->mEventState:Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;

    .line 207
    invoke-virtual {v5, v3}, Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;->supportsHover(I)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v0, Lcom/facebook/react/uimanager/events/PointerEvent;->mEventState:Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;

    invoke-static {v5}, Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;->-$$Nest$fgetmPrimaryPointerId(Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;)I

    move-result v5

    if-ne v3, v5, :cond_1

    :cond_0
    move v5, v6

    goto :goto_0

    :cond_1
    move v5, v7

    .line 208
    .local v5, "isPrimary":Z
    :goto_0
    const-string v8, "isPrimary"

    invoke-interface {v2, v8, v5}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 213
    iget-object v8, v0, Lcom/facebook/react/uimanager/events/PointerEvent;->mEventState:Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;

    invoke-virtual {v8}, Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;->getEventCoordinatesByPointerId()Ljava/util/Map;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [F

    .line 214
    .local v8, "eventCoords":[F
    aget v9, v8, v7

    invoke-static {v9}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v9

    float-to-double v9, v9

    .line 215
    .local v9, "clientX":D
    aget v11, v8, v6

    invoke-static {v11}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v11

    float-to-double v11, v11

    .line 216
    .local v11, "clientY":D
    const-string v13, "clientX"

    invoke-interface {v2, v13, v9, v10}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 217
    const-string v13, "clientY"

    invoke-interface {v2, v13, v11, v12}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 219
    iget-object v13, v0, Lcom/facebook/react/uimanager/events/PointerEvent;->mEventState:Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;

    invoke-virtual {v13}, Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;->getScreenCoordinatesByPointerId()Ljava/util/Map;

    move-result-object v13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [F

    .line 220
    .local v13, "screenCoords":[F
    aget v14, v13, v7

    invoke-static {v14}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v14

    float-to-double v14, v14

    .line 221
    .local v14, "screenX":D
    aget v16, v13, v6

    invoke-static/range {v16 .. v16}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v6

    move-object/from16 v18, v8

    .end local v8    # "eventCoords":[F
    .local v18, "eventCoords":[F
    float-to-double v7, v6

    .line 222
    .local v7, "screenY":D
    const-string/jumbo v6, "screenX"

    invoke-interface {v2, v6, v14, v15}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 223
    const-string/jumbo v6, "screenY"

    invoke-interface {v2, v6, v7, v8}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 226
    const-string/jumbo v6, "x"

    invoke-interface {v2, v6, v9, v10}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 227
    const-string/jumbo v6, "y"

    invoke-interface {v2, v6, v11, v12}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 230
    const-string/jumbo v6, "pageX"

    invoke-interface {v2, v6, v9, v10}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 231
    const-string/jumbo v6, "pageY"

    invoke-interface {v2, v6, v11, v12}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 234
    iget-object v6, v0, Lcom/facebook/react/uimanager/events/PointerEvent;->mEventState:Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;

    invoke-virtual {v6}, Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;->getOffsetByPointerId()Ljava/util/Map;

    move-result-object v6

    move/from16 v19, v5

    .end local v5    # "isPrimary":Z
    .local v19, "isPrimary":Z
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [F

    .line 235
    .local v5, "offsetCoords":[F
    const/4 v6, 0x0

    aget v20, v5, v6

    invoke-static/range {v20 .. v20}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v6

    move-wide/from16 v20, v7

    .end local v7    # "screenY":D
    .local v20, "screenY":D
    float-to-double v6, v6

    const-string/jumbo v8, "offsetX"

    invoke-interface {v2, v8, v6, v7}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 236
    const/4 v6, 0x1

    aget v6, v5, v6

    invoke-static {v6}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v6

    float-to-double v6, v6

    const-string/jumbo v8, "offsetY"

    invoke-interface {v2, v8, v6, v7}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 238
    const-string/jumbo v6, "target"

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/uimanager/events/PointerEvent;->getViewTag()I

    move-result v7

    invoke-interface {v2, v6, v7}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/uimanager/events/PointerEvent;->getTimestampMs()J

    move-result-wide v6

    long-to-double v6, v6

    const-string/jumbo v8, "timestamp"

    invoke-interface {v2, v8, v6, v7}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 241
    const-string v6, "detail"

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 242
    const-string/jumbo v6, "tiltX"

    const-wide/16 v7, 0x0

    invoke-interface {v2, v6, v7, v8}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 243
    const-string/jumbo v6, "tiltY"

    invoke-interface {v2, v6, v7, v8}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 245
    const-string/jumbo v6, "twist"

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 247
    const-string v6, "mouse"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "height"

    const-string/jumbo v8, "width"

    if-nez v6, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/facebook/react/uimanager/events/PointerEvent;->isClickEvent()Z

    move-result v6

    if-eqz v6, :cond_2

    move-wide/from16 v16, v9

    goto :goto_1

    .line 251
    :cond_2
    iget-object v6, v0, Lcom/facebook/react/uimanager/events/PointerEvent;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v6, v1}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v6

    invoke-static {v6}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v6

    .line 252
    .local v6, "majorAxis":F
    move-wide/from16 v16, v9

    .end local v9    # "clientX":D
    .local v16, "clientX":D
    float-to-double v9, v6

    invoke-interface {v2, v8, v9, v10}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 253
    float-to-double v8, v6

    invoke-interface {v2, v7, v8, v9}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    goto :goto_2

    .line 247
    .end local v6    # "majorAxis":F
    .end local v16    # "clientX":D
    .restart local v9    # "clientX":D
    :cond_3
    move-wide/from16 v16, v9

    .line 248
    .end local v9    # "clientX":D
    .restart local v16    # "clientX":D
    :goto_1
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    invoke-interface {v2, v8, v9, v10}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 249
    invoke-interface {v2, v7, v9, v10}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 256
    :goto_2
    iget-object v6, v0, Lcom/facebook/react/uimanager/events/PointerEvent;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v6

    .line 257
    .local v6, "buttonState":I
    iget-object v7, v0, Lcom/facebook/react/uimanager/events/PointerEvent;->mEventState:Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;

    .line 260
    invoke-virtual {v7}, Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;->getLastButtonState()I

    move-result v7

    .line 259
    invoke-static {v4, v7, v6}, Lcom/facebook/react/uimanager/events/PointerEventHelper;->getButtonChange(Ljava/lang/String;II)I

    move-result v7

    .line 257
    const-string v8, "button"

    invoke-interface {v2, v8, v7}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 261
    iget-object v7, v0, Lcom/facebook/react/uimanager/events/PointerEvent;->mEventName:Ljava/lang/String;

    .line 262
    invoke-static {v7, v4, v6}, Lcom/facebook/react/uimanager/events/PointerEventHelper;->getButtons(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    .line 261
    const-string v8, "buttons"

    invoke-interface {v2, v8, v7}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 265
    invoke-direct/range {p0 .. p0}, Lcom/facebook/react/uimanager/events/PointerEvent;->isClickEvent()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 266
    const-wide/16 v7, 0x0

    goto :goto_3

    .line 267
    :cond_4
    invoke-interface {v2, v8}, Lcom/facebook/react/bridge/WritableMap;->getInt(Ljava/lang/String;)I

    move-result v7

    iget-object v8, v0, Lcom/facebook/react/uimanager/events/PointerEvent;->mEventName:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/facebook/react/uimanager/events/PointerEventHelper;->getPressure(ILjava/lang/String;)D

    move-result-wide v7

    :goto_3
    nop

    .line 269
    .local v7, "pressure":D
    const-string/jumbo v9, "pressure"

    invoke-interface {v2, v9, v7, v8}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 270
    const-string/jumbo v9, "tangentialPressure"

    move v10, v3

    move-object/from16 v22, v4

    const-wide/16 v3, 0x0

    .end local v3    # "pointerId":I
    .end local v4    # "pointerType":Ljava/lang/String;
    .local v10, "pointerId":I
    .local v22, "pointerType":Ljava/lang/String;
    invoke-interface {v2, v9, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 272
    iget-object v3, v0, Lcom/facebook/react/uimanager/events/PointerEvent;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/facebook/react/uimanager/events/PointerEvent;->addModifierKeyData(Lcom/facebook/react/bridge/WritableMap;I)V

    .line 274
    return-object v2
.end method

.method private createW3CPointerEvents()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/react/bridge/WritableMap;",
            ">;"
        }
    .end annotation

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v0, "w3cPointerEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/react/bridge/WritableMap;>;"
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    iget-object v2, p0, Lcom/facebook/react/uimanager/events/PointerEvent;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 182
    invoke-direct {p0, v1}, Lcom/facebook/react/uimanager/events/PointerEvent;->createW3CPointerEvent(I)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    .end local v1    # "index":I
    :cond_0
    return-object v0
.end method

.method private init(Ljava/lang/String;ILcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;Landroid/view/MotionEvent;S)V
    .locals 3
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "targetTag"    # I
    .param p3, "eventState"    # Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;
    .param p4, "motionEventToCopy"    # Landroid/view/MotionEvent;
    .param p5, "coalescingKey"    # S

    .line 81
    invoke-virtual {p3}, Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;->getSurfaceId()I

    move-result v0

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-super {p0, v0, p2, v1, v2}, Lcom/facebook/react/uimanager/events/Event;->init(IIJ)V

    .line 82
    iput-object p1, p0, Lcom/facebook/react/uimanager/events/PointerEvent;->mEventName:Ljava/lang/String;

    .line 83
    invoke-static {p4}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/uimanager/events/PointerEvent;->mMotionEvent:Landroid/view/MotionEvent;

    .line 84
    iput-short p5, p0, Lcom/facebook/react/uimanager/events/PointerEvent;->mCoalescingKey:S

    .line 85
    iput-object p3, p0, Lcom/facebook/react/uimanager/events/PointerEvent;->mEventState:Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;

    .line 86
    return-void
.end method

.method private isClickEvent()Z
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/PointerEvent;->mEventName:Ljava/lang/String;

    const-string/jumbo v1, "topClick"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static obtain(Ljava/lang/String;ILcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;Landroid/view/MotionEvent;)Lcom/facebook/react/uimanager/events/PointerEvent;
    .locals 7
    .param p0, "eventName"    # Ljava/lang/String;
    .param p1, "targetTag"    # I
    .param p2, "eventState"    # Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;
    .param p3, "motionEventToCopy"    # Landroid/view/MotionEvent;

    .line 39
    sget-object v0, Lcom/facebook/react/uimanager/events/PointerEvent;->EVENTS_POOL:Landroidx/core/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroidx/core/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/events/PointerEvent;

    .line 40
    .local v0, "event":Lcom/facebook/react/uimanager/events/PointerEvent;
    if-nez v0, :cond_0

    .line 41
    new-instance v1, Lcom/facebook/react/uimanager/events/PointerEvent;

    invoke-direct {v1}, Lcom/facebook/react/uimanager/events/PointerEvent;-><init>()V

    move-object v0, v1

    .line 43
    :cond_0
    nop

    .line 44
    invoke-static {p3}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/view/MotionEvent;

    .line 43
    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/facebook/react/uimanager/events/PointerEvent;->init(Ljava/lang/String;ILcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;Landroid/view/MotionEvent;S)V

    .line 45
    return-object v0
.end method

.method public static obtain(Ljava/lang/String;ILcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;Landroid/view/MotionEvent;S)Lcom/facebook/react/uimanager/events/PointerEvent;
    .locals 7
    .param p0, "eventName"    # Ljava/lang/String;
    .param p1, "targetTag"    # I
    .param p2, "eventState"    # Lcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;
    .param p3, "motionEventToCopy"    # Landroid/view/MotionEvent;
    .param p4, "coalescingKey"    # S

    .line 54
    sget-object v0, Lcom/facebook/react/uimanager/events/PointerEvent;->EVENTS_POOL:Landroidx/core/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroidx/core/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/events/PointerEvent;

    .line 55
    .local v0, "event":Lcom/facebook/react/uimanager/events/PointerEvent;
    if-nez v0, :cond_0

    .line 56
    new-instance v1, Lcom/facebook/react/uimanager/events/PointerEvent;

    invoke-direct {v1}, Lcom/facebook/react/uimanager/events/PointerEvent;-><init>()V

    move-object v0, v1

    .line 58
    :cond_0
    nop

    .line 62
    invoke-static {p3}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/view/MotionEvent;

    .line 58
    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/facebook/react/uimanager/events/PointerEvent;->init(Ljava/lang/String;ILcom/facebook/react/uimanager/events/PointerEvent$PointerEventState;Landroid/view/MotionEvent;S)V

    .line 64
    return-object v0
.end method


# virtual methods
.method public dispatch(Lcom/facebook/react/uimanager/events/RCTEventEmitter;)V
    .locals 6
    .param p1, "rctEventEmitter"    # Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    .line 101
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/PointerEvent;->mMotionEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    .line 102
    sget-object v0, Lcom/facebook/react/uimanager/events/PointerEvent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot dispatch a Pointer that has no MotionEvent; the PointerEvehas been recycled"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/PointerEvent;->mPointersEventData:Ljava/util/List;

    if-nez v0, :cond_1

    .line 110
    invoke-direct {p0}, Lcom/facebook/react/uimanager/events/PointerEvent;->createPointersEventData()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/uimanager/events/PointerEvent;->mPointersEventData:Ljava/util/List;

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/PointerEvent;->mPointersEventData:Ljava/util/List;

    if-nez v0, :cond_2

    .line 115
    return-void

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/PointerEvent;->mPointersEventData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 119
    .local v0, "shouldCopy":Z
    iget-object v1, p0, Lcom/facebook/react/uimanager/events/PointerEvent;->mPointersEventData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/bridge/WritableMap;

    .line 120
    .local v2, "pointerEventData":Lcom/facebook/react/bridge/WritableMap;
    if-eqz v0, :cond_4

    invoke-interface {v2}, Lcom/facebook/react/bridge/WritableMap;->copy()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-object v3, v2

    .line 121
    .local v3, "eventData":Lcom/facebook/react/bridge/WritableMap;
    :goto_2
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/events/PointerEvent;->getViewTag()I

    move-result v4

    iget-object v5, p0, Lcom/facebook/react/uimanager/events/PointerEvent;->mEventName:Ljava/lang/String;

    invoke-interface {p1, v4, v5, v3}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 122
    .end local v2    # "pointerEventData":Lcom/facebook/react/bridge/WritableMap;
    .end local v3    # "eventData":Lcom/facebook/react/bridge/WritableMap;
    goto :goto_1

    .line 123
    :cond_5
    return-void
.end method

.method public dispatchModern(Lcom/facebook/react/uimanager/events/RCTModernEventEmitter;)V
    .locals 14
    .param p1, "rctEventEmitter"    # Lcom/facebook/react/uimanager/events/RCTModernEventEmitter;

    .line 308
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/PointerEvent;->mMotionEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    .line 309
    sget-object v0, Lcom/facebook/react/uimanager/events/PointerEvent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot dispatch a Pointer that has no MotionEvent; the PointerEvehas been recycled"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 314
    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/PointerEvent;->mPointersEventData:Ljava/util/List;

    if-nez v0, :cond_1

    .line 318
    invoke-direct {p0}, Lcom/facebook/react/uimanager/events/PointerEvent;->createPointersEventData()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/uimanager/events/PointerEvent;->mPointersEventData:Ljava/util/List;

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/PointerEvent;->mPointersEventData:Ljava/util/List;

    if-nez v0, :cond_2

    .line 323
    return-void

    .line 326
    :cond_2
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/PointerEvent;->mPointersEventData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    .line 327
    .local v0, "shouldCopy":Z
    :goto_0
    iget-object v3, p0, Lcom/facebook/react/uimanager/events/PointerEvent;->mPointersEventData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/bridge/WritableMap;

    .line 328
    .local v4, "pointerEventData":Lcom/facebook/react/bridge/WritableMap;
    if-eqz v0, :cond_4

    invoke-interface {v4}, Lcom/facebook/react/bridge/WritableMap;->copy()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v5

    move-object v12, v5

    goto :goto_2

    :cond_4
    move-object v12, v4

    .line 329
    .local v12, "eventData":Lcom/facebook/react/bridge/WritableMap;
    :goto_2
    nop

    .line 330
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/events/PointerEvent;->getSurfaceId()I

    move-result v7

    .line 331
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/events/PointerEvent;->getViewTag()I

    move-result v8

    iget-object v9, p0, Lcom/facebook/react/uimanager/events/PointerEvent;->mEventName:Ljava/lang/String;

    iget-short v5, p0, Lcom/facebook/react/uimanager/events/PointerEvent;->mCoalescingKey:S

    const/4 v6, -0x1

    if-eq v5, v6, :cond_5

    move v10, v2

    goto :goto_3

    :cond_5
    move v10, v1

    :goto_3
    iget-short v11, p0, Lcom/facebook/react/uimanager/events/PointerEvent;->mCoalescingKey:S

    iget-object v5, p0, Lcom/facebook/react/uimanager/events/PointerEvent;->mEventName:Ljava/lang/String;

    .line 336
    invoke-static {v5}, Lcom/facebook/react/uimanager/events/PointerEventHelper;->getEventCategory(Ljava/lang/String;)I

    move-result v13

    .line 329
    move-object v6, p1

    invoke-interface/range {v6 .. v13}, Lcom/facebook/react/uimanager/events/RCTModernEventEmitter;->receiveEvent(IILjava/lang/String;ZILcom/facebook/react/bridge/WritableMap;I)V

    .line 337
    .end local v4    # "pointerEventData":Lcom/facebook/react/bridge/WritableMap;
    .end local v12    # "eventData":Lcom/facebook/react/bridge/WritableMap;
    goto :goto_1

    .line 338
    :cond_6
    return-void
.end method

.method public getCoalescingKey()S
    .locals 1

    .line 303
    iget-short v0, p0, Lcom/facebook/react/uimanager/events/PointerEvent;->mCoalescingKey:S

    return v0
.end method

.method public getEventAnimationDriverMatchSpec()Lcom/facebook/react/uimanager/events/Event$EventAnimationDriverMatchSpec;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/PointerEvent;->mEventAnimationDriverMatchSpec:Lcom/facebook/react/uimanager/events/Event$EventAnimationDriverMatchSpec;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/facebook/react/uimanager/events/PointerEvent$1;

    invoke-direct {v0, p0}, Lcom/facebook/react/uimanager/events/PointerEvent$1;-><init>(Lcom/facebook/react/uimanager/events/PointerEvent;)V

    iput-object v0, p0, Lcom/facebook/react/uimanager/events/PointerEvent;->mEventAnimationDriverMatchSpec:Lcom/facebook/react/uimanager/events/Event$EventAnimationDriverMatchSpec;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/PointerEvent;->mEventAnimationDriverMatchSpec:Lcom/facebook/react/uimanager/events/Event$EventAnimationDriverMatchSpec;

    return-object v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/PointerEvent;->mEventName:Ljava/lang/String;

    return-object v0
.end method

.method public onDispose()V
    .locals 3

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/uimanager/events/PointerEvent;->mPointersEventData:Ljava/util/List;

    .line 157
    iget-object v1, p0, Lcom/facebook/react/uimanager/events/PointerEvent;->mMotionEvent:Landroid/view/MotionEvent;

    .line 158
    .local v1, "motionEvent":Landroid/view/MotionEvent;
    iput-object v0, p0, Lcom/facebook/react/uimanager/events/PointerEvent;->mMotionEvent:Landroid/view/MotionEvent;

    .line 159
    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 172
    :cond_0
    :try_start_0
    sget-object v0, Lcom/facebook/react/uimanager/events/PointerEvent;->EVENTS_POOL:Landroidx/core/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroidx/core/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v2, Lcom/facebook/react/uimanager/events/PointerEvent;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    return-void
.end method
