.class public Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/gesturehandler/core/ScaleGestureDetector$OnScaleGestureListener;,
        Lcom/swmansion/gesturehandler/core/ScaleGestureDetector$SimpleOnScaleGestureListener;
    }
.end annotation


# static fields
.field private static final ANCHORED_SCALE_MODE_DOUBLE_TAP:I = 0x1

.field private static final ANCHORED_SCALE_MODE_NONE:I = 0x0

.field private static final ANCHORED_SCALE_MODE_STYLUS:I = 0x2

.field private static final SCALE_FACTOR:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "ScaleGestureDetector"

.field private static final TOUCH_STABILIZE_TIME:J = 0x80L


# instance fields
.field private mAnchoredScaleMode:I

.field private mAnchoredScaleStartX:F

.field private mAnchoredScaleStartY:F

.field private final mContext:Landroid/content/Context;

.field private mCurrSpan:F

.field private mCurrSpanX:F

.field private mCurrSpanY:F

.field private mCurrTime:J

.field private mEventBeforeOrAboveStartingGestureEvent:Z

.field private mFocusX:F

.field private mFocusY:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mInProgress:Z

.field private mInitialSpan:F

.field private final mListener:Lcom/swmansion/gesturehandler/core/ScaleGestureDetector$OnScaleGestureListener;

.field private mMinSpan:I

.field private mPrevSpan:F

.field private mPrevSpanX:F

.field private mPrevSpanY:F

.field private mPrevTime:J

.field private mQuickScaleEnabled:Z

.field private mSpanSlop:I

.field private mStylusScaleEnabled:Z


