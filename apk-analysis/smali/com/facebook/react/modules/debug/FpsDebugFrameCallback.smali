.class public final Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;
.super Ljava/lang/Object;
.source "FpsDebugFrameCallback.kt"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/modules/debug/FpsDebugFrameCallback$Companion;,
        Lcom/facebook/react/modules/debug/FpsDebugFrameCallback$FpsInfo;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000b\u0018\u0000 22\u00020\u0001:\u000223B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u000fH\u0016J\u0006\u0010+\u001a\u00020\nJ\u0010\u0010,\u001a\u0004\u0018\u00010#2\u0006\u0010-\u001a\u00020\u000fJ\u0006\u0010.\u001a\u00020)J\u0012\u0010/\u001a\u00020)2\u0008\u0008\u0002\u0010 \u001a\u00020\u0012H\u0007J\u0006\u00100\u001a\u00020)J\u0006\u00101\u001a\u00020)R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0011\u001a\u00020\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0017\u001a\u00020\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0014R\u000e\u0010\u0019\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u001c\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u000cR\u0011\u0010\u001e\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\u000cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010!\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020#\u0018\u00010\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010$\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010\u000cR\u0010\u0010&\u001a\u0004\u0018\u00010\'X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00064"
    }
    d2 = {
        "Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;",
        "Landroid/view/Choreographer$FrameCallback;",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactContext;",
        "(Lcom/facebook/react/bridge/ReactContext;)V",
        "choreographer",
        "Landroid/view/Choreographer;",
        "didJSUpdateUiDuringFrameDetector",
        "Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetector;",
        "expectedNumFrames",
        "",
        "getExpectedNumFrames",
        "()I",
        "expectedNumFramesPrev",
        "firstFrameTime",
        "",
        "fourPlusFrameStutters",
        "fps",
        "",
        "getFps",
        "()D",
        "isRecordingFpsInfoAtEachFrame",
        "",
        "jsFPS",
        "getJsFPS",
        "lastFrameTime",
        "numFrameCallbacks",
        "numFrameCallbacksWithBatchDispatches",
        "numFrames",
        "getNumFrames",
        "numJSFrames",
        "getNumJSFrames",
        "targetFps",
        "timeToFps",
        "Ljava/util/TreeMap;",
        "Lcom/facebook/react/modules/debug/FpsDebugFrameCallback$FpsInfo;",
        "totalTimeMS",
        "getTotalTimeMS",
        "uiManagerModule",
        "Lcom/facebook/react/uimanager/UIManagerModule;",
        "doFrame",
        "",
        "l",
        "get4PlusFrameStutters",
        "getFpsInfo",
        "upToTimeMs",
        "reset",
        "start",
        "startAndRecordFpsAtEachFrame",
        "stop",
        "Companion",
        "FpsInfo",
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
.field private static final Companion:Lcom/facebook/react/modules/debug/FpsDebugFrameCallback$Companion;

.field private static final DEFAULT_FPS:D = 60.0


# instance fields
.field private choreographer:Landroid/view/Choreographer;

.field private final didJSUpdateUiDuringFrameDetector:Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetector;

.field private expectedNumFramesPrev:I

.field private firstFrameTime:J

.field private fourPlusFrameStutters:I

.field private isRecordingFpsInfoAtEachFrame:Z

.field private lastFrameTime:J

.field private numFrameCallbacks:I

.field private numFrameCallbacksWithBatchDispatches:I

.field private final reactContext:Lcom/facebook/react/bridge/ReactContext;

.field private targetFps:D

.field private timeToFps:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Long;",
            "Lcom/facebook/react/modules/debug/FpsDebugFrameCallback$FpsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final uiManagerModule:Lcom/facebook/react/uimanager/UIManagerModule;


# direct methods
.method public static synthetic $r8$lambda$Bqc5K9qXnPhwcSm2_8Rhy96Xrnc(Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;)V
    .locals 0

    invoke-static {p0}, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->start$lambda$0(Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MTt6eCzSJ1Giw5XPMry1o-89qmM(Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;)V
    .locals 0

    invoke-static {p0}, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->stop$lambda$1(Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->Companion:Lcom/facebook/react/modules/debug/FpsDebugFrameCallback$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 2
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;

    const-string/jumbo v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    .line 41
    iget-object v0, p0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    const-class v1, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/UIManagerModule;

    iput-object v0, p0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->uiManagerModule:Lcom/facebook/react/uimanager/UIManagerModule;

    .line 43
    new-instance v0, Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetector;

    invoke-direct {v0}, Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetector;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->didJSUpdateUiDuringFrameDetector:Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetector;

    .line 44
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->firstFrameTime:J

    .line 45
    iput-wide v0, p0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->lastFrameTime:J

    .line 51
    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    iput-wide v0, p0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->targetFps:D

    .line 27
    return-void
.end method

.method public static synthetic start$default(Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;DILjava/lang/Object;)V
    .locals 0

    .line 87
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    iget-wide p1, p0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->targetFps:D

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->start(D)V

    return-void
.end method

.method private static final start$lambda$0(Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;)V
    .locals 2
    .param p0, "this$0"    # Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->choreographer:Landroid/view/Choreographer;

    .line 98
    iget-object v0, p0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->choreographer:Landroid/view/Choreographer;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 99
    :cond_0
    return-void
.end method

.method private static final stop$lambda$1(Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;)V
    .locals 2
    .param p0, "this$0"    # Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->choreographer:Landroid/view/Choreographer;

    .line 116
    iget-object v0, p0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->choreographer:Landroid/view/Choreographer;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 117
    :cond_0
    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 19
    .param p1, "l"    # J

    .line 55
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-wide v3, v0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->firstFrameTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 56
    iput-wide v1, v0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->firstFrameTime:J

    .line 58
    :cond_0
    iget-wide v3, v0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->lastFrameTime:J

    .line 59
    .local v3, "lastFrameStartTime":J
    iput-wide v1, v0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->lastFrameTime:J

    .line 60
    iget-object v5, v0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->didJSUpdateUiDuringFrameDetector:Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetector;

    invoke-virtual {v5, v3, v4, v1, v2}, Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetector;->getDidJSHitFrameAndCleanup(JJ)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 61
    iget v5, v0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->numFrameCallbacksWithBatchDispatches:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->numFrameCallbacksWithBatchDispatches:I

    .line 63
    :cond_1
    iget v5, v0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->numFrameCallbacks:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->numFrameCallbacks:I

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->getExpectedNumFrames()I

    move-result v5

    .line 65
    .local v5, "expectedNumFrames":I
    iget v6, v0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->expectedNumFramesPrev:I

    sub-int v6, v5, v6

    add-int/lit8 v15, v6, -0x1

    .line 66
    .local v15, "framesDropped":I
    const/4 v6, 0x4

    if-lt v15, v6, :cond_2

    .line 67
    iget v6, v0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->fourPlusFrameStutters:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->fourPlusFrameStutters:I

    .line 69
    :cond_2
    iget-boolean v6, v0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->isRecordingFpsInfoAtEachFrame:Z

    if-eqz v6, :cond_3

    .line 70
    iget-object v6, v0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->timeToFps:Ljava/util/TreeMap;

    invoke-static {v6}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance v16, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback$FpsInfo;

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->getNumFrames()I

    move-result v7

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->getNumJSFrames()I

    move-result v8

    .line 75
    nop

    .line 76
    iget v10, v0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->fourPlusFrameStutters:I

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->getFps()D

    move-result-wide v11

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->getJsFPS()D

    move-result-wide v13

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->getTotalTimeMS()I

    move-result v17

    .line 72
    move-object/from16 v6, v16

    move v9, v5

    move/from16 v18, v15

    .end local v15    # "framesDropped":I
    .local v18, "framesDropped":I
    move/from16 v15, v17

    invoke-direct/range {v6 .. v15}, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback$FpsInfo;-><init>(IIIIDDI)V

    .line 71
    nop

    .line 80
    .local v6, "info":Lcom/facebook/react/modules/debug/FpsDebugFrameCallback$FpsInfo;
    iget-object v7, v0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->timeToFps:Ljava/util/TreeMap;

    if-eqz v7, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback$FpsInfo;

    goto :goto_0

    .line 69
    .end local v6    # "info":Lcom/facebook/react/modules/debug/FpsDebugFrameCallback$FpsInfo;
    .end local v18    # "framesDropped":I
    .restart local v15    # "framesDropped":I
    :cond_3
    move/from16 v18, v15

    .line 82
    .end local v15    # "framesDropped":I
    .restart local v18    # "framesDropped":I
    :cond_4
    :goto_0
    iput v5, v0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->expectedNumFramesPrev:I

    .line 83
    iget-object v6, v0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->choreographer:Landroid/view/Choreographer;

    if-eqz v6, :cond_5

    move-object v7, v0

    check-cast v7, Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v6, v7}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 84
    :cond_5
    return-void
.end method

.method public final get4PlusFrameStutters()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->fourPlusFrameStutters:I

    return v0
.end method

.method public final getExpectedNumFrames()I
    .locals 6

    .line 140
    invoke-virtual {p0}, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->getTotalTimeMS()I

    move-result v0

    int-to-double v0, v0

    .line 141
    .local v0, "totalTimeMS":D
    iget-wide v2, p0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->targetFps:D

    mul-double/2addr v2, v0

    const/16 v4, 0x3e8

    int-to-double v4, v4

    div-double/2addr v2, v4

    const/4 v4, 0x1

    int-to-double v4, v4

    add-double/2addr v2, v4

    double-to-int v2, v2

    return v2
.end method

.method public final getFps()D
    .locals 6

    .line 122
    iget-wide v0, p0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->lastFrameTime:J

    iget-wide v2, p0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->firstFrameTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 123
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->getNumFrames()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->lastFrameTime:J

    iget-wide v4, p0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->firstFrameTime:J

    sub-long/2addr v2, v4

    long-to-double v2, v2

    div-double/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public final getFpsInfo(J)Lcom/facebook/react/modules/debug/FpsDebugFrameCallback$FpsInfo;
    .locals 3
    .param p1, "upToTimeMs"    # J

    .line 154
    iget-object v0, p0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->timeToFps:Ljava/util/TreeMap;

    const-string v1, "FPS was not recorded at each frame!"

    invoke-static {v0, v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->timeToFps:Ljava/util/TreeMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback$FpsInfo;

    .line 156
    .local v0, "value":Lcom/facebook/react/modules/debug/FpsDebugFrameCallback$FpsInfo;
    return-object v0
.end method

.method public final getJsFPS()D
    .locals 6

    .line 128
    iget-wide v0, p0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->lastFrameTime:J

    iget-wide v2, p0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->firstFrameTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 129
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->getNumJSFrames()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->lastFrameTime:J

    iget-wide v4, p0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->firstFrameTime:J

    sub-long/2addr v2, v4

    long-to-double v2, v2

    div-double/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public final getNumFrames()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->numFrameCallbacks:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final getNumJSFrames()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->numFrameCallbacksWithBatchDispatches:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final getTotalTimeMS()I
    .locals 4

    .line 147
    iget-wide v0, p0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->lastFrameTime:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->firstFrameTime:J

    long-to-double v2, v2

    sub-double/2addr v0, v2

    double-to-int v0, v0

    const v1, 0xf4240

    div-int/2addr v0, v1

    return v0
.end method

.method public final reset()V
    .locals 2

    .line 160
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->firstFrameTime:J

    .line 161
    iput-wide v0, p0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->lastFrameTime:J

    .line 162
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->numFrameCallbacks:I

    .line 163
    iput v0, p0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->fourPlusFrameStutters:I

    .line 164
    iput v0, p0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->numFrameCallbacksWithBatchDispatches:I

    .line 165
    iput-boolean v0, p0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->isRecordingFpsInfoAtEachFrame:Z

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->timeToFps:Ljava/util/TreeMap;

    .line 167
    return-void
.end method

.method public final start()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {p0, v2, v3, v0, v1}, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->start$default(Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;DILjava/lang/Object;)V

    return-void
.end method

.method public final start(D)V
    .locals 2
    .param p1, "targetFps"    # D

    .line 91
    iget-object v0, p0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->isBridgeless()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->getCatalystInstance()Lcom/facebook/react/bridge/CatalystInstance;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->didJSUpdateUiDuringFrameDetector:Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetector;

    check-cast v1, Lcom/facebook/react/bridge/NotThreadSafeBridgeIdleDebugListener;

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/CatalystInstance;->addBridgeIdleDebugListener(Lcom/facebook/react/bridge/NotThreadSafeBridgeIdleDebugListener;)V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->uiManagerModule:Lcom/facebook/react/uimanager/UIManagerModule;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->didJSUpdateUiDuringFrameDetector:Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetector;

    check-cast v1, Lcom/facebook/react/uimanager/debug/NotThreadSafeViewHierarchyUpdateDebugListener;

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/UIManagerModule;->setViewHierarchyUpdateDebugListener(Lcom/facebook/react/uimanager/debug/NotThreadSafeViewHierarchyUpdateDebugListener;)V

    .line 95
    :cond_1
    iput-wide p1, p0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->targetFps:D

    .line 96
    new-instance v0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback$$ExternalSyntheticLambda0;-><init>(Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    .line 100
    return-void
.end method

.method public final startAndRecordFpsAtEachFrame()V
    .locals 4

    .line 103
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->timeToFps:Ljava/util/TreeMap;

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->isRecordingFpsInfoAtEachFrame:Z

    .line 105
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v0, v3}, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->start$default(Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;DILjava/lang/Object;)V

    .line 106
    return-void
.end method

.method public final stop()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->isBridgeless()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->getCatalystInstance()Lcom/facebook/react/bridge/CatalystInstance;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->didJSUpdateUiDuringFrameDetector:Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetector;

    check-cast v1, Lcom/facebook/react/bridge/NotThreadSafeBridgeIdleDebugListener;

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/CatalystInstance;->removeBridgeIdleDebugListener(Lcom/facebook/react/bridge/NotThreadSafeBridgeIdleDebugListener;)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->uiManagerModule:Lcom/facebook/react/uimanager/UIManagerModule;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/UIManagerModule;->setViewHierarchyUpdateDebugListener(Lcom/facebook/react/uimanager/debug/NotThreadSafeViewHierarchyUpdateDebugListener;)V

    .line 114
    :cond_1
    new-instance v0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback$$ExternalSyntheticLambda1;-><init>(Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    .line 118
    return-void
.end method
