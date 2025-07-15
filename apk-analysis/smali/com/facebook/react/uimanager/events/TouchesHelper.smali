.class public Lcom/facebook/react/uimanager/events/TouchesHelper;
.super Ljava/lang/Object;
.source "TouchesHelper.java"


# static fields
.field private static final CHANGED_TOUCHES_KEY:Ljava/lang/String; = "changedTouches"

.field private static final LOCATION_X_KEY:Ljava/lang/String; = "locationX"

.field private static final LOCATION_Y_KEY:Ljava/lang/String; = "locationY"

.field private static final PAGE_X_KEY:Ljava/lang/String; = "pageX"

.field private static final PAGE_Y_KEY:Ljava/lang/String; = "pageY"

.field private static final POINTER_IDENTIFIER_KEY:Ljava/lang/String; = "identifier"

.field private static final TAG:Ljava/lang/String; = "TouchesHelper"

.field public static final TARGET_KEY:Ljava/lang/String; = "target"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TARGET_SURFACE_KEY:Ljava/lang/String; = "targetSurface"

.field private static final TIMESTAMP_KEY:Ljava/lang/String; = "timestamp"

.field private static final TOUCHES_KEY:Ljava/lang/String; = "touches"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createPointersArray(Lcom/facebook/react/uimanager/events/TouchEvent;)[Lcom/facebook/react/bridge/WritableMap;
    .locals 11
    .param p0, "event"    # Lcom/facebook/react/uimanager/events/TouchEvent;

    .line 43
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/events/TouchEvent;->getMotionEvent()Landroid/view/MotionEvent;

    move-result-object v0

    .line 44
    .local v0, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    new-array v1, v1, [Lcom/facebook/react/bridge/WritableMap;

    .line 53
    .local v1, "touches":[Lcom/facebook/react/bridge/WritableMap;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/react/uimanager/events/TouchEvent;->getViewX()F

    move-result v3

    sub-float/2addr v2, v3

    .line 54
    .local v2, "targetViewCoordinateX":F
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0}, Lcom/facebook/react/uimanager/events/TouchEvent;->getViewY()F

    move-result v4

    sub-float/2addr v3, v4

    .line 56
    .local v3, "targetViewCoordinateY":F
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 57
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v5

    .line 60
    .local v5, "touch":Lcom/facebook/react/bridge/WritableMap;
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-static {v6}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v6

    float-to-double v6, v6

    const-string/jumbo v8, "pageX"

    invoke-interface {v5, v8, v6, v7}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 61
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-static {v6}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v6

    float-to-double v6, v6

    const-string/jumbo v8, "pageY"

    invoke-interface {v5, v8, v6, v7}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 64
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    sub-float/2addr v6, v2

    .line 65
    .local v6, "locationX":F
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    sub-float/2addr v7, v3

    .line 66
    .local v7, "locationY":F
    invoke-static {v6}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v8

    float-to-double v8, v8

    const-string v10, "locationX"

    invoke-interface {v5, v10, v8, v9}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 67
    invoke-static {v7}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v8

    float-to-double v8, v8

    const-string v10, "locationY"

    invoke-interface {v5, v10, v8, v9}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 68
    const-string/jumbo v8, "targetSurface"

    invoke-virtual {p0}, Lcom/facebook/react/uimanager/events/TouchEvent;->getSurfaceId()I

    move-result v9

    invoke-interface {v5, v8, v9}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 69
    const-string/jumbo v8, "target"

    invoke-virtual {p0}, Lcom/facebook/react/uimanager/events/TouchEvent;->getViewTag()I

    move-result v9

    invoke-interface {v5, v8, v9}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 70
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/events/TouchEvent;->getTimestampMs()J

    move-result-wide v8

    long-to-double v8, v8

    const-string/jumbo v10, "timestamp"

    invoke-interface {v5, v10, v8, v9}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 71
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    int-to-double v8, v8

    const-string v10, "identifier"

    invoke-interface {v5, v10, v8, v9}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 73
    aput-object v5, v1, v4

    .line 56
    .end local v5    # "touch":Lcom/facebook/react/bridge/WritableMap;
    .end local v6    # "locationX":F
    .end local v7    # "locationY":F
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 76
    .end local v4    # "index":I
    :cond_0
    return-object v1
.end method

.method private static varargs getWritableArray(Z[Lcom/facebook/react/bridge/WritableMap;)Lcom/facebook/react/bridge/WritableArray;
    .locals 5
    .param p0, "copyObjects"    # Z
    .param p1, "objects"    # [Lcom/facebook/react/bridge/WritableMap;

    .line 196
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 197
    .local v0, "result":Lcom/facebook/react/bridge/WritableArray;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 198
    .local v3, "object":Lcom/facebook/react/bridge/WritableMap;
    if-eqz v3, :cond_1

    .line 199
    if-eqz p0, :cond_0

    invoke-interface {v3}, Lcom/facebook/react/bridge/WritableMap;->copy()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v4

    goto :goto_1

    :cond_0
    move-object v4, v3

    :goto_1
    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 197
    .end local v3    # "object":Lcom/facebook/react/bridge/WritableMap;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 202
    :cond_2
    return-object v0
.end method

.method static sendTouchEvent(Lcom/facebook/react/uimanager/events/RCTModernEventEmitter;Lcom/facebook/react/uimanager/events/TouchEvent;)V
    .locals 22
    .param p0, "eventEmitter"    # Lcom/facebook/react/uimanager/events/RCTModernEventEmitter;
    .param p1, "event"    # Lcom/facebook/react/uimanager/events/TouchEvent;

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TouchesHelper.sentTouchEventModern("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 124
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/react/uimanager/events/TouchEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v0}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 126
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/react/uimanager/events/TouchEvent;->getTouchEventType()Lcom/facebook/react/uimanager/events/TouchEventType;

    move-result-object v0

    .line 127
    .local v0, "type":Lcom/facebook/react/uimanager/events/TouchEventType;
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/react/uimanager/events/TouchEvent;->getMotionEvent()Landroid/view/MotionEvent;

    move-result-object v3

    .line 129
    .local v3, "motionEvent":Landroid/view/MotionEvent;
    if-nez v3, :cond_0

    .line 130
    const-string v4, "TouchesHelper"

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Cannot dispatch a TouchEvent that has no MotionEvent; the TouchEvent has been recycled"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 135
    return-void

    .line 138
    :cond_0
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/facebook/react/uimanager/events/TouchesHelper;->createPointersArray(Lcom/facebook/react/uimanager/events/TouchEvent;)[Lcom/facebook/react/bridge/WritableMap;

    move-result-object v4

    .line 139
    .local v4, "touches":[Lcom/facebook/react/bridge/WritableMap;
    const/4 v5, 0x0

    .line 141
    .local v5, "changedTouches":[Lcom/facebook/react/bridge/WritableMap;
    sget-object v6, Lcom/facebook/react/uimanager/events/TouchesHelper$1;->$SwitchMap$com$facebook$react$uimanager$events$TouchEventType:[I

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/events/TouchEventType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x1

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    .line 165
    :pswitch_0
    move-object v5, v4

    .line 166
    new-array v6, v7, [Lcom/facebook/react/bridge/WritableMap;

    move-object v4, v6

    goto :goto_1

    .line 159
    :pswitch_1
    array-length v6, v4

    new-array v6, v6, [Lcom/facebook/react/bridge/WritableMap;

    move-object v5, v6

    .line 160
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v9, v4

    if-ge v6, v9, :cond_1

    .line 161
    aget-object v9, v4, v6

    invoke-interface {v9}, Lcom/facebook/react/bridge/WritableMap;->copy()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v9

    aput-object v9, v5, v6

    .line 160
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 163
    .end local v6    # "i":I
    :cond_1
    goto :goto_1

    .line 148
    :pswitch_2
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    .line 153
    .local v6, "finishedPointerIndex":I
    aget-object v9, v4, v6

    .line 154
    .local v9, "finishedPointer":Lcom/facebook/react/bridge/WritableMap;
    const/4 v10, 0x0

    aput-object v10, v4, v6

    .line 156
    new-array v10, v8, [Lcom/facebook/react/bridge/WritableMap;

    aput-object v9, v10, v7

    move-object v5, v10

    .line 157
    goto :goto_1

    .line 143
    .end local v6    # "finishedPointerIndex":I
    .end local v9    # "finishedPointer":Lcom/facebook/react/bridge/WritableMap;
    :pswitch_3
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    .line 145
    .local v6, "newPointerIndex":I
    new-array v9, v8, [Lcom/facebook/react/bridge/WritableMap;

    aget-object v10, v4, v6

    invoke-interface {v10}, Lcom/facebook/react/bridge/WritableMap;->copy()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v10

    aput-object v10, v9, v7

    move-object v5, v9

    .line 146
    nop

    .line 170
    .end local v6    # "newPointerIndex":I
    :goto_1
    if-eqz v5, :cond_2

    .line 171
    array-length v6, v5

    :goto_2
    if-ge v7, v6, :cond_2

    aget-object v9, v5, v7

    .line 172
    .local v9, "touchData":Lcom/facebook/react/bridge/WritableMap;
    invoke-interface {v9}, Lcom/facebook/react/bridge/WritableMap;->copy()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v10

    .line 173
    .local v10, "eventData":Lcom/facebook/react/bridge/WritableMap;
    nop

    .line 174
    invoke-static {v8, v5}, Lcom/facebook/react/uimanager/events/TouchesHelper;->getWritableArray(Z[Lcom/facebook/react/bridge/WritableMap;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v11

    move-object v15, v11

    .line 175
    .local v15, "changedTouchesArray":Lcom/facebook/react/bridge/WritableArray;
    invoke-static {v8, v4}, Lcom/facebook/react/uimanager/events/TouchesHelper;->getWritableArray(Z[Lcom/facebook/react/bridge/WritableMap;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v11

    move-object v14, v11

    .line 177
    .local v14, "touchesArray":Lcom/facebook/react/bridge/WritableArray;
    const-string v11, "changedTouches"

    invoke-interface {v10, v11, v15}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 178
    const-string/jumbo v11, "touches"

    invoke-interface {v10, v11, v14}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 180
    nop

    .line 181
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/react/uimanager/events/TouchEvent;->getSurfaceId()I

    move-result v12

    .line 182
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/react/uimanager/events/TouchEvent;->getViewTag()I

    move-result v13

    .line 183
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/react/uimanager/events/TouchEvent;->getEventName()Ljava/lang/String;

    move-result-object v16

    .line 184
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/react/uimanager/events/TouchEvent;->canCoalesce()Z

    move-result v17

    .line 187
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/react/uimanager/events/TouchEvent;->getEventCategory()I

    move-result v18

    .line 180
    const/16 v19, 0x0

    move-object/from16 v11, p0

    move-object/from16 v20, v14

    .end local v14    # "touchesArray":Lcom/facebook/react/bridge/WritableArray;
    .local v20, "touchesArray":Lcom/facebook/react/bridge/WritableArray;
    move-object/from16 v14, v16

    move-object/from16 v21, v15

    .end local v15    # "changedTouchesArray":Lcom/facebook/react/bridge/WritableArray;
    .local v21, "changedTouchesArray":Lcom/facebook/react/bridge/WritableArray;
    move/from16 v15, v17

    move/from16 v16, v19

    move-object/from16 v17, v10

    invoke-interface/range {v11 .. v18}, Lcom/facebook/react/uimanager/events/RCTModernEventEmitter;->receiveEvent(IILjava/lang/String;ZILcom/facebook/react/bridge/WritableMap;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    .end local v9    # "touchData":Lcom/facebook/react/bridge/WritableMap;
    .end local v10    # "eventData":Lcom/facebook/react/bridge/WritableMap;
    .end local v20    # "touchesArray":Lcom/facebook/react/bridge/WritableArray;
    .end local v21    # "changedTouchesArray":Lcom/facebook/react/bridge/WritableArray;
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 191
    .end local v0    # "type":Lcom/facebook/react/uimanager/events/TouchEventType;
    .end local v3    # "motionEvent":Landroid/view/MotionEvent;
    .end local v4    # "touches":[Lcom/facebook/react/bridge/WritableMap;
    .end local v5    # "changedTouches":[Lcom/facebook/react/bridge/WritableMap;
    :cond_2
    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 192
    nop

    .line 193
    return-void

    .line 191
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 192
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static sendTouchesLegacy(Lcom/facebook/react/uimanager/events/RCTEventEmitter;Lcom/facebook/react/uimanager/events/TouchEvent;)V
    .locals 7
    .param p0, "rctEventEmitter"    # Lcom/facebook/react/uimanager/events/RCTEventEmitter;
    .param p1, "touchEvent"    # Lcom/facebook/react/uimanager/events/TouchEvent;

    .line 88
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/events/TouchEvent;->getTouchEventType()Lcom/facebook/react/uimanager/events/TouchEventType;

    move-result-object v0

    .line 90
    .local v0, "type":Lcom/facebook/react/uimanager/events/TouchEventType;
    nop

    .line 91
    invoke-static {p1}, Lcom/facebook/react/uimanager/events/TouchesHelper;->createPointersArray(Lcom/facebook/react/uimanager/events/TouchEvent;)[Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/facebook/react/uimanager/events/TouchesHelper;->getWritableArray(Z[Lcom/facebook/react/bridge/WritableMap;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    .line 92
    .local v1, "pointers":Lcom/facebook/react/bridge/WritableArray;
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/events/TouchEvent;->getMotionEvent()Landroid/view/MotionEvent;

    move-result-object v2

    .line 96
    .local v2, "motionEvent":Landroid/view/MotionEvent;
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v3

    .line 97
    .local v3, "changedIndices":Lcom/facebook/react/bridge/WritableArray;
    sget-object v4, Lcom/facebook/react/uimanager/events/TouchEventType;->MOVE:Lcom/facebook/react/uimanager/events/TouchEventType;

    if-eq v0, v4, :cond_3

    sget-object v4, Lcom/facebook/react/uimanager/events/TouchEventType;->CANCEL:Lcom/facebook/react/uimanager/events/TouchEventType;

    if-ne v0, v4, :cond_0

    goto :goto_1

    .line 101
    :cond_0
    sget-object v4, Lcom/facebook/react/uimanager/events/TouchEventType;->START:Lcom/facebook/react/uimanager/events/TouchEventType;

    if-eq v0, v4, :cond_2

    sget-object v4, Lcom/facebook/react/uimanager/events/TouchEventType;->END:Lcom/facebook/react/uimanager/events/TouchEventType;

    if-ne v0, v4, :cond_1

    goto :goto_0

    .line 104
    :cond_1
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown touch type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 102
    :cond_2
    :goto_0
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    goto :goto_3

    .line 98
    :cond_3
    :goto_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 99
    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    .line 98
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 107
    .end local v4    # "i":I
    :cond_4
    :goto_3
    invoke-static {v0}, Lcom/facebook/react/uimanager/events/TouchEventType;->getJSEventName(Lcom/facebook/react/uimanager/events/TouchEventType;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4, v1, v3}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveTouches(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;Lcom/facebook/react/bridge/WritableArray;)V

    .line 108
    return-void
.end method
