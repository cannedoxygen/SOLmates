.class public final Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;
.super Ljava/lang/Object;
.source "GestureHandlerOrchestrator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;,
        Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGestureHandlerOrchestrator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GestureHandlerOrchestrator.kt\ncom/swmansion/gesturehandler/core/GestureHandlerOrchestrator\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,707:1\n1747#2,3:708\n1747#2,3:711\n1747#2,3:714\n1855#2,2:717\n*S KotlinDebug\n*F\n+ 1 GestureHandlerOrchestrator.kt\ncom/swmansion/gesturehandler/core/GestureHandlerOrchestrator\n*L\n86#1:708,3\n88#1:711,3\n330#1:714,3\n594#1:717,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0014\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 H2\u00020\u0001:\u0001HB\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!J\u0014\u0010\"\u001a\u00020\u001f2\n\u0010#\u001a\u0006\u0012\u0002\u0008\u00030\rH\u0002J\u0010\u0010$\u001a\u00020\u00132\u0006\u0010 \u001a\u00020!H\u0002J\u0008\u0010%\u001a\u00020\u001fH\u0002J\u0008\u0010&\u001a\u00020\u001fH\u0002J\u0008\u0010\'\u001a\u00020\u001fH\u0002J\u001c\u0010(\u001a\u00020\u001f2\n\u0010#\u001a\u0006\u0012\u0002\u0008\u00030\r2\u0006\u0010)\u001a\u00020*H\u0002J\u0010\u0010+\u001a\u00020\u001f2\u0006\u0010,\u001a\u00020*H\u0002J \u0010-\u001a\u00020\u00132\u0006\u0010 \u001a\u00020!2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020\nH\u0002J\u0010\u00101\u001a\u00020\u001f2\u0006\u0010,\u001a\u00020*H\u0002J(\u00101\u001a\u00020\u00132\u0006\u00102\u001a\u00020\u00032\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020\n2\u0006\u0010,\u001a\u00020*H\u0002J\u001a\u00103\u001a\u000e\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\r\u0018\u00010\u000c2\u0006\u0010 \u001a\u00020!J\u0014\u00104\u001a\u00020\u00132\n\u0010#\u001a\u0006\u0012\u0002\u0008\u00030\rH\u0002J\u0006\u00105\u001a\u00020\u0013J\u0010\u00106\u001a\u00020\u00132\u0006\u0010 \u001a\u00020!H\u0002J\u0012\u00107\u001a\u00020\u00132\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0002J\u0010\u00108\u001a\u00020\u00132\u0006\u0010 \u001a\u00020!H\u0002J\u0014\u00109\u001a\u00020\u001f2\n\u0010#\u001a\u0006\u0012\u0002\u0008\u00030\rH\u0002J\"\u0010:\u001a\u00020\u001f2\n\u0010#\u001a\u0006\u0012\u0002\u0008\u00030\r2\u0006\u0010;\u001a\u00020\n2\u0006\u0010<\u001a\u00020\nJ\u000e\u0010=\u001a\u00020\u00132\u0006\u0010,\u001a\u00020*J\u001c\u0010>\u001a\u00020\u001f2\n\u0010#\u001a\u0006\u0012\u0002\u0008\u00030\r2\u0006\u0010 \u001a\u00020!H\u0002J(\u0010?\u001a\u00020\u00132\u0006\u0010 \u001a\u00020!2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020\n2\u0006\u0010,\u001a\u00020*H\u0002J\u0008\u0010@\u001a\u00020\u001fH\u0002J\u0014\u0010A\u001a\u00020\u00132\n\u0010#\u001a\u0006\u0012\u0002\u0008\u00030\rH\u0002J\u0018\u0010B\u001a\u00020*2\u0008\u0010 \u001a\u0004\u0018\u00010!2\u0006\u0010,\u001a\u00020*J\u0018\u0010C\u001a\u00020D2\u0008\u0010 \u001a\u0004\u0018\u00010!2\u0006\u0010E\u001a\u00020DJ(\u0010F\u001a\u00020\u00132\u0006\u0010 \u001a\u00020!2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020\n2\u0006\u0010,\u001a\u00020*H\u0002J\u0014\u0010G\u001a\u00020\u001f2\n\u0010#\u001a\u0006\u0012\u0002\u0008\u00030\rH\u0002R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R&\u0010\u000b\u001a\u001a\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\r0\u000cj\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\r`\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00020\n0\u0010j\u0008\u0012\u0004\u0012\u00020\n`\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R&\u0010\u0014\u001a\u001a\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\r0\u000cj\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\r`\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR&\u0010\u001d\u001a\u001a\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\r0\u000cj\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\r`\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006I"
    }
    d2 = {
        "Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;",
        "",
        "wrapperView",
        "Landroid/view/ViewGroup;",
        "handlerRegistry",
        "Lcom/swmansion/gesturehandler/core/GestureHandlerRegistry;",
        "viewConfigHelper",
        "Lcom/swmansion/gesturehandler/core/ViewConfigurationHelper;",
        "(Landroid/view/ViewGroup;Lcom/swmansion/gesturehandler/core/GestureHandlerRegistry;Lcom/swmansion/gesturehandler/core/ViewConfigurationHelper;)V",
        "activationIndex",
        "",
        "awaitingHandlers",
        "Ljava/util/ArrayList;",
        "Lcom/swmansion/gesturehandler/core/GestureHandler;",
        "Lkotlin/collections/ArrayList;",
        "awaitingHandlersTags",
        "Ljava/util/HashSet;",
        "Lkotlin/collections/HashSet;",
        "finishedHandlersCleanupScheduled",
        "",
        "gestureHandlers",
        "handlingChangeSemaphore",
        "isHandlingTouch",
        "minimumAlphaForTraversal",
        "",
        "getMinimumAlphaForTraversal",
        "()F",
        "setMinimumAlphaForTraversal",
        "(F)V",
        "preparedHandlers",
        "activateNativeHandlersForView",
        "",
        "view",
        "Landroid/view/View;",
        "addAwaitingHandler",
        "handler",
        "canReceiveEvents",
        "cancelAll",
        "cleanupAwaitingHandlers",
        "cleanupFinishedHandlers",
        "deliverEventToGestureHandler",
        "sourceEvent",
        "Landroid/view/MotionEvent;",
        "deliverEventToGestureHandlers",
        "event",
        "extractAncestorHandlers",
        "coords",
        "",
        "pointerId",
        "extractGestureHandlers",
        "viewGroup",
        "getHandlersForView",
        "hasOtherHandlerToWaitFor",
        "isAnyHandlerActive",
        "isClipping",
        "isViewAttachedUnderWrapper",
        "isViewOverflowingParent",
        "makeActive",
        "onHandlerStateChange",
        "newState",
        "prevState",
        "onTouchEvent",
        "recordHandlerIfNotPresent",
        "recordViewHandlersForPointer",
        "scheduleFinishedHandlersCleanup",
        "shouldBeCancelledByFinishedHandler",
        "transformEventToViewCoords",
        "transformPointToViewCoords",
        "Landroid/graphics/PointF;",
        "point",
        "traverseWithPointerEvents",
        "tryActivate",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;

.field private static final DEFAULT_MIN_ALPHA_FOR_TRAVERSAL:F

.field private static final handlersComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final inverseMatrix:Landroid/graphics/Matrix;

.field private static final matrixTransformCoords:[F

.field private static final tempCoords:[F

.field private static final tempPoint:Landroid/graphics/PointF;


# instance fields
.field private activationIndex:I

.field private final awaitingHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final awaitingHandlersTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private finishedHandlersCleanupScheduled:Z

.field private final gestureHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final handlerRegistry:Lcom/swmansion/gesturehandler/core/GestureHandlerRegistry;

.field private handlingChangeSemaphore:I

.field private isHandlingTouch:Z

.field private minimumAlphaForTraversal:F

.field private final preparedHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final viewConfigHelper:Lcom/swmansion/gesturehandler/core/ViewConfigurationHelper;

.field private final wrapperView:Landroid/view/ViewGroup;


# direct methods
.method public static synthetic $r8$lambda$DHU3NgQNFIYUDALECRxY9wA0rzQ(Lcom/swmansion/gesturehandler/core/GestureHandler;Lcom/swmansion/gesturehandler/core/GestureHandler;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->handlersComparator$lambda$12(Lcom/swmansion/gesturehandler/core/GestureHandler;Lcom/swmansion/gesturehandler/core/GestureHandler;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->Companion:Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;

    .line 614
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sput-object v0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->tempPoint:Landroid/graphics/PointF;

    .line 615
    const/4 v0, 0x2

    new-array v1, v0, [F

    sput-object v1, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->matrixTransformCoords:[F

    .line 616
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    sput-object v1, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->inverseMatrix:Landroid/graphics/Matrix;

    .line 617
    new-array v0, v0, [F

    sput-object v0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->tempCoords:[F

    .line 618
    new-instance v0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->handlersComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lcom/swmansion/gesturehandler/core/GestureHandlerRegistry;Lcom/swmansion/gesturehandler/core/ViewConfigurationHelper;)V
    .locals 1
    .param p1, "wrapperView"    # Landroid/view/ViewGroup;
    .param p2, "handlerRegistry"    # Lcom/swmansion/gesturehandler/core/GestureHandlerRegistry;
    .param p3, "viewConfigHelper"    # Lcom/swmansion/gesturehandler/core/ViewConfigurationHelper;

    const-string v0, "wrapperView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handlerRegistry"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewConfigHelper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->wrapperView:Landroid/view/ViewGroup;

    .line 14
    iput-object p2, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->handlerRegistry:Lcom/swmansion/gesturehandler/core/GestureHandlerRegistry;

    .line 15
    iput-object p3, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->viewConfigHelper:Lcom/swmansion/gesturehandler/core/ViewConfigurationHelper;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->gestureHandlers:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->awaitingHandlers:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->preparedHandlers:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->awaitingHandlersTags:Ljava/util/HashSet;

    .line 12
    return-void
.end method

.method public static final synthetic access$getInverseMatrix$cp()Landroid/graphics/Matrix;
    .locals 1

    .line 12
    sget-object v0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->inverseMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public static final synthetic access$getMatrixTransformCoords$cp()[F
    .locals 1

    .line 12
    sget-object v0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->matrixTransformCoords:[F

    return-object v0
.end method

.method private final addAwaitingHandler(Lcom/swmansion/gesturehandler/core/GestureHandler;)V
    .locals 4
    .param p1, "handler"    # Lcom/swmansion/gesturehandler/core/GestureHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "*>;)V"
        }
    .end annotation

    .line 404
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->awaitingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    return-void

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->awaitingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->awaitingHandlersTags:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getTag()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 411
    move-object v0, p1

    .local v0, "$this$addAwaitingHandler_u24lambda_u245":Lcom/swmansion/gesturehandler/core/GestureHandler;
    const/4 v1, 0x0

    .line 412
    .local v1, "$i$a$-with-GestureHandlerOrchestrator$addAwaitingHandler$1":I
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/swmansion/gesturehandler/core/GestureHandler;->setAwaiting(Z)V

    .line 413
    iget v2, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->activationIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->activationIndex:I

    invoke-virtual {v0, v2}, Lcom/swmansion/gesturehandler/core/GestureHandler;->setActivationIndex(I)V

    .line 414
    nop

    .line 411
    .end local v0    # "$this$addAwaitingHandler_u24lambda_u245":Lcom/swmansion/gesturehandler/core/GestureHandler;
    .end local v1    # "$i$a$-with-GestureHandlerOrchestrator$addAwaitingHandler$1":I
    nop

    .line 415
    return-void
.end method

.method private final canReceiveEvents(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 586
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    iget v1, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->minimumAlphaForTraversal:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final cancelAll()V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->awaitingHandlers:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/swmansion/gesturehandler/core/GestureHandler;

    .line 240
    .local v1, "handler":Lcom/swmansion/gesturehandler/core/GestureHandler;
    invoke-virtual {v1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->cancel()V

    .end local v1    # "handler":Lcom/swmansion/gesturehandler/core/GestureHandler;
    goto :goto_0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->preparedHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 245
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->preparedHandlers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->gestureHandlers:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 247
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->gestureHandlers:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/swmansion/gesturehandler/core/GestureHandler;

    .line 248
    .restart local v1    # "handler":Lcom/swmansion/gesturehandler/core/GestureHandler;
    invoke-virtual {v1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->cancel()V

    .end local v1    # "handler":Lcom/swmansion/gesturehandler/core/GestureHandler;
    goto :goto_1

    .line 250
    :cond_1
    return-void
.end method

.method private final cleanupAwaitingHandlers()V
    .locals 5

    .line 108
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->awaitingHandlers:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 110
    .local v0, "awaitingHandlersCopy":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/swmansion/gesturehandler/core/GestureHandler;

    .line 111
    .local v2, "handler":Lcom/swmansion/gesturehandler/core/GestureHandler;
    invoke-virtual {v2}, Lcom/swmansion/gesturehandler/core/GestureHandler;->isAwaiting()Z

    move-result v3

    if-nez v3, :cond_0

    .line 112
    iget-object v3, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->awaitingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 113
    iget-object v3, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->awaitingHandlersTags:Ljava/util/HashSet;

    invoke-virtual {v2}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getTag()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    .end local v2    # "handler":Lcom/swmansion/gesturehandler/core/GestureHandler;
    :cond_1
    return-void
.end method

.method private final cleanupFinishedHandlers()V
    .locals 5

    .line 69
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->gestureHandlers:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asReversedMutable(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/swmansion/gesturehandler/core/GestureHandler;

    .line 70
    .local v1, "handler":Lcom/swmansion/gesturehandler/core/GestureHandler;
    sget-object v3, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->Companion:Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;

    invoke-virtual {v1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getState()I

    move-result v4

    invoke-static {v3, v4}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;->access$isFinished(Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->isAwaiting()Z

    move-result v3

    if-nez v3, :cond_0

    .line 71
    invoke-virtual {v1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->reset()V

    .line 72
    move-object v3, v1

    .local v3, "$this$cleanupFinishedHandlers_u24lambda_u240":Lcom/swmansion/gesturehandler/core/GestureHandler;
    const/4 v4, 0x0

    .line 73
    .local v4, "$i$a$-apply-GestureHandlerOrchestrator$cleanupFinishedHandlers$1":I
    invoke-virtual {v3, v2}, Lcom/swmansion/gesturehandler/core/GestureHandler;->setActive(Z)V

    .line 74
    invoke-virtual {v3, v2}, Lcom/swmansion/gesturehandler/core/GestureHandler;->setAwaiting(Z)V

    .line 75
    const v2, 0x7fffffff

    invoke-virtual {v3, v2}, Lcom/swmansion/gesturehandler/core/GestureHandler;->setActivationIndex(I)V

    .line 76
    nop

    .line 72
    .end local v3    # "$this$cleanupFinishedHandlers_u24lambda_u240":Lcom/swmansion/gesturehandler/core/GestureHandler;
    .end local v4    # "$i$a$-apply-GestureHandlerOrchestrator$cleanupFinishedHandlers$1":I
    nop

    .end local v1    # "handler":Lcom/swmansion/gesturehandler/core/GestureHandler;
    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->gestureHandlers:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    sget-object v1, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$cleanupFinishedHandlers$2;->INSTANCE:Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$cleanupFinishedHandlers$2;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 82
    iput-boolean v2, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->finishedHandlersCleanupScheduled:Z

    .line 83
    return-void
.end method

.method private final deliverEventToGestureHandler(Lcom/swmansion/gesturehandler/core/GestureHandler;Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "handler"    # Lcom/swmansion/gesturehandler/core/GestureHandler;
    .param p2, "sourceEvent"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "*>;",
            "Landroid/view/MotionEvent;",
            ")V"
        }
    .end annotation

    .line 253
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->isViewAttachedUnderWrapper(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->cancel()V

    .line 255
    return-void

    .line 257
    :cond_0
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->wantEvents()Z

    move-result v0

    if-nez v0, :cond_1

    .line 258
    return-void

    .line 261
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 262
    .local v0, "action":I
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    const-string v3, "obtain(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->transformEventToViewCoords(Landroid/view/View;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 272
    .local v1, "event":Landroid/view/MotionEvent;
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getNeedsPointerData()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getState()I

    move-result v2

    if-eqz v2, :cond_2

    .line 273
    invoke-virtual {p1, v1, p2}, Lcom/swmansion/gesturehandler/core/GestureHandler;->updatePointerData(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 276
    :cond_2
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->isAwaiting()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_8

    .line 277
    :cond_3
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getState()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    move v2, v3

    .line 278
    .local v2, "isFirstEvent":Z
    :goto_0
    invoke-virtual {p1, v1, p2}, Lcom/swmansion/gesturehandler/core/GestureHandler;->handle(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 279
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->isActive()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 287
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getShouldResetProgress()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 288
    invoke-virtual {p1, v3}, Lcom/swmansion/gesturehandler/core/GestureHandler;->setShouldResetProgress(Z)V

    .line 289
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->resetProgress()V

    .line 291
    :cond_5
    invoke-virtual {p1, v1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->dispatchHandlerUpdate(Landroid/view/MotionEvent;)V

    .line 294
    :cond_6
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getNeedsPointerData()Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v2, :cond_7

    .line 295
    invoke-virtual {p1, v1, p2}, Lcom/swmansion/gesturehandler/core/GestureHandler;->updatePointerData(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 300
    :cond_7
    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 301
    :sswitch_0
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 302
    .local v3, "pointerId":I
    invoke-virtual {p1, v3}, Lcom/swmansion/gesturehandler/core/GestureHandler;->stopTrackingPointer(I)V

    .line 306
    .end local v2    # "isFirstEvent":Z
    .end local v3    # "pointerId":I
    :cond_8
    :goto_1
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 307
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method private final deliverEventToGestureHandlers(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 224
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->preparedHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 225
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->preparedHandlers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->gestureHandlers:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 232
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->preparedHandlers:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    sget-object v1, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->handlersComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 233
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->preparedHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/swmansion/gesturehandler/core/GestureHandler;

    .line 234
    .local v1, "handler":Lcom/swmansion/gesturehandler/core/GestureHandler;
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v1, p1}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->deliverEventToGestureHandler(Lcom/swmansion/gesturehandler/core/GestureHandler;Landroid/view/MotionEvent;)V

    .end local v1    # "handler":Lcom/swmansion/gesturehandler/core/GestureHandler;
    goto :goto_0

    .line 236
    :cond_0
    return-void
.end method

.method private final extractAncestorHandlers(Landroid/view/View;[FI)Z
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "coords"    # [F
    .param p3, "pointerId"    # I

    .line 443
    const/4 v0, 0x0

    .line 444
    .local v0, "found":Z
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 446
    .local v1, "parent":Landroid/view/ViewParent;
    :goto_0
    if-eqz v1, :cond_3

    .line 447
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 448
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    .line 450
    .local v2, "parentViewGroup":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->handlerRegistry:Lcom/swmansion/gesturehandler/core/GestureHandlerRegistry;

    move-object v4, v1

    check-cast v4, Landroid/view/View;

    invoke-interface {v3, v4}, Lcom/swmansion/gesturehandler/core/GestureHandlerRegistry;->getHandlersForView(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_2

    .local v3, "it":Ljava/util/ArrayList;
    const/4 v4, 0x0

    .line 451
    .local v4, "$i$a$-let-GestureHandlerOrchestrator$extractAncestorHandlers$1":I
    monitor-enter v3

    const/4 v5, 0x0

    .line 452
    .local v5, "$i$a$-synchronized-GestureHandlerOrchestrator$extractAncestorHandlers$1$1":I
    :try_start_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/swmansion/gesturehandler/core/GestureHandler;

    .line 453
    .local v7, "handler":Lcom/swmansion/gesturehandler/core/GestureHandler;
    invoke-virtual {v7}, Lcom/swmansion/gesturehandler/core/GestureHandler;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    aget v8, p2, v8

    const/4 v9, 0x1

    aget v9, p2, v9

    invoke-virtual {v7, p1, v8, v9}, Lcom/swmansion/gesturehandler/core/GestureHandler;->isWithinBounds(Landroid/view/View;FF)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 454
    const/4 v0, 0x1

    .line 455
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v8, v2

    check-cast v8, Landroid/view/View;

    invoke-direct {p0, v7, v8}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->recordHandlerIfNotPresent(Lcom/swmansion/gesturehandler/core/GestureHandler;Landroid/view/View;)V

    .line 456
    invoke-virtual {v7, p3}, Lcom/swmansion/gesturehandler/core/GestureHandler;->startTrackingPointer(I)V

    .end local v7    # "handler":Lcom/swmansion/gesturehandler/core/GestureHandler;
    goto :goto_1

    .line 459
    :cond_1
    nop

    .end local v5    # "$i$a$-synchronized-GestureHandlerOrchestrator$extractAncestorHandlers$1$1":I
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    monitor-exit v3

    .line 460
    nop

    .line 450
    .end local v3    # "it":Ljava/util/ArrayList;
    .end local v4    # "$i$a$-let-GestureHandlerOrchestrator$extractAncestorHandlers$1":I
    goto :goto_2

    .line 451
    .restart local v3    # "it":Ljava/util/ArrayList;
    .restart local v4    # "$i$a$-let-GestureHandlerOrchestrator$extractAncestorHandlers$1":I
    :catchall_0
    move-exception v5

    monitor-exit v3

    throw v5

    .line 463
    .end local v2    # "parentViewGroup":Landroid/view/ViewGroup;
    .end local v3    # "it":Ljava/util/ArrayList;
    .end local v4    # "$i$a$-let-GestureHandlerOrchestrator$extractAncestorHandlers$1":I
    :cond_2
    :goto_2
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 466
    :cond_3
    return v0
.end method

.method private final extractGestureHandlers(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 503
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 504
    .local v0, "actionIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 505
    .local v1, "pointerId":I
    sget-object v2, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->tempCoords:[F

    const/4 v3, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    aput v4, v2, v3

    .line 506
    sget-object v2, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->tempCoords:[F

    const/4 v3, 0x1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    aput v4, v2, v3

    .line 507
    iget-object v2, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->wrapperView:Landroid/view/ViewGroup;

    check-cast v2, Landroid/view/View;

    sget-object v3, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->tempCoords:[F

    invoke-direct {p0, v2, v3, v1, p1}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->traverseWithPointerEvents(Landroid/view/View;[FILandroid/view/MotionEvent;)Z

    .line 508
    iget-object v2, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->wrapperView:Landroid/view/ViewGroup;

    sget-object v3, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->tempCoords:[F

    invoke-direct {p0, v2, v3, v1, p1}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->extractGestureHandlers(Landroid/view/ViewGroup;[FILandroid/view/MotionEvent;)Z

    .line 509
    return-void
.end method

.method private final extractGestureHandlers(Landroid/view/ViewGroup;[FILandroid/view/MotionEvent;)Z
    .locals 15
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "coords"    # [F
    .param p3, "pointerId"    # I
    .param p4, "event"    # Landroid/view/MotionEvent;

    .line 512
    move-object v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 513
    .local v2, "childrenCount":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_0
    const/4 v4, -0x1

    const/4 v5, 0x0

    if-ge v4, v3, :cond_4

    .line 514
    iget-object v4, v0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->viewConfigHelper:Lcom/swmansion/gesturehandler/core/ViewConfigurationHelper;

    move-object/from16 v12, p1

    invoke-interface {v4, v12, v3}, Lcom/swmansion/gesturehandler/core/ViewConfigurationHelper;->getChildInDrawingOrderAtIndex(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v4

    .line 515
    .local v4, "child":Landroid/view/View;
    invoke-direct {p0, v4}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->canReceiveEvents(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 516
    sget-object v13, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->tempPoint:Landroid/graphics/PointF;

    .line 517
    .local v13, "childPoint":Landroid/graphics/PointF;
    sget-object v6, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->Companion:Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;

    aget v7, v1, v5

    const/4 v14, 0x1

    aget v8, v1, v14

    move-object/from16 v9, p1

    move-object v10, v4

    move-object v11, v13

    invoke-static/range {v6 .. v11}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;->access$transformPointToChildViewCoords(Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;FFLandroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/PointF;)V

    .line 518
    aget v6, v1, v5

    .line 519
    .local v6, "restoreX":F
    aget v7, v1, v14

    .line 520
    .local v7, "restoreY":F
    iget v8, v13, Landroid/graphics/PointF;->x:F

    aput v8, v1, v5

    .line 521
    iget v8, v13, Landroid/graphics/PointF;->y:F

    aput v8, v1, v14

    .line 522
    const/4 v8, 0x0

    .line 523
    .local v8, "found":Z
    invoke-direct {p0, v4}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->isClipping(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_1

    sget-object v9, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->Companion:Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;

    aget v10, v1, v5

    aget v11, v1, v14

    invoke-static {v9, v10, v11, v4}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;->access$isTransformedTouchPointInView(Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;FFLandroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_1

    :cond_0
    move/from16 v9, p3

    move-object/from16 v10, p4

    goto :goto_2

    .line 526
    :cond_1
    :goto_1
    move/from16 v9, p3

    move-object/from16 v10, p4

    invoke-direct {p0, v4, v1, v9, v10}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->traverseWithPointerEvents(Landroid/view/View;[FILandroid/view/MotionEvent;)Z

    move-result v8

    .line 528
    :goto_2
    aput v6, v1, v5

    .line 529
    aput v7, v1, v14

    .line 530
    if-eqz v8, :cond_3

    .line 531
    return v14

    .line 515
    .end local v6    # "restoreX":F
    .end local v7    # "restoreY":F
    .end local v8    # "found":Z
    .end local v13    # "childPoint":Landroid/graphics/PointF;
    :cond_2
    move/from16 v9, p3

    move-object/from16 v10, p4

    .line 513
    .end local v4    # "child":Landroid/view/View;
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_4
    move-object/from16 v12, p1

    move/from16 v9, p3

    move-object/from16 v10, p4

    .line 535
    .end local v3    # "i":I
    return v5
.end method

.method private static final handlersComparator$lambda$12(Lcom/swmansion/gesturehandler/core/GestureHandler;Lcom/swmansion/gesturehandler/core/GestureHandler;)I
    .locals 3
    .param p0, "a"    # Lcom/swmansion/gesturehandler/core/GestureHandler;
    .param p1, "b"    # Lcom/swmansion/gesturehandler/core/GestureHandler;

    .line 619
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->isAwaiting()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->isAwaiting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 622
    :cond_1
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getActivationIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getActivationIndex()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->signum(I)I

    move-result v0

    goto :goto_0

    .line 623
    :cond_2
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->isActive()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    .line 624
    move v0, v1

    goto :goto_0

    .line 625
    :cond_3
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->isActive()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 626
    move v0, v2

    goto :goto_0

    .line 627
    :cond_4
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->isAwaiting()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 628
    move v0, v1

    goto :goto_0

    .line 629
    :cond_5
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->isAwaiting()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 630
    move v0, v2

    goto :goto_0

    .line 632
    :cond_6
    const/4 v0, 0x0

    .line 619
    :goto_0
    return v0
.end method

.method private final hasOtherHandlerToWaitFor(Lcom/swmansion/gesturehandler/core/GestureHandler;)Z
    .locals 9
    .param p1, "handler"    # Lcom/swmansion/gesturehandler/core/GestureHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "*>;)Z"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->gestureHandlers:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 708
    .local v1, "$i$f$any":I
    instance-of v2, v0, Ljava/util/Collection;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 709
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lcom/swmansion/gesturehandler/core/GestureHandler;

    .local v5, "it":Lcom/swmansion/gesturehandler/core/GestureHandler;
    const/4 v6, 0x0

    .line 86
    .local v6, "$i$a$-any-GestureHandlerOrchestrator$hasOtherHandlerToWaitFor$1":I
    sget-object v7, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->Companion:Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;

    invoke-virtual {v5}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getState()I

    move-result v8

    invoke-static {v7, v8}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;->access$isFinished(Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;I)Z

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_2

    sget-object v7, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->Companion:Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;

    invoke-static {v7, p1, v5}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;->access$shouldHandlerWaitForOther(Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;Lcom/swmansion/gesturehandler/core/GestureHandler;Lcom/swmansion/gesturehandler/core/GestureHandler;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v5, v8

    goto :goto_0

    :cond_2
    move v5, v3

    .line 709
    .end local v5    # "it":Lcom/swmansion/gesturehandler/core/GestureHandler;
    .end local v6    # "$i$a$-any-GestureHandlerOrchestrator$hasOtherHandlerToWaitFor$1":I
    :goto_0
    if-eqz v5, :cond_1

    move v3, v8

    goto :goto_1

    .line 710
    .end local v4    # "element$iv":Ljava/lang/Object;
    :cond_3
    nop

    .line 86
    .end local v0    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$any":I
    :goto_1
    return v3
.end method

.method private final isClipping(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 591
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->viewConfigHelper:Lcom/swmansion/gesturehandler/core/ViewConfigurationHelper;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Lcom/swmansion/gesturehandler/core/ViewConfigurationHelper;->isViewClippingChildren(Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private final isViewAttachedUnderWrapper(Landroid/view/View;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 317
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 318
    return v0

    .line 320
    :cond_0
    iget-object v1, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->wrapperView:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    .line 321
    return v2

    .line 323
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 324
    .local v1, "parent":Landroid/view/ViewParent;
    :goto_0
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->wrapperView:Landroid/view/ViewGroup;

    if-eq v1, v3, :cond_2

    .line 325
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 327
    :cond_2
    iget-object v3, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->wrapperView:Landroid/view/ViewGroup;

    if-ne v1, v3, :cond_3

    move v0, v2

    :cond_3
    return v0
.end method

.method private final isViewOverflowingParent(Landroid/view/View;)Z
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .line 430
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 431
    .local v0, "parent":Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 432
    .local v2, "matrix":Landroid/graphics/Matrix;
    sget-object v3, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->matrixTransformCoords:[F

    .line 433
    .local v3, "localXY":[F
    const/4 v4, 0x0

    aput v4, v3, v1

    .line 434
    const/4 v5, 0x1

    aput v4, v3, v5

    .line 435
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 436
    aget v6, v3, v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    .line 437
    .local v6, "left":F
    aget v7, v3, v5

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    .line 439
    .local v7, "top":F
    cmpg-float v8, v6, v4

    if-ltz v8, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v6

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_2

    cmpg-float v4, v7, v4

    if-ltz v4, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v7

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v4, v4, v8

    if-lez v4, :cond_3

    :cond_2
    move v1, v5

    :cond_3
    return v1
.end method

.method private final makeActive(Lcom/swmansion/gesturehandler/core/GestureHandler;)V
    .locals 6
    .param p1, "handler"    # Lcom/swmansion/gesturehandler/core/GestureHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "*>;)V"
        }
    .end annotation

    .line 178
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getState()I

    move-result v0

    .line 179
    .local v0, "currentState":I
    move-object v1, p1

    .local v1, "$this$makeActive_u24lambda_u243":Lcom/swmansion/gesturehandler/core/GestureHandler;
    const/4 v2, 0x0

    .line 180
    .local v2, "$i$a$-with-GestureHandlerOrchestrator$makeActive$1":I
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/swmansion/gesturehandler/core/GestureHandler;->setAwaiting(Z)V

    .line 181
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/swmansion/gesturehandler/core/GestureHandler;->setActive(Z)V

    .line 182
    invoke-virtual {v1, v4}, Lcom/swmansion/gesturehandler/core/GestureHandler;->setShouldResetProgress(Z)V

    .line 183
    iget v4, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->activationIndex:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->activationIndex:I

    invoke-virtual {v1, v4}, Lcom/swmansion/gesturehandler/core/GestureHandler;->setActivationIndex(I)V

    .line 184
    nop

    .line 179
    .end local v1    # "$this$makeActive_u24lambda_u243":Lcom/swmansion/gesturehandler/core/GestureHandler;
    .end local v2    # "$i$a$-with-GestureHandlerOrchestrator$makeActive$1":I
    nop

    .line 186
    iget-object v1, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->gestureHandlers:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->asReversedMutable(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/swmansion/gesturehandler/core/GestureHandler;

    .line 187
    .local v2, "otherHandler":Lcom/swmansion/gesturehandler/core/GestureHandler;
    sget-object v4, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->Companion:Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;

    invoke-static {v4, v2, p1}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;->access$shouldHandlerBeCancelledBy(Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;Lcom/swmansion/gesturehandler/core/GestureHandler;Lcom/swmansion/gesturehandler/core/GestureHandler;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 188
    invoke-virtual {v2}, Lcom/swmansion/gesturehandler/core/GestureHandler;->cancel()V

    .end local v2    # "otherHandler":Lcom/swmansion/gesturehandler/core/GestureHandler;
    goto :goto_0

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->awaitingHandlers:Ljava/util/ArrayList;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/swmansion/gesturehandler/core/GestureHandler;

    .line 194
    .restart local v2    # "otherHandler":Lcom/swmansion/gesturehandler/core/GestureHandler;
    sget-object v4, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->Companion:Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;

    invoke-static {v4, v2, p1}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;->access$shouldHandlerBeCancelledBy(Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;Lcom/swmansion/gesturehandler/core/GestureHandler;Lcom/swmansion/gesturehandler/core/GestureHandler;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 195
    invoke-virtual {v2, v3}, Lcom/swmansion/gesturehandler/core/GestureHandler;->setAwaiting(Z)V

    .end local v2    # "otherHandler":Lcom/swmansion/gesturehandler/core/GestureHandler;
    goto :goto_1

    .line 198
    :cond_3
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->cleanupAwaitingHandlers()V

    .line 207
    packed-switch v0, :pswitch_data_0

    .line 211
    :pswitch_0
    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->dispatchStateChange(II)V

    .line 213
    if-eq v0, v2, :cond_4

    .line 214
    const/4 v1, 0x5

    invoke-virtual {p1, v1, v2}, Lcom/swmansion/gesturehandler/core/GestureHandler;->dispatchStateChange(II)V

    .line 215
    if-eq v0, v1, :cond_4

    .line 216
    invoke-virtual {p1, v3, v1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->dispatchStateChange(II)V

    goto :goto_2

    .line 208
    :pswitch_1
    return-void

    .line 219
    :cond_4
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final recordHandlerIfNotPresent(Lcom/swmansion/gesturehandler/core/GestureHandler;Landroid/view/View;)V
    .locals 1
    .param p1, "handler"    # Lcom/swmansion/gesturehandler/core/GestureHandler;
    .param p2, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "*>;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 418
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->gestureHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    return-void

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->gestureHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->setActive(Z)V

    .line 424
    invoke-virtual {p1, v0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->setAwaiting(Z)V

    .line 425
    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->setActivationIndex(I)V

    .line 426
    invoke-virtual {p1, p2, p0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->prepare(Landroid/view/View;Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;)V

    .line 427
    return-void
.end method

.method private final recordViewHandlersForPointer(Landroid/view/View;[FILandroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "coords"    # [F
    .param p3, "pointerId"    # I
    .param p4, "event"    # Landroid/view/MotionEvent;

    .line 470
    const/4 v0, 0x0

    .line 471
    .local v0, "found":Z
    iget-object v1, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->handlerRegistry:Lcom/swmansion/gesturehandler/core/GestureHandlerRegistry;

    invoke-interface {v1, p1}, Lcom/swmansion/gesturehandler/core/GestureHandlerRegistry;->getHandlersForView(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .local v1, "it":Ljava/util/ArrayList;
    const/4 v4, 0x0

    .line 472
    .local v4, "$i$a$-let-GestureHandlerOrchestrator$recordViewHandlersForPointer$1":I
    monitor-enter v1

    const/4 v5, 0x0

    .line 473
    .local v5, "$i$a$-synchronized-GestureHandlerOrchestrator$recordViewHandlersForPointer$1$1":I
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/swmansion/gesturehandler/core/GestureHandler;

    .line 475
    .local v7, "handler":Lcom/swmansion/gesturehandler/core/GestureHandler;
    invoke-virtual {v7}, Lcom/swmansion/gesturehandler/core/GestureHandler;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    aget v8, p2, v3

    aget v9, p2, v2

    invoke-virtual {v7, p1, v8, v9}, Lcom/swmansion/gesturehandler/core/GestureHandler;->isWithinBounds(Landroid/view/View;FF)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_1

    .line 480
    :cond_0
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Integer;

    const/16 v9, 0xa

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    const/16 v9, 0x9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    const/4 v9, 0x7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    instance-of v8, v7, Lcom/swmansion/gesturehandler/core/HoverGestureHandler;

    if-nez v8, :cond_1

    .line 481
    goto :goto_0

    .line 484
    :cond_1
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v7, p1}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->recordHandlerIfNotPresent(Lcom/swmansion/gesturehandler/core/GestureHandler;Landroid/view/View;)V

    .line 485
    invoke-virtual {v7, p3}, Lcom/swmansion/gesturehandler/core/GestureHandler;->startTrackingPointer(I)V

    .line 486
    const/4 v0, 0x1

    .end local v7    # "handler":Lcom/swmansion/gesturehandler/core/GestureHandler;
    goto :goto_0

    .line 476
    .restart local v7    # "handler":Lcom/swmansion/gesturehandler/core/GestureHandler;
    :cond_2
    :goto_1
    goto :goto_0

    .line 488
    .end local v7    # "handler":Lcom/swmansion/gesturehandler/core/GestureHandler;
    :cond_3
    nop

    .end local v5    # "$i$a$-synchronized-GestureHandlerOrchestrator$recordViewHandlersForPointer$1$1":I
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    monitor-exit v1

    .line 489
    nop

    .line 471
    .end local v1    # "it":Ljava/util/ArrayList;
    .end local v4    # "$i$a$-let-GestureHandlerOrchestrator$recordViewHandlersForPointer$1":I
    goto :goto_2

    .line 472
    .restart local v1    # "it":Ljava/util/ArrayList;
    .restart local v4    # "$i$a$-let-GestureHandlerOrchestrator$recordViewHandlersForPointer$1":I
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 493
    .end local v1    # "it":Ljava/util/ArrayList;
    .end local v4    # "$i$a$-let-GestureHandlerOrchestrator$recordViewHandlersForPointer$1":I
    :cond_4
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    aget v4, p2, v3

    const/4 v5, 0x0

    cmpg-float v6, v5, v4

    if-gtz v6, :cond_5

    cmpg-float v1, v4, v1

    if-gtz v1, :cond_5

    move v1, v2

    goto :goto_3

    :cond_5
    move v1, v3

    :goto_3
    if-eqz v1, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    aget v4, p2, v2

    cmpg-float v5, v5, v4

    if-gtz v5, :cond_6

    cmpg-float v1, v4, v1

    if-gtz v1, :cond_6

    goto :goto_4

    :cond_6
    move v2, v3

    :goto_4
    if-eqz v2, :cond_7

    .line 494
    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->isViewOverflowingParent(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0, p1, p2, p3}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->extractAncestorHandlers(Landroid/view/View;[FI)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 496
    const/4 v0, 0x1

    .line 499
    :cond_7
    return v0
.end method

.method private final scheduleFinishedHandlersCleanup()V
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->isHandlingTouch:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->handlingChangeSemaphore:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->cleanupFinishedHandlers()V

    goto :goto_1

    .line 62
    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->finishedHandlersCleanupScheduled:Z

    .line 66
    :goto_1
    return-void
.end method

.method private final shouldBeCancelledByFinishedHandler(Lcom/swmansion/gesturehandler/core/GestureHandler;)Z
    .locals 10
    .param p1, "handler"    # Lcom/swmansion/gesturehandler/core/GestureHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "*>;)Z"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->gestureHandlers:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 711
    .local v1, "$i$f$any":I
    instance-of v2, v0, Ljava/util/Collection;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 712
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lcom/swmansion/gesturehandler/core/GestureHandler;

    .local v5, "it":Lcom/swmansion/gesturehandler/core/GestureHandler;
    const/4 v6, 0x0

    .line 88
    .local v6, "$i$a$-any-GestureHandlerOrchestrator$shouldBeCancelledByFinishedHandler$1":I
    sget-object v7, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->Companion:Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;

    invoke-static {v7, p1, v5}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;->access$shouldHandlerWaitForOther(Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;Lcom/swmansion/gesturehandler/core/GestureHandler;Lcom/swmansion/gesturehandler/core/GestureHandler;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getState()I

    move-result v7

    const/4 v9, 0x5

    if-ne v7, v9, :cond_2

    move v5, v8

    goto :goto_0

    :cond_2
    move v5, v3

    .line 712
    .end local v5    # "it":Lcom/swmansion/gesturehandler/core/GestureHandler;
    .end local v6    # "$i$a$-any-GestureHandlerOrchestrator$shouldBeCancelledByFinishedHandler$1":I
    :goto_0
    if-eqz v5, :cond_1

    move v3, v8

    goto :goto_1

    .line 713
    .end local v4    # "element$iv":Ljava/lang/Object;
    :cond_3
    nop

    .line 88
    .end local v0    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$any":I
    :goto_1
    return v3
.end method

.method private final traverseWithPointerEvents(Landroid/view/View;[FILandroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "coords"    # [F
    .param p3, "pointerId"    # I
    .param p4, "event"    # Landroid/view/MotionEvent;

    .line 539
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->viewConfigHelper:Lcom/swmansion/gesturehandler/core/ViewConfigurationHelper;

    invoke-interface {v0, p1}, Lcom/swmansion/gesturehandler/core/ViewConfigurationHelper;->getPointerEventsConfigForView(Landroid/view/View;)Lcom/swmansion/gesturehandler/core/PointerEventsConfig;

    move-result-object v0

    sget-object v1, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/swmansion/gesturehandler/core/PointerEventsConfig;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 580
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 574
    :pswitch_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 575
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->extractGestureHandlers(Landroid/view/ViewGroup;[FILandroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 576
    :cond_0
    move v0, v2

    .line 574
    :goto_0
    nop

    .line 579
    .local v0, "found":Z
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->recordViewHandlersForPointer(Landroid/view/View;[FILandroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 580
    if-nez v0, :cond_2

    sget-object v3, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->Companion:Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;

    invoke-static {v3, p1, p2}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;->access$shouldHandlerlessViewBecomeTouchTarget(Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;Landroid/view/View;[F)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .end local v0    # "found":Z
    goto :goto_3

    .restart local v0    # "found":Z
    :cond_2
    :goto_1
    goto :goto_3

    .line 553
    .end local v0    # "found":Z
    :pswitch_1
    nop

    .line 554
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 555
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->extractGestureHandlers(Landroid/view/ViewGroup;[FILandroid/view/MotionEvent;)Z

    move-result v1

    move v0, v1

    .restart local v0    # "found":Z
    const/4 v2, 0x0

    .line 557
    .local v2, "$i$a$-also-GestureHandlerOrchestrator$traverseWithPointerEvents$1":I
    if-eqz v0, :cond_3

    .line 558
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->recordViewHandlersForPointer(Landroid/view/View;[FILandroid/view/MotionEvent;)Z

    .line 560
    :cond_3
    nop

    .line 555
    .end local v0    # "found":Z
    .end local v2    # "$i$a$-also-GestureHandlerOrchestrator$traverseWithPointerEvents$1":I
    goto :goto_3

    .line 566
    :cond_4
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_5

    .line 567
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->recordViewHandlersForPointer(Landroid/view/View;[FILandroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_3

    .line 569
    :cond_5
    move v1, v2

    goto :goto_3

    .line 547
    :pswitch_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->recordViewHandlersForPointer(Landroid/view/View;[FILandroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 548
    sget-object v0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->Companion:Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;

    invoke-static {v0, p1, p2}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;->access$shouldHandlerlessViewBecomeTouchTarget(Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;Landroid/view/View;[F)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    goto :goto_3

    :cond_7
    :goto_2
    goto :goto_3

    .line 542
    :pswitch_3
    move v1, v2

    .line 583
    :goto_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final tryActivate(Lcom/swmansion/gesturehandler/core/GestureHandler;)V
    .locals 1
    .param p1, "handler"    # Lcom/swmansion/gesturehandler/core/GestureHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "*>;)V"
        }
    .end annotation

    .line 92
    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->shouldBeCancelledByFinishedHandler(Lcom/swmansion/gesturehandler/core/GestureHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->cancel()V

    .line 94
    return-void

    .line 98
    :cond_0
    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->hasOtherHandlerToWaitFor(Lcom/swmansion/gesturehandler/core/GestureHandler;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->addAwaitingHandler(Lcom/swmansion/gesturehandler/core/GestureHandler;)V

    goto :goto_0

    .line 102
    :cond_1
    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->makeActive(Lcom/swmansion/gesturehandler/core/GestureHandler;)V

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->setAwaiting(Z)V

    .line 105
    :goto_0
    return-void
.end method


# virtual methods
.method public final activateNativeHandlersForView(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->handlerRegistry:Lcom/swmansion/gesturehandler/core/GestureHandlerRegistry;

    invoke-interface {v0, p1}, Lcom/swmansion/gesturehandler/core/GestureHandlerRegistry;->getHandlersForView(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 717
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lcom/swmansion/gesturehandler/core/GestureHandler;

    .local v4, "it":Lcom/swmansion/gesturehandler/core/GestureHandler;
    const/4 v5, 0x0

    .line 595
    .local v5, "$i$a$-forEach-GestureHandlerOrchestrator$activateNativeHandlersForView$1":I
    instance-of v6, v4, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;

    if-nez v6, :cond_0

    .line 596
    goto :goto_1

    .line 598
    :cond_0
    invoke-direct {p0, v4, p1}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->recordHandlerIfNotPresent(Lcom/swmansion/gesturehandler/core/GestureHandler;Landroid/view/View;)V

    .line 600
    new-instance v6, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$activateNativeHandlersForView$1$1;

    invoke-direct {v6, v4}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$activateNativeHandlersForView$1$1;-><init>(Lcom/swmansion/gesturehandler/core/GestureHandler;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v4, v6}, Lcom/swmansion/gesturehandler/core/GestureHandler;->withMarkedAsInBounds(Lkotlin/jvm/functions/Function0;)V

    .line 605
    nop

    .line 717
    .end local v4    # "it":Lcom/swmansion/gesturehandler/core/GestureHandler;
    .end local v5    # "$i$a$-forEach-GestureHandlerOrchestrator$activateNativeHandlersForView$1":I
    :goto_1
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 718
    :cond_1
    nop

    .line 606
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    :cond_2
    return-void
.end method

.method public final getHandlersForView(Landroid/view/View;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->handlerRegistry:Lcom/swmansion/gesturehandler/core/GestureHandlerRegistry;

    invoke-interface {v0, p1}, Lcom/swmansion/gesturehandler/core/GestureHandlerRegistry;->getHandlersForView(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final getMinimumAlphaForTraversal()F
    .locals 1

    .line 22
    iget v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->minimumAlphaForTraversal:F

    return v0
.end method

.method public final isAnyHandlerActive()Z
    .locals 10

    .line 330
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->gestureHandlers:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 714
    .local v1, "$i$f$any":I
    instance-of v2, v0, Ljava/util/Collection;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 715
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lcom/swmansion/gesturehandler/core/GestureHandler;

    .local v5, "it":Lcom/swmansion/gesturehandler/core/GestureHandler;
    const/4 v6, 0x0

    .line 330
    .local v6, "$i$a$-any-GestureHandlerOrchestrator$isAnyHandlerActive$1":I
    invoke-virtual {v5}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getState()I

    move-result v7

    const/4 v8, 0x4

    const/4 v9, 0x1

    if-ne v7, v8, :cond_2

    move v5, v9

    goto :goto_0

    :cond_2
    move v5, v3

    .line 715
    .end local v5    # "it":Lcom/swmansion/gesturehandler/core/GestureHandler;
    .end local v6    # "$i$a$-any-GestureHandlerOrchestrator$isAnyHandlerActive$1":I
    :goto_0
    if-eqz v5, :cond_1

    move v3, v9

    goto :goto_1

    .line 716
    .end local v4    # "element$iv":Ljava/lang/Object;
    :cond_3
    nop

    .line 330
    .end local v0    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$any":I
    :goto_1
    return v3
.end method

.method public final onHandlerStateChange(Lcom/swmansion/gesturehandler/core/GestureHandler;II)V
    .locals 9
    .param p1, "handler"    # Lcom/swmansion/gesturehandler/core/GestureHandler;
    .param p2, "newState"    # I
    .param p3, "prevState"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "*>;II)V"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->handlingChangeSemaphore:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->handlingChangeSemaphore:I

    .line 121
    sget-object v0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->Companion:Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;

    invoke-static {v0, p2}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;->access$isFinished(Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;I)Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x5

    if-eqz v0, :cond_5

    .line 124
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->awaitingHandlers:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 127
    .local v0, "currentlyAwaitingHandlers":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/swmansion/gesturehandler/core/GestureHandler;

    .line 128
    .local v6, "otherHandler":Lcom/swmansion/gesturehandler/core/GestureHandler;
    sget-object v7, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->Companion:Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;

    invoke-static {v7, v6, p1}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;->access$shouldHandlerWaitForOther(Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;Lcom/swmansion/gesturehandler/core/GestureHandler;Lcom/swmansion/gesturehandler/core/GestureHandler;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->awaitingHandlersTags:Ljava/util/HashSet;

    invoke-virtual {v6}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getTag()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    .line 132
    :cond_0
    if-ne p2, v4, :cond_2

    .line 134
    invoke-virtual {v6}, Lcom/swmansion/gesturehandler/core/GestureHandler;->cancel()V

    .line 135
    invoke-virtual {v6}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getState()I

    move-result v7

    if-ne v7, v4, :cond_1

    .line 140
    nop

    .line 141
    nop

    .line 142
    nop

    .line 140
    invoke-virtual {v6, v3, v2}, Lcom/swmansion/gesturehandler/core/GestureHandler;->dispatchStateChange(II)V

    .line 145
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/swmansion/gesturehandler/core/GestureHandler;->setAwaiting(Z)V

    goto :goto_0

    .line 148
    :cond_2
    invoke-direct {p0, v6}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->tryActivate(Lcom/swmansion/gesturehandler/core/GestureHandler;)V

    .end local v6    # "otherHandler":Lcom/swmansion/gesturehandler/core/GestureHandler;
    goto :goto_0

    .line 129
    .restart local v6    # "otherHandler":Lcom/swmansion/gesturehandler/core/GestureHandler;
    :cond_3
    :goto_1
    goto :goto_0

    .line 151
    .end local v6    # "otherHandler":Lcom/swmansion/gesturehandler/core/GestureHandler;
    :cond_4
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->cleanupAwaitingHandlers()V

    .line 153
    .end local v0    # "currentlyAwaitingHandlers":Ljava/util/List;
    :cond_5
    const/4 v0, 0x4

    if-ne p2, v0, :cond_6

    .line 154
    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->tryActivate(Lcom/swmansion/gesturehandler/core/GestureHandler;)V

    goto :goto_3

    .line 155
    :cond_6
    if-eq p3, v0, :cond_9

    if-ne p3, v4, :cond_7

    goto :goto_2

    .line 166
    :cond_7
    if-nez p3, :cond_8

    if-eq p2, v3, :cond_c

    .line 171
    :cond_8
    invoke-virtual {p1, p2, p3}, Lcom/swmansion/gesturehandler/core/GestureHandler;->dispatchStateChange(II)V

    goto :goto_3

    .line 156
    :cond_9
    :goto_2
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->isActive()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 157
    invoke-virtual {p1, p2, p3}, Lcom/swmansion/gesturehandler/core/GestureHandler;->dispatchStateChange(II)V

    goto :goto_3

    .line 158
    :cond_a
    if-ne p3, v0, :cond_c

    if-eq p2, v3, :cond_b

    if-ne p2, v1, :cond_c

    .line 164
    :cond_b
    invoke-virtual {p1, p2, v2}, Lcom/swmansion/gesturehandler/core/GestureHandler;->dispatchStateChange(II)V

    .line 173
    :cond_c
    :goto_3
    iget v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->handlingChangeSemaphore:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->handlingChangeSemaphore:I

    .line 174
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->scheduleFinishedHandlersCleanup()V

    .line 175
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->isHandlingTouch:Z

    .line 44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 45
    .local v1, "action":I
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 48
    :sswitch_0
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->cancelAll()V

    goto :goto_0

    .line 46
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->extractGestureHandlers(Landroid/view/MotionEvent;)V

    .line 50
    :goto_0
    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->deliverEventToGestureHandlers(Landroid/view/MotionEvent;)V

    .line 51
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->isHandlingTouch:Z

    .line 52
    iget-boolean v2, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->finishedHandlersCleanupScheduled:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->handlingChangeSemaphore:I

    if-nez v2, :cond_0

    .line 53
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->cleanupFinishedHandlers()V

    .line 55
    :cond_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method public final setMinimumAlphaForTraversal(F)V
    .locals 0
    .param p1, "<set-?>"    # F

    .line 22
    iput p1, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->minimumAlphaForTraversal:F

    return-void
.end method

.method public final transformEventToViewCoords(Landroid/view/View;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    if-nez p1, :cond_0

    .line 342
    return-object p2

    .line 345
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 348
    .local v0, "parent":Landroid/view/ViewGroup;
    :goto_0
    iget-object v1, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->wrapperView:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 349
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1, p2}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->transformEventToViewCoords(Landroid/view/View;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 352
    :cond_2
    if-eqz v0, :cond_3

    .line 353
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 354
    .local v1, "localX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 355
    .local v2, "localY":F
    invoke-virtual {p2, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 358
    .end local v1    # "localX":F
    .end local v2    # "localY":F
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_4

    .line 359
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    sget-object v2, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->inverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 360
    sget-object v1, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->inverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 363
    :cond_4
    return-object p2
.end method

.method public final transformPointToViewCoords(Landroid/view/View;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "point"    # Landroid/graphics/PointF;

    const-string v0, "point"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    if-nez p1, :cond_0

    .line 376
    return-object p2

    .line 379
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 382
    .local v0, "parent":Landroid/view/ViewGroup;
    :goto_0
    iget-object v1, p0, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->wrapperView:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 383
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1, p2}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->transformPointToViewCoords(Landroid/view/View;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 386
    :cond_2
    if-eqz v0, :cond_3

    .line 387
    iget v1, p2, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p2, Landroid/graphics/PointF;->x:F

    .line 388
    iget v1, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p2, Landroid/graphics/PointF;->y:F

    .line 391
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_4

    .line 392
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    sget-object v2, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->inverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 393
    sget-object v1, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->tempCoords:[F

    iget v2, p2, Landroid/graphics/PointF;->x:F

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 394
    sget-object v1, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->tempCoords:[F

    iget v2, p2, Landroid/graphics/PointF;->y:F

    const/4 v4, 0x1

    aput v2, v1, v4

    .line 395
    sget-object v1, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->inverseMatrix:Landroid/graphics/Matrix;

    sget-object v2, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->tempCoords:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 396
    sget-object v1, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->tempCoords:[F

    aget v1, v1, v3

    iput v1, p2, Landroid/graphics/PointF;->x:F

    .line 397
    sget-object v1, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->tempCoords:[F

    aget v1, v1, v4

    iput v1, p2, Landroid/graphics/PointF;->y:F

    .line 400
    :cond_4
    return-object p2
.end method