# direct methods
.method static bridge synthetic -$$Nest$fputmAnchoredScaleMode(Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;I)V
    .locals 0

    iput p1, p0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mAnchoredScaleMode:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAnchoredScaleStartX(Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;F)V
    .locals 0

    iput p1, p0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mAnchoredScaleStartX:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAnchoredScaleStartY(Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;F)V
    .locals 0

    iput p1, p0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mAnchoredScaleStartY:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/swmansion/gesturehandler/core/ScaleGestureDetector$OnScaleGestureListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/swmansion/gesturehandler/core/ScaleGestureDetector$OnScaleGestureListener;

    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;-><init>(Landroid/content/Context;Lcom/swmansion/gesturehandler/core/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/swmansion/gesturehandler/core/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/swmansion/gesturehandler/core/ScaleGestureDetector$OnScaleGestureListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const/4 v0, 0x0

    iput v0, p0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mAnchoredScaleMode:I

    .line 185
    iput-object p1, p0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mContext:Landroid/content/Context;

    .line 186
    iput-object p2, p0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mListener:Lcom/swmansion/gesturehandler/core/ScaleGestureDetector$OnScaleGestureListener;

    .line 187
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 188
    .local v1, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mSpanSlop:I

    .line 189
    iput v0, p0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mMinSpan:I

    .line 190
    iput-object p3, p0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mHandler:Landroid/os/Handler;

    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 193
    .local v0, "targetSdkVersion":I
    const/16 v2, 0x12

    const/4 v3, 0x1

    if-le v0, v2, :cond_0

    .line 194
    invoke-virtual {p0, v3}, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    .line 197
    :cond_0
    const/16 v2, 0x16

    if-le v0, v2, :cond_1

    .line 198
    invoke-virtual {p0, v3}, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->setStylusScaleEnabled(Z)V

    .line 200
    :cond_1
    return-void
.end method

.method private inAnchoredScaleMode()Z
    .locals 1

    .line 370
    iget v0, p0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mAnchoredScaleMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getCurrentSpan()F
    .locals 1

    .line 466
    iget v0, p0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mCurrSpan:F

    return v0
.end method

.method public getCurrentSpanX()F
    .locals 1

    .line 476
    iget v0, p0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mCurrSpanX:F

    return v0
.end method

.method public getCurrentSpanY()F
    .locals 1

    .line 486
    iget v0, p0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mCurrSpanY:F

    return v0
.end method

.method public getEventTime()J
    .locals 2

    .line 566
    iget-wide v0, p0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mCurrTime:J

    return-wide v0
.end method

.method public getFocusX()F
    .locals 1

    .line 442
    iget v0, p0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mFocusX:F

    return v0
.end method

.method public getFocusY()F
    .locals 1

    .line 456
    iget v0, p0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mFocusY:F

    return v0
.end method

.method public getPreviousSpan()F
    .locals 1

    .line 496
    iget v0, p0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mPrevSpan:F

    return v0
.end method

.method public getPreviousSpanX()F
    .locals 1

    .line 506
    iget v0, p0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mPrevSpanX:F

    return v0
.end method

.method public getPreviousSpanY()F
    .locals 1

    .line 516
    iget v0, p0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mPrevSpanY:F

    return v0
.end method

.method public getScaleFactor()F
    .locals 5

    .line 527
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_5

    .line 531
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mCurrSpan:F

    iget v2, p0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mPrevSpan:F

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mCurrSpan:F

    iget v2, p0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mPrevSpan:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 534
    .local v0, "scaleUp":Z
    :goto_0
    iget v2, p0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mCurrSpan:F

    iget v3, p0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mPrevSpan:F

    div-float/2addr v2, v3

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    .line 535
    .local v2, "spanDiff":F
    iget v3, p0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mPrevSpan:F

    iget v4, p0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mSpanSlop:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    add-float/2addr v1, v2

    goto :goto_1

    :cond_4
    sub-float/2addr v1, v2

    :goto_1
    return v1

    .line 537
    .end local v0    # "scaleUp":Z
    .end local v2    # "spanDiff":F
    :cond_5
    iget v0, p0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mPrevSpan:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_6

    iget v0, p0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mCurrSpan:F

    iget v1, p0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mPrevSpan:F

    div-float v1, v0, v1

    :cond_6
    return v1
.end method

.method public getTimeDelta()J
    .locals 4

    .line 547
    iget-wide v0, p0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mCurrTime:J

    iget-wide v2, p0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mPrevTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTimeDeltaSeconds()D
    .locals 4

    .line 557
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->getTimeDelta()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public isInProgress()Z
    .locals 1

    .line 428
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mInProgress:Z

    return v0
.end method

.method public isQuickScaleEnabled()Z
    .locals 1

    .line 402
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mQuickScaleEnabled:Z

    return v0
.end method

.method public isStylusScaleEnabled()Z
    .locals 1

    .line 421
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mStylusScaleEnabled:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 28
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 215
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mCurrTime:J

    .line 217
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 220
    .local v2, "action":I
    iget-boolean v3, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mQuickScaleEnabled:Z

    if-eqz v3, :cond_0

    .line 221
    iget-object v3, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 224
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 225
    .local v3, "count":I
    nop

    .line 226
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    and-int/lit8 v4, v4, 0x20

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    move v4, v6

    goto :goto_0

    :cond_1
    move v4, v5

    .line 228
    .local v4, "isStylusButtonDown":Z
    :goto_0
    iget v7, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mAnchoredScaleMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    if-nez v4, :cond_2

    move v7, v6

    goto :goto_1

    :cond_2
    move v7, v5

    .line 230
    .local v7, "anchoredScaleCancelled":Z
    :goto_1
    if-eq v2, v6, :cond_4

    const/4 v9, 0x3

    if-eq v2, v9, :cond_4

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    move v9, v5

    goto :goto_3

    :cond_4
    :goto_2
    move v9, v6

    .line 233
    .local v9, "streamComplete":Z
    :goto_3
    const/4 v10, 0x0

    if-eqz v2, :cond_5

    if-eqz v9, :cond_8

    .line 237
    :cond_5
    iget-boolean v11, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mInProgress:Z

    if-eqz v11, :cond_6

    .line 238
    iget-object v11, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mListener:Lcom/swmansion/gesturehandler/core/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v11, v0}, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;)V

    .line 239
    iput-boolean v5, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mInProgress:Z

    .line 240
    iput v10, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mInitialSpan:F

    .line 241
    iput v5, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mAnchoredScaleMode:I

    goto :goto_4

    .line 242
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v11

    if-eqz v11, :cond_7

    if-eqz v9, :cond_7

    .line 243
    iput-boolean v5, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mInProgress:Z

    .line 244
    iput v10, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mInitialSpan:F

    .line 245
    iput v5, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mAnchoredScaleMode:I

    .line 248
    :cond_7
    :goto_4
    if-eqz v9, :cond_8

    .line 249
    return v6

    .line 253
    :cond_8
    iget-boolean v11, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mInProgress:Z

    if-nez v11, :cond_9

    iget-boolean v11, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mStylusScaleEnabled:Z

    if-eqz v11, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v11

    if-nez v11, :cond_9

    if-nez v9, :cond_9

    if-eqz v4, :cond_9

    .line 256
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    iput v11, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mAnchoredScaleStartX:F

    .line 257
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    iput v11, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mAnchoredScaleStartY:F

    .line 258
    iput v8, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mAnchoredScaleMode:I

    .line 259
    iput v10, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mInitialSpan:F

    .line 262
    :cond_9
    const/4 v10, 0x6

    if-eqz v2, :cond_b

    if-eq v2, v10, :cond_b

    const/4 v11, 0x5

    if-eq v2, v11, :cond_b

    if-eqz v7, :cond_a

    goto :goto_5

    :cond_a
    move v11, v5

    goto :goto_6

    :cond_b
    :goto_5
    move v11, v6

    .line 266
    .local v11, "configChanged":Z
    :goto_6
    if-ne v2, v10, :cond_c

    move v10, v6

    goto :goto_7

    :cond_c
    move v10, v5

    .line 267
    .local v10, "pointerUp":Z
    :goto_7
    if-eqz v10, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v12

    goto :goto_8

    :cond_d
    const/4 v12, -0x1

    .line 270
    .local v12, "skipIndex":I
    :goto_8
    const/4 v13, 0x0

    .local v13, "sumX":F
    const/4 v14, 0x0

    .line 271
    .local v14, "sumY":F
    if-eqz v10, :cond_e

    add-int/lit8 v15, v3, -0x1

    goto :goto_9

    :cond_e
    move v15, v3

    .line 274
    .local v15, "div":I
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v16

    if-eqz v16, :cond_10

    .line 277
    iget v8, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mAnchoredScaleStartX:F

    .line 278
    .local v8, "focusX":F
    iget v5, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mAnchoredScaleStartY:F

    .line 279
    .local v5, "focusY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    cmpg-float v18, v18, v5

    if-gez v18, :cond_f

    .line 280
    iput-boolean v6, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    goto :goto_c

    .line 282
    :cond_f
    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    goto :goto_c

    .line 285
    .end local v5    # "focusY":F
    .end local v8    # "focusX":F
    :cond_10
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_a
    if-ge v5, v3, :cond_12

    .line 286
    if-ne v12, v5, :cond_11

    goto :goto_b

    .line 287
    :cond_11
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    add-float/2addr v13, v6

    .line 288
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    add-float/2addr v14, v6

    .line 285
    :goto_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 291
    .end local v5    # "i":I
    :cond_12
    int-to-float v5, v15

    div-float v8, v13, v5

    .line 292
    .restart local v8    # "focusX":F
    int-to-float v5, v15

    div-float v5, v14, v5

    .line 296
    .local v5, "focusY":F
    :goto_c
    const/4 v6, 0x0

    .local v6, "devSumX":F
    const/16 v19, 0x0

    .line 297
    .local v19, "devSumY":F
    const/16 v20, 0x0

    move/from16 v27, v20

    move/from16 v20, v4

    move/from16 v4, v27

    .local v4, "i":I
    .local v20, "isStylusButtonDown":Z
    :goto_d
    if-ge v4, v3, :cond_14

    .line 298
    if-ne v12, v4, :cond_13

    goto :goto_e

    .line 301
    :cond_13
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v21

    sub-float v21, v21, v8

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    add-float v6, v6, v21

    .line 302
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v21

    sub-float v21, v21, v5

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    add-float v19, v19, v21

    .line 297
    :goto_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 304
    .end local v4    # "i":I
    :cond_14
    int-to-float v4, v15

    div-float v4, v6, v4

    .line 305
    .local v4, "devX":F
    int-to-float v1, v15

    div-float v1, v19, v1

    .line 310
    .local v1, "devY":F
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v22, v3

    .end local v3    # "count":I
    .local v22, "count":I
    mul-float v3, v4, v21

    .line 311
    .local v3, "spanX":F
    move/from16 v23, v4

    .end local v4    # "devX":F
    .local v23, "devX":F
    mul-float v4, v1, v21

    .line 313
    .local v4, "spanY":F
    invoke-direct/range {p0 .. p0}, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v21

    if-eqz v21, :cond_15

    .line 314
    move/from16 v21, v4

    move/from16 v24, v6

    move/from16 v25, v9

    move/from16 v26, v10

    move/from16 v6, v21

    move/from16 v21, v7

    .local v21, "span":F
    goto :goto_f

    .line 316
    .end local v21    # "span":F
    :cond_15
    move/from16 v24, v6

    move/from16 v21, v7

    .end local v6    # "devSumX":F
    .end local v7    # "anchoredScaleCancelled":Z
    .local v21, "anchoredScaleCancelled":Z
    .local v24, "devSumX":F
    float-to-double v6, v3

    move/from16 v25, v9

    move/from16 v26, v10

    .end local v9    # "streamComplete":Z
    .end local v10    # "pointerUp":Z
    .local v25, "streamComplete":Z
    .local v26, "pointerUp":Z
    float-to-double v9, v4

    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v6, v6

    .line 322
    .local v6, "span":F
    :goto_f
    iget-boolean v7, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mInProgress:Z

    .line 323
    .local v7, "wasInProgress":Z
    iput v8, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mFocusX:F

    .line 324
    iput v5, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mFocusY:F

    .line 325
    invoke-direct/range {p0 .. p0}, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v9

    if-nez v9, :cond_17

    iget-boolean v9, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mInProgress:Z

    if-eqz v9, :cond_17

    iget v9, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mMinSpan:I

    int-to-float v9, v9

    cmpg-float v9, v6, v9

    if-ltz v9, :cond_16

    if-eqz v11, :cond_17

    .line 326
    :cond_16
    iget-object v9, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mListener:Lcom/swmansion/gesturehandler/core/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v9, v0}, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;)V

    .line 327
    const/4 v9, 0x0

    iput-boolean v9, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mInProgress:Z

    .line 328
    iput v6, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mInitialSpan:F

    .line 330
    :cond_17
    if-eqz v11, :cond_18

    .line 331
    iput v3, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mCurrSpanX:F

    iput v3, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mPrevSpanX:F

    .line 332
    iput v4, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mCurrSpanY:F

    iput v4, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mPrevSpanY:F

    .line 333
    iput v6, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mCurrSpan:F

    iput v6, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mPrevSpan:F

    iput v6, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mInitialSpan:F

    .line 336
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v9

    if-eqz v9, :cond_19

    iget v9, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mSpanSlop:I

    goto :goto_10

    :cond_19
    iget v9, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mMinSpan:I

    .line 337
    .local v9, "minSpan":I
    :goto_10
    iget-boolean v10, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mInProgress:Z

    if-nez v10, :cond_1c

    int-to-float v10, v9

    cmpl-float v10, v6, v10

    if-ltz v10, :cond_1c

    if-nez v7, :cond_1b

    iget v10, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mInitialSpan:F

    sub-float v10, v6, v10

    .line 338
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    move/from16 v17, v1

    .end local v1    # "devY":F
    .local v17, "devY":F
    iget v1, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mSpanSlop:I

    int-to-float v1, v1

    cmpl-float v1, v10, v1

    if-lez v1, :cond_1a

    goto :goto_11

    :cond_1a
    move v10, v7

    move v1, v8

    goto :goto_12

    .line 337
    .end local v17    # "devY":F
    .restart local v1    # "devY":F
    :cond_1b
    move/from16 v17, v1

    .line 339
    .end local v1    # "devY":F
    .restart local v17    # "devY":F
    :goto_11
    iput v3, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mCurrSpanX:F

    iput v3, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mPrevSpanX:F

    .line 340
    iput v4, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mCurrSpanY:F

    iput v4, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mPrevSpanY:F

    .line 341
    iput v6, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mCurrSpan:F

    iput v6, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mPrevSpan:F

    .line 342
    move v10, v7

    move v1, v8

    .end local v7    # "wasInProgress":Z
    .end local v8    # "focusX":F
    .local v1, "focusX":F
    .local v10, "wasInProgress":Z
    iget-wide v7, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mCurrTime:J

    iput-wide v7, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mPrevTime:J

    .line 343
    iget-object v7, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mListener:Lcom/swmansion/gesturehandler/core/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v7, v0}, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;)Z

    move-result v7

    iput-boolean v7, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mInProgress:Z

    goto :goto_12

    .line 337
    .end local v10    # "wasInProgress":Z
    .end local v17    # "devY":F
    .local v1, "devY":F
    .restart local v7    # "wasInProgress":Z
    .restart local v8    # "focusX":F
    :cond_1c
    move/from16 v17, v1

    move v10, v7

    move v1, v8

    .line 347
    .end local v7    # "wasInProgress":Z
    .end local v8    # "focusX":F
    .local v1, "focusX":F
    .restart local v10    # "wasInProgress":Z
    .restart local v17    # "devY":F
    :goto_12
    const/4 v7, 0x2

    if-ne v2, v7, :cond_1f

    .line 348
    iput v3, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mCurrSpanX:F

    .line 349
    iput v4, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mCurrSpanY:F

    .line 350
    iput v6, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mCurrSpan:F

    .line 352
    const/4 v7, 0x1

    .line 354
    .local v7, "updatePrev":Z
    iget-boolean v8, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mInProgress:Z

    if-eqz v8, :cond_1d

    .line 355
    iget-object v8, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mListener:Lcom/swmansion/gesturehandler/core/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v8, v0}, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector$OnScaleGestureListener;->onScale(Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;)Z

    move-result v7

    .line 358
    :cond_1d
    if-eqz v7, :cond_1e

    .line 359
    iget v8, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mCurrSpanX:F

    iput v8, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mPrevSpanX:F

    .line 360
    iget v8, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mCurrSpanY:F

    iput v8, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mPrevSpanY:F

    .line 361
    iget v8, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mCurrSpan:F

    iput v8, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mPrevSpan:F

    .line 362
    move/from16 v16, v1

    move v8, v2

    .end local v1    # "focusX":F
    .end local v2    # "action":I
    .local v8, "action":I
    .local v16, "focusX":F
    iget-wide v1, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mCurrTime:J

    iput-wide v1, v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mPrevTime:J

    goto :goto_13

    .line 358
    .end local v8    # "action":I
    .end local v16    # "focusX":F
    .restart local v1    # "focusX":F
    .restart local v2    # "action":I
    :cond_1e
    move/from16 v16, v1

    move v8, v2

    .end local v1    # "focusX":F
    .end local v2    # "action":I
    .restart local v8    # "action":I
    .restart local v16    # "focusX":F
    goto :goto_13

    .line 347
    .end local v7    # "updatePrev":Z
    .end local v8    # "action":I
    .end local v16    # "focusX":F
    .restart local v1    # "focusX":F
    .restart local v2    # "action":I
    :cond_1f
    move/from16 v16, v1

    move v8, v2

    .line 366
    .end local v1    # "focusX":F
    .end local v2    # "action":I
    .restart local v8    # "action":I
    .restart local v16    # "focusX":F
    :goto_13
    const/4 v1, 0x1

    return v1
.end method

.method public setQuickScaleEnabled(Z)V
    .locals 4
    .param p1, "scales"    # Z

    .line 380
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mQuickScaleEnabled:Z

    .line 381
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mQuickScaleEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_0

    .line 382
    new-instance v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector$1;

    invoke-direct {v0, p0}, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector$1;-><init>(Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;)V

    .line 393
    .local v0, "gestureListener":Landroid/view/GestureDetector$SimpleOnGestureListener;
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v0, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    .line 395
    .end local v0    # "gestureListener":Landroid/view/GestureDetector$SimpleOnGestureListener;
    :cond_0
    return-void
.end method

.method public setStylusScaleEnabled(Z)V
    .locals 0
    .param p1, "scales"    # Z

    .line 413
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->mStylusScaleEnabled:Z

    .line 414
    return-void
.end method
